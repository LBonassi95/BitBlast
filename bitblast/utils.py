from unified_planning.shortcuts import *
from typing import List, Tuple, Set, Dict
from bitblast.shortcuts import *
import numpy as np

def get_action_effect_map(problem: Problem) -> Dict[str, set[Effect]]:
    return {action_name(a): effects(a) for a in problem.actions}

def get_numeric_variables(problem: Problem) -> Set[Fluent]:
    return set(fl for fl in problem.fluents if is_numeric_fluent(fl))

def get_all_eff_num(problem: Problem):

    eff_num = {
        eff 
        for a in problem.actions 
        for eff in effects(a) if is_numeric_effect(eff)
    }

    return eff_num


def get_constants(problem: Problem, eff_num: Set[Effect]) -> Set[int]:
    constants = {
        constant_value(eff.value) for eff in eff_num
    }
    init_constants = {
        constant_value(v) for v in problem.initial_values.values() if is_int_constant(v)
    }

    return constants, init_constants


def bitblast_int(value: int, nbits: int):
    return [bool(int(bit)) for bit in list(np.binary_repr(value, width=nbits))]


def get_bitblasted_variables(numeric_variables: Set[Fluent], 
                             constants: Set[int], 
                             nbits: int) -> Tuple[Dict[Fluent, List[Fluent]], Dict[int, List[Fluent]]]:
    
    bitblasted_variables = {var: [Fluent(f"{var.name}_{i}") for i in reversed(range(nbits))] for var in numeric_variables}
    bitblasted_constants = {const: [Fluent(f"q{id}_{i}") for i in reversed(range(nbits))] for id, const in enumerate(constants)}
    return bitblasted_variables, bitblasted_constants


def get_bitblasted_initial_state(bitblasted_variables: Dict[Fluent, List[Fluent]], 
                                 bitblasted_constants: Dict[int, List[Fluent]], 
                                 problem: Problem, 
                                 nbits: int) -> Dict[Fluent, bool]:
    new_initial_values = {}
    for var, var_bits in bitblasted_variables.items():
        initial_value = constant_value(problem.initial_values[FluentExp(var)])
        bits = bitblast_int(initial_value, nbits)
        for i in range(len(bits)):
            new_initial_values[var_bits[i]] = bits[i]

    for const, const_bits in bitblasted_constants.items():
        bits = bitblast_int(const, nbits)
        for i in range(len(bits)):
            new_initial_values[const_bits[i]] = bits[i]

    return new_initial_values