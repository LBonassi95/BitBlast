from bitblast.helpers import *
from unified_planning.io.pddl_writer import ConverterToPDDLString, PDDLWriter
from line_profiler import *

class Axiom:
    
    def __init__(self, head: Fluent, body: FNode):
        self.head = head
        self.body = body

    def __repr__(self):
        return f'{self.head} <- {self.body}'
    
    def get_derived_fluent(self):
        return self.head
    
    def to_pddl(self, converter: ConverterToPDDLString) -> str:
        head = converter.convert(FluentExp(self.head))
        body = converter.convert(self.body)
        return f'(:derived {head} {body})'

class ProblemAxiomWriter:

    def __init__(self, problem: Problem, axioms: List[Axiom]) -> None:
        self.writer = PDDLWriter(problem)
        self.converter = ConverterToPDDLString(
            get_environment(), self.writer._get_mangled_name
        )
        self.axioms = axioms

    def get_problem(self) -> str:
        return self.writer.get_problem()
    
    def get_domain(self) -> str:
        pddl_axioms = []
        for ax in self.axioms:
            pddl_axioms.append(ax.to_pddl(self.converter))

        domain_string = self.writer.get_domain()

        # inject axioms before the first action
        domain_string = domain_string.replace('(:action', '\n'.join(pddl_axioms) + '\n(:action', 1)
        return domain_string

class AxiomsCompiler:

    def __init__(self, problem: Problem, nbits: int, optimized: bool = False, flipped: bool = False):

        self.nbits = nbits
        self.problem = problem
        self.optimized = optimized
        self.numeric_variables = get_numeric_variables(problem)
        self.constants, self.init_constants = get_constants(problem, get_all_eff_num(problem))
        self.flipped = flipped

        constants_abs = {np.abs(constant_value(q)) for q in self.constants.union(self.init_constants)}
        min_bits = int(np.ceil(np.log2(max(constants_abs) + 1)))
        assert nbits >= min_bits
        self.constants = {}
    
    @profile
    def get_compiled_problem(self) -> Tuple[Problem, List[Axiom]]:

        self.false = Fluent("FALSE", BoolType())

        # Binary fluents, variables, and constants
        self.new_fluents, self.new_variables_map = get_bit_variables(self.numeric_variables, self.constants, self.nbits)

        # New initial values
        new_initial_values = get_bin_initial_state(
            self.new_variables_map, self.problem.initial_values, self.nbits, self.flipped)

        # New axioms
        self.all_axioms, self.effects_axioms_map = self.compute_axioms()

        # New actions
        new_actions = [self.convert_action(action) for action in self.problem.actions]

        # New goal
        new_goals = And(*[convert_condition(g, self.new_variables_map, self.flipped) for g in self.problem.goals])
        
        # Create the new problem
        new_problem = Problem(name='compiled')

        new_fluents_ax = [ax.get_derived_fluent() for ax in self.all_axioms] + [self.false]

        # Add all fluents
        boolean_fluents = [fl for fl in self.problem.fluents if fl.type == BoolType()]
        new_problem._fluents = new_fluents_ax + self.new_fluents + boolean_fluents
        
        for var, initial_val in new_initial_values.items():
            new_problem.set_initial_value(var, initial_val)

        for new_fl in new_fluents_ax:
            new_problem.set_initial_value(new_fl, FALSE())
        # for dp in [ax.head for ax in self.all_axioms] + [self.false]:
        #     new_problem.add_fluent(dp, default_initial_value=FALSE())

        new_problem.add_actions(new_actions)
        new_problem.add_goal(new_goals)

        # Add objects and constants
        new_problem.add_objects(self.problem.all_objects)

        # Manage Overflow fluent
        new_problem.add_fluent(OF_FLUENT)
        new_problem.set_initial_value(OF_FLUENT, FALSE())
        new_problem.add_goal(Not(OF_FLUENT))

        return new_problem, self.all_axioms
    

    def compute_axioms(self):
        effects_axioms_map = {}
        all_axioms = []
        numeric_effects = get_all_eff_num(self.problem)

        # IMPROVE: Find a better way to label the effects
        # ideally, we would like to use the name of the variable and the value
        for eff_label, eff in enumerate(numeric_effects):
            
            carry_axioms, sum_axioms, overflow_axioms, var_to_dp_map = self.compute_effect_axioms(eff, eff_label)
            all_axioms += carry_axioms + sum_axioms + overflow_axioms

            effects_axioms_map[eff] = var_to_dp_map

        return all_axioms, effects_axioms_map

    def compute_effect_axioms(self, eff: Effect, eff_label: int) -> List[Axiom]:

        x_bits = self.new_variables_map[eff.fluent]
        q_bits = bitblast_int(constant_value(eff.value), len(x_bits), self.flipped)
        q_bits = [TRUE() if q_bits[i] else FALSE() for i in range(len(x_bits))]

        circuit = compact_full_adder_circuit(x_bits, q_bits, eff_label)

        # carry_axioms = [Axiom(carry_fl(-1, eff_label), FluentExp(self.false))] + \
        #                [Axiom(carry_fl(i, eff_label), circuit["c"][carry_fl(i, eff_label)]) for i in range(len(x_bits))]
        carry_axioms = [Axiom(carry_fl(i, eff_label), circuit["c"][carry_fl(i, eff_label)]) for i in range(len(x_bits))]
        # sum_axioms = [Axiom(sum_fl(i, eff_label), circuit["z"][sum_fl(i, eff_label)]) for i in range(len(x_bits))]

        # var_to_dp_map = {x_bits[i]: sum_fl(i, eff_label) for i in range(len(x_bits))}
        var_to_dp_map = {x_bits[i]: circuit["z"][sum_fl(i, eff_label)] for i in range(len(x_bits))}

        sign_x = sign_bit(x_bits)
        sign_q = sign_bit(q_bits)
        sign_sum = circuit["z"][sum_fl(len(x_bits)-1, eff_label)]

        # of_head = Fluent(f'of_{eff_label}', BoolType())
        # of_body = Or(And(sign_x, sign_q, Not(sign_sum)), And(Not(sign_x), Not(sign_q), sign_sum))
        # of_body = Or(And(sign_x, sign_q, Not(sign_sum)), And(Not(sign_x), Not(sign_q), sign_sum))
        # overflow_axiom = Axiom(of_head, of_body)

        var_to_dp_map[FluentExp(OF_FLUENT)] = Or(And(sign_x, sign_q, Not(sign_sum)), And(Not(sign_x), Not(sign_q), sign_sum))

        # return carry_axioms, sum_axioms, [overflow_axiom], var_to_dp_map
        return carry_axioms, [], [], var_to_dp_map
    

    def convert_action(self, act: InstantaneousAction) -> InstantaneousAction:
    
        new_action = InstantaneousAction(act.name)
        numeric_effects = effects_num(action=act)

        for precondition in act.preconditions:
            assert check_condition(precondition)
            new_action.add_precondition(convert_condition(precondition, self.new_variables_map, self.flipped))
        new_action.add_precondition(Not(OF_FLUENT))

        for eff in numeric_effects:
            for var, dp in self.effects_axioms_map[eff].items():
                new_action.add_effect(condition=dp, fluent=var, value=TRUE())
                new_action.add_effect(condition=Not(dp), fluent=var, value=FALSE())
        
        for eff in effects_prop(action=act):
            new_action.add_effect(condition=eff.condition, fluent=eff.fluent, value=eff.value)

        return new_action