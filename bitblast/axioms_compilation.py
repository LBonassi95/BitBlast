from bitblast.helpers import *


def carry_dp(i: int, label: str = None) -> Fluent:
    return Fluent(f'c_{i}', BoolType()) if label is None else Fluent(f'c_{label}_{i}', BoolType())

def sum_dp(i: int, label: str = None) -> Fluent:
    return Fluent(f'z_{i}', BoolType()) if label is None else Fluent(f'z_{label}_{i}', BoolType())

def compact_full_adder_circuit(x_bits: List[FNode], q_bits: List[FNode], label: str = None):
    assert len(x_bits) == len(q_bits), "The number of bits in x and q must be the same"
    circuit = {'c': {carry_dp(-1, label): FALSE()}, 'z': {}}

    for i in range(len(x_bits)):
        curr_carry = carry_dp(i, label)
        curr_sum = sum_dp(i, label)
        prev_carry = carry_dp(i-1, label)
        circuit['z'][curr_sum] = XOr(XOr(x_bits[i], q_bits[i]), prev_carry()).simplify()
        circuit['c'][curr_carry] = Or(And(x_bits[i], q_bits[i]), And(prev_carry(), XOr(x_bits[i], q_bits[i]))).simplify()

    return circuit


class Axiom:
    
    def __init__(self, head: Fluent, body: FNode):
        self.head = head
        self.body = body

    def __repr__(self):
        return f'{self.head} <- {self.body}'
    
    def get_derived_fluent(self):
        return self.head

class AxiomsCompiler:

    def __init__(self, problem: Problem, nbits: int, optimized: bool = False):

        self.nbits = nbits
        self.problem = problem
        self.optimized = optimized
        self.numeric_variables = get_numeric_variables(problem)
        self.constants, self.init_constants = get_constants(problem, get_all_eff_num(problem))


        constants_abs = {np.abs(constant_value(q)) for q in self.constants.union(self.init_constants)}
        min_bits = int(np.ceil(np.log2(max(constants_abs) + 1)))
        assert nbits >= min_bits
        if optimized:
            self.constants = {}
        
    def get_compiled_problem(self) -> Problem:

        # Binary fluents, variables, and constants
        self.new_fluents, self.new_variables_map = get_bit_variables(self.numeric_variables, self.constants, self.nbits)

        # New initial values
        new_initial_values = get_bin_initial_state(self.new_variables_map, self.problem.initial_values, self.nbits)

        # New axioms
        effects_axioms_map = {}
        numeric_effects = get_all_eff_num(self.problem)

        # IMPROVE: Find a better way to label the effects
        # ideally, we would like to use the name of the variable and the value
        for eff_label, eff in enumerate(numeric_effects):
            x_bits = self.new_variables_map[eff.fluent]
            nbits = len(x_bits)
            q_bits = bitblast_int(constant_value(eff.value), nbits)
            q_bits = [TRUE() if q_bits[i] else FALSE() for i in range(nbits)]
            circuit = compact_full_adder_circuit(x_bits, q_bits, eff_label)
            carry_axioms = []
            sum_axioms = []
            for i in range(-1, nbits):
                carry_axioms += [Axiom(carry_dp(i, eff_label), circuit["c"][carry_dp(i, eff_label)])]
                if i >= 0:
                    sum_axioms += [Axiom(sum_dp(i, eff_label), circuit["z"][sum_dp(i, eff_label)])]
            effects_axioms_map[eff] = carry_axioms + sum_axioms
        print("Compiling axioms...")

        # New actions
        new_actions = [convert_action(action, self.new_variables_map, self.optimized) for action in self.problem.actions]

        # New goal
        new_goals = And(*[convert_condition(g, self.new_variables_map) for g in self.problem.goals])
        
        # Create the new problem
        new_problem = Problem(name='compiled')

        new_problem.add_fluents(self.new_fluents)

        # Add all the original boolean fluents
        boolean_fluents = set(fl for fl in self.problem.fluents if fl.type == BoolType())
        new_problem.add_fluents(boolean_fluents)
        
        for var, initial_val in new_initial_values.items():
            new_problem.set_initial_value(var, initial_val)

        new_problem.add_actions(new_actions)
        new_problem.add_goal(new_goals)

        # Add objects and constants
        new_problem.add_objects(self.problem.all_objects)

        # Manage Overflow fluent
        new_problem.add_fluent(OF_FLUENT)
        new_problem.set_initial_value(OF_FLUENT, FALSE())
        new_problem.add_goal(Not(OF_FLUENT))

        return new_problem