from bitblast.helpers.utils import *


class BaseCompiler:

    def __init__(self, problem: Problem, nbits):

        self.nbits = nbits
        self.problem = problem
        self.numeric_variables = get_numeric_variables(problem)
        self.action_effect_map = get_action_effect_map(problem)
        self.constants, self.init_constants = get_constants(problem, get_all_eff_num(problem))


        constants_abs = {np.abs(q) for q in self.constants.union(self.init_constants)}
        min_bits = int(np.ceil(np.log2(max(constants_abs) + 1)))
        assert nbits >= min_bits
        
    def get_compiled_problem(self) -> Problem:

        # Binary fluents, variables, and constants
        self.bin_fluents, self.bin_fluents_exp, self.bin_constants, self.bin_constants_exp = get_bin_variables(self.numeric_variables, self.constants, self.nbits)

        # New initial values
        new_initial_values = get_bin_initial_state(self.bin_fluents_exp, self.bin_constants_exp, self.problem.initial_values, self.nbits)

        # New actions
        new_actions = [convert_action(action, self.bin_fluents_exp, self.bin_constants_exp) for action in self.problem.actions]
        
        # Create the new problem
        new_problem = Problem(name='compiled')
        
        for var_bits in self.bin_fluents.values():
            new_problem.add_fluents(var_bits)
            for var_bit in var_bits:
                initital_value = new_initial_values[FluentExp(var_bit)]
                new_problem.set_initial_value(var_bit, initital_value)

        for const_bits in self.bin_constants.values():
            new_problem.add_fluents(const_bits)
            for const_bit in const_bits:
                initital_value = new_initial_values[FluentExp(const_bit)]
                new_problem.set_initial_value(const_bit, initital_value)


        new_problem.add_actions(new_actions)

        return new_problem