from bitblast.helpers import *

class SequenceCompiler:

    def __init__(self, problem: Problem, nbits: int, flipped: bool = True):

        self.nbits = nbits
        self.problem = problem
        self.flipped = flipped
        self.numeric_variables = get_numeric_variables(problem)

        self.constants, self.init_constants = get_constants(problem, get_all_eff_num(problem))

        constants_abs = {np.abs(constant_value(q)) for q in self.constants.union(self.init_constants)}
        min_bits = int(np.ceil(np.log2(max(constants_abs) + 1)))
        assert nbits >= min_bits
        
    def set_has_metric(self, has_metric: bool):
        self.has_metric = has_metric

    def get_compiled_problem(self) -> Problem:

        # Binary fluents, variables, and constants
        self.new_fluents, self.new_variables_map, self.machinery_map = get_bit_carry_variables(
            self.numeric_variables, 
            self.problem.actions, 
            self.constants, 
            self.nbits, self.flipped)
        
        # New initial values
        new_initial_values = get_bin_initial_state_seq(
            self.new_variables_map, 
            self.machinery_map,
            self.problem.initial_values, 
            self.nbits, self.flipped)

        # New actions
        start_actions = build_start_actions(
            self.problem.actions, 
            self.new_variables_map, 
            self.machinery_map, self.flipped)
        
        add_actions = build_add_actions(
            self.problem.actions, 
            self.new_variables_map, 
            self.machinery_map,
            self.nbits, self.flipped)

        end_actions = build_end_actions(
            self.problem.actions, 
            self.machinery_map,
            self.nbits)       

        new_actions   = start_actions + add_actions + end_actions

        # New goal
        new_goals = And(*[convert_condition(g, self.new_variables_map, self.flipped) for g in self.problem.goals])
        
        # Create the new problem
        new_problem = Problem(name='compiled')

        # Add all fluents
        boolean_fluents = [fl for fl in self.problem.fluents if fl.type == BoolType()]
        new_problem._fluents = boolean_fluents + self.new_fluents
        
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
        new_problem.add_goal(Not(self.machinery_map["pause"]))

        # Put 0-action costs when there is no metric
        # if not self.has_metric:
        #     action_cost_dict = {a: 0 for a in start_actions}
        #     metric = MinimizeActionCosts(action_cost_dict)
        #     self.add_quality_metric(metric)
        #     exit(1)

        return new_problem
    
    
def get_bit_carry_variables(numeric_variables: Set[FNode],
                      actions: Set[FNode], 
                      constants: Set[int], 
                      nbits: int, flipped: Bool) -> Tuple[List[Fluent], Dict[FNode, List[FNode]]]:
    
    new_fluents, new_variables_map = get_bit_variables(
        numeric_variables, constants, nbits)
    
    machinery_map = {
        'pause'       : None,
        'action_pause': {},
        'done'        : {},
        'carry'       : {}
    }
    
    # pause    
    pause = Fluent(f"pause")
    new_fluents.append(pause)
    machinery_map["pause"] = pause

    # action pause
    for a in actions:
        action_pause = Fluent(f"pause_{get_action_name(a)}")
        new_fluents.append(action_pause)
        machinery_map["action_pause"][get_action_name(a)] = action_pause

    # done fluents
    for i in range(0, nbits + 1):
        done_i = Fluent(f"done_{i}")
        new_fluents.append(done_i)
        machinery_map["done"][i] = done_i

    # carry
    for nvar in numeric_variables:
        nvar_name = get_ground_fluent_name(nvar)
        carries   = [Fluent(f"carry_{nvar_name}_{i}") for i in range(-1, nbits)]
        machinery_map["carry"][nvar_name] = carries
        new_fluents += carries
    return new_fluents, new_variables_map, machinery_map


def get_bin_initial_state_seq(new_variables_map: Dict[FNode, List[FNode]],
                          machinery_map,
                          initial_values: Dict,
                          nbits: int, flipped: Bool) -> Dict[Fluent, bool]:
    
    new_initial_values = get_bin_initial_state(
        new_variables_map, initial_values, nbits, flipped)

    new_initial_values[machinery_map["pause"]] = False

    for _, done_i in machinery_map["done"].items():
        new_initial_values[done_i] = False
    
    for _, action_pause in machinery_map["action_pause"].items():
        new_initial_values[action_pause] = False
    
    for _, carries in machinery_map["carry"].items():
        for carry in carries:
            new_initial_values[carry] = flipped

    return new_initial_values


def build_start_actions(actions, new_variables_map, machinery_map, flipped):
    new_actions = []
    pause       = machinery_map["pause"]
    for a in actions:
        new_action   = InstantaneousAction(a.name)
        action_pause = machinery_map["action_pause"][get_action_name(a)]
        # TODO: refactor?
        for precondition in a.preconditions:
            # assert check_condition(precondition)
            new_action.add_precondition(convert_condition(
                precondition, new_variables_map, flipped))
        
        new_action.add_precondition(Not(pause))
        new_action.add_precondition(Not(OF_FLUENT))
        
        # TODO: refactor?
        for eff in effects_prop(action=a):
            new_action.add_effect(condition=eff.condition, fluent=eff.fluent, value=eff.value)
        
        new_action.add_effect(pause, True)
        new_action.add_effect(action_pause, True)

        new_action.add_effect(machinery_map["done"][0], True)

        new_actions.append(new_action)
    return new_actions


def build_add_actions(actions, new_variables_map, machinery_map, nbits, flipped):
    new_actions = []
    pause       = machinery_map["pause"]
    for a in actions:
        for i in range(0, nbits):
            done_i        = machinery_map["done"][i]
            done_i_next   = machinery_map["done"][i + 1]
            new_action   = InstantaneousAction(f"adder__{i}_{a.name}")
            action_pause = machinery_map["action_pause"][get_action_name(a)]
            
            new_action.add_precondition(pause)
            new_action.add_precondition(action_pause)
            new_action.add_precondition(done_i)
            new_action.add_precondition(Not(OF_FLUENT))

            new_action.add_effect(done_i, False)
            new_action.add_effect(done_i_next, True)

            for neff in effects_num(a):
                add_bin_bit_effect(
                    new_action, neff, machinery_map, new_variables_map, i, nbits, flipped)

            new_actions.append(new_action)
        
    return new_actions


def build_end_actions(actions, machinery_map, nbits):
    new_actions = []
    pause       = machinery_map["pause"]

    for a in actions:
        action_pause = machinery_map["action_pause"][get_action_name(a)]
        new_action   = InstantaneousAction(f"end__{a.name}")

        new_action.add_precondition(pause)
        new_action.add_precondition(action_pause)
        new_action.add_precondition(machinery_map["done"][nbits])
        new_action.add_precondition(Not(OF_FLUENT))

        new_action.add_effect(pause, False)
        new_action.add_effect(action_pause, False)
        new_action.add_effect(machinery_map["done"][nbits], False)

        new_actions.append(new_action)
        
    return new_actions


def add_bin_bit_effect(action, neff, machinery_map, new_variables_map, i, nbits, flipped):
    # TODO: refactor
    x_bits  = new_variables_map[neff.fluent]
    q_bits  = bitblast_int(constant_value(neff.value), nbits, flipped)
    q_bits  = [TRUE() if q_bits[j] else FALSE() for j in range(nbits)]
    carries = machinery_map["carry"][get_ground_fluent_name(neff.fluent)]
    if not flipped:
        add_formula       = XOr(XOr(x_bits[i], q_bits[i]), carries[i]).simplify()
        carry_formula     = Or(
            And(x_bits[i], q_bits[i]), 
            And(carries[i], XOr(x_bits[i], q_bits[i]))).simplify()
    else:
        add_formula       = XOr(XOr(Not(x_bits[i]), Not(q_bits[i])), Not(carries[i])).simplify()
        carry_formula     = Or(
            And(Not(x_bits[i]), Not(q_bits[i])), 
            And(Not(carries[i]), XOr(Not(x_bits[i]), Not(q_bits[i])))).simplify()

    add_neg_formula   = Not(add_formula).simplify()
    carry_neg_formula = Not(carry_formula).simplify()

    action.add_effect(condition=add_formula, fluent=x_bits[i], value=not(flipped))
    action.add_effect(condition=add_neg_formula, fluent=x_bits[i], value=flipped)
    action.add_effect(condition=carry_formula, fluent=carries[i + 1], value=not(flipped))
    action.add_effect(condition=carry_neg_formula, fluent=carries[i + 1], value=flipped)

    if i == nbits - 1:
        i_result = XOr(XOr(x_bits[i], q_bits[i]), carries[i]).simplify()
        of_formula = Or(
            And(x_bits[i], q_bits[i], Not(i_result)),
            And(Not(x_bits[i]), Not(q_bits[i]), i_result)
        ).simplify()
        action.add_effect(condition=of_formula, fluent=OF_FLUENT, value=TRUE())
