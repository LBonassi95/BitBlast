from bitblast.helpers import *

class UnitaryCompiler:

    def __init__(self, problem: Problem, nbits: int):

        self.nbits   = nbits
        self.problem = problem
        self.numeric_variables = get_numeric_variables(problem)
        self.constants, self.init_constants = get_constants(problem, get_all_eff_num(problem))

        constants_abs    = {np.abs(constant_value(q)) for q in self.constants.union(self.init_constants)}
        min_bits         = int(np.ceil(np.log2(max(constants_abs) + 1)))
        assert nbits    >= min_bits
        self.obj_domain  = [i for i in range(-pow(2, nbits - 1), pow(2, nbits - 1))]
        self.constants   = {}


    def get_compiled_problem(self) -> Problem:

        # Binary fluents, variables, and constants
        self.new_fluents, self.machinery_map = get_unitary_variables(
            self.numeric_variables, self.obj_domain)

        new_initial_values = get_unitary_initial(
            self.machinery_map, self.numeric_variables, self.problem.initial_values, self.obj_domain)

        # New actions
        new_actions = get_unitary_actions(self.problem.actions, self.machinery_map, self.obj_domain)

        # New goal
        new_goals = And()
        # new_goals = And(*[convert_condition(g, self.new_variables_map) for g in self.problem.goals])
        
        # Create the new problem
        new_problem = Problem(name='compiled')

        # Add all fluents
        boolean_fluents = [fl for fl in self.problem.fluents if fl.type == BoolType()]
        new_problem._fluents = boolean_fluents + self.new_fluents
        
        for var, initial_val in new_initial_values.items():
            new_problem.set_initial_value(var, initial_val)

        new_problem.add_actions(new_actions)

        new_goals = And(*[convert_unitary_condition(g, self.machinery_map) for g in self.problem.goals])

        new_problem.add_goal(new_goals)
        new_problem.add_goal(Not(OF_FLUENT))

        # Add objects and constants
        new_problem.add_objects(self.problem.all_objects)

        return new_problem
    

def get_unitary_variables(num_vars: Set[FNode], obj_domain):
    
    new_fluents = []
    machinery_map = {
        'levels': {},
        'geq'   : {},
    }
    for num_var in num_vars:
        num_var_name = get_ground_fluent_name(num_var)
        machinery_map['levels'][num_var_name] = {}
        for i in obj_domain:
            level = Fluent(f"level_{num_var_name}__{i}")
            new_fluents.append(level)
            machinery_map['levels'][num_var_name][i] = level 

        geq_num_var = Fluent(f"geq_{num_var_name}")
        new_fluents.append(geq_num_var)
        machinery_map['geq'][num_var_name] = geq_num_var
    new_fluents.append(OF_FLUENT)
    return new_fluents, machinery_map


def get_unitary_initial(machinery_map: Dict, num_vars, initial_values: Dict, obj_domain):
    # Copy all boolean initial values
    new_initial_values = {k: v for k, v in initial_values.items() if is_bool_constant(v)}
    for var in num_vars:
        name  = get_ground_fluent_name(var)
        value = int(str(initial_values[var])) # TODO: fix
        # TODO: fix messaggio di errore bound
        # print ('DEBUG', name, value)
        level_true = machinery_map["levels"][name][value]
        for _, level_f_var in machinery_map["levels"][name].items():
            if level_f_var != level_true:
                new_initial_values[level_f_var] = FALSE()
        new_initial_values[level_true] = TRUE()
        geq_var = machinery_map["geq"][name]
        if value >= 0:
            new_initial_values[geq_var] = TRUE()
        else:
            new_initial_values[geq_var] = FALSE()
    new_initial_values[OF_FLUENT] = FALSE()
    return new_initial_values


def get_unitary_actions(actions, machinery_map, obj_domain):
    new_actions = []
    for a in actions:
        new_action   = InstantaneousAction(f"{a.name}")
        for precondition in a.preconditions:
            prec_formula = convert_unitary_condition(precondition, machinery_map)
            new_action.add_precondition(prec_formula)
            new_action.add_precondition(Not(OF_FLUENT))

        for neff in effects_num(a):
            nvar = neff.fluent
            ncon = constant_value(neff.value)
            geq_var = machinery_map["geq"][get_ground_fluent_name(nvar)]
            for i in obj_domain:
                j = i + ncon
                '''
                obj_domain[0]  = lower bound
                obj_domain[-1] = upper bound
                '''
                if j >= obj_domain[0] and j <= obj_domain[-1]:
                    past_cond = machinery_map["levels"][get_ground_fluent_name(nvar)][i]
                    futu_cond = machinery_map["levels"][get_ground_fluent_name(nvar)][j]
                    cond_form = And(past_cond)
                    new_action.add_effect(condition=cond_form, fluent=futu_cond, value=TRUE())
                    new_action.add_effect(condition=cond_form, fluent=past_cond, value=FALSE())
                    if i < 0 and j >= 0:
                        new_action.add_effect(condition=cond_form, fluent=geq_var, value=TRUE())
                    elif i >= 0 and j < 0:
                        new_action.add_effect(condition=cond_form, fluent=geq_var, value=FALSE())
                elif j < obj_domain[0] or j > obj_domain[-1]:
                    past_cond = machinery_map["levels"][get_ground_fluent_name(nvar)][i]
                    cond_form = And(past_cond)
                    new_action.add_effect(condition=cond_form, fluent=OF_FLUENT, value=TRUE())

        for eff in effects_prop(action=a):
            new_action.add_effect(condition=eff.condition, fluent=eff.fluent, value=eff.value)


        new_actions.append(new_action)
    return new_actions


def convert_unitary_condition(condition: FNode, machinery_map: Dict):
    """
    Convert a condition to a unitary condition.
    Precondition: check_condition(condition) == True
    """
    if condition.is_and():
        return And(*[convert_unitary_condition(c, machinery_map) for c in condition.args])
    elif condition.is_or():
        return Or(*[convert_unitary_condition(c, machinery_map) for c in condition.args])
    elif condition.is_not():
        return Not(convert_unitary_condition(condition.args[0], machinery_map))
    elif condition.is_le():
        return convert_ge_limit(condition, machinery_map)
    else:
        # A boolean fluent expression
        return condition
    
def convert_ge_limit(condition, machinery_map):
    var = get_ground_fluent_name(condition.args[1])
    return machinery_map["geq"][var]