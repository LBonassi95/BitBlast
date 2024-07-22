from bitblast.helpers import *

class BaseCompiler:

    def __init__(self, problem: Problem, nbits: int):

        self.nbits = nbits
        self.problem = problem
        # self.optimized = optimized
        self.numeric_variables = get_numeric_variables(problem)
        self.constants, self.init_constants = get_constants(problem, get_all_eff_num(problem))


        constants_abs = {np.abs(constant_value(q)) for q in self.constants.union(self.init_constants)}
        min_bits = int(np.ceil(np.log2(max(constants_abs) + 1)))
        assert nbits >= min_bits
        # if optimized:
        self.constants = {}
        
    def get_compiled_problem(self) -> Problem:

        # Binary fluents, variables, and constants
        self.new_fluents, self.new_variables_map = get_bit_variables(self.numeric_variables, self.constants, self.nbits)

        # New initial values
        new_initial_values = get_bin_initial_state(self.new_variables_map, self.problem.initial_values, self.nbits, False)

        # New actions
        new_actions = [convert_action(action, self.new_variables_map, True) for action in self.problem.actions]

        # New goal
        new_goals = And(*[convert_condition(g, self.new_variables_map, False) for g in self.problem.goals])
        
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

        return new_problem