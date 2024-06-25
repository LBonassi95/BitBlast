from unified_planning.shortcuts import *
from typing import List, Tuple, Set, Dict
import numpy as np

OVERFLOW_MSG = "Overflow Detected: the value {value} cannot be represented with {nbits} bits"

def is_numeric_effect(eff: Effect) -> bool:
    return eff.is_increase()

def is_propositional_effect(eff: Effect) -> bool:
    assert isinstance(eff.value, FNode)
    return eff.value.is_bool_constant()

def is_int_constant(v: FNode) -> bool:
    return v.is_int_constant()

def is_bool_constant(v: FNode) -> bool:
    return v.is_bool_constant()

def constant_value(v: FNode) -> int:
    return v.constant_value()

def is_numeric_fluent(fl: Fluent) -> bool:
    return fl.type == RealType() or fl.type == IntType()

def action_name(action: InstantaneousAction) -> str:
    return action.name

def effects(action: InstantaneousAction):
    return set(action.effects)

def effects_num(action: InstantaneousAction):
    return {eff for eff in effects(action) if is_numeric_effect(eff)}

def effects_prop(action: InstantaneousAction):
    return {eff for eff in effects(action) if is_propositional_effect(eff)}

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
    constants = {eff.value for eff in eff_num}
    init_constants = {v for v in problem.initial_values.values() if is_int_constant(v)}
    return constants, init_constants

def bitblast_int(value: int, nbits: int) -> List[bool]:
    bits = [bool(int(bit)) for bit in list(np.binary_repr(value, width=nbits))]
    # Bits are reversed, so we need to reverse them
    if len(bits) > nbits:
        raise OverflowError(OVERFLOW_MSG.format(value=value, nbits=nbits))
    bits.reverse()
    return bits

def get_bit_variables(numeric_variables: Set[Fluent], 
                      constants: Set[int], 
                      nbits: int) -> Tuple[List[Fluent], Dict[FNode, List[FNode]]]:
    
    bit_fluents = {var: [Fluent(f"{var.name}_{i}") for i in range(nbits)] for var in numeric_variables}
    bit_constants = {q: [Fluent(f"q{id}_{i}") for i in range(nbits)] for id, q in enumerate(constants)}

    new_fluents = [item for sublist in bit_fluents.values() for item in sublist] + \
                  [item for sublist in bit_constants.values() for item in sublist]
    new_variables_map = {FluentExp(fluent): [FluentExp(fl_bit) for fl_bit in bit_fluents[fluent]] for fluent in bit_fluents.keys()}
    new_variables_map.update({q: [FluentExp(q_bit) for q_bit in bit_constants[q]] for q in bit_constants.keys()})
    return new_fluents, new_variables_map

def set_initial_values(initial_values: Dict[Fluent, bool], var_bits: List[FNode], bits: List[bool]) -> None:
    for var, bit in zip(var_bits, bits):
        initial_values[var] = Bool(bit)

def get_bin_initial_state(new_variables_map: Dict[FNode, List[FNode]],
                          initial_values: Dict,
                          nbits: int) -> Dict[Fluent, bool]:

    # Copy all boolean initial values
    new_initial_values = {k: v for k, v in initial_values.items() if is_bool_constant(v)}

    for var, var_bits in new_variables_map.items():
        if is_int_constant(var):
            bits = bitblast_int(constant_value(var), nbits)
        else:
            assert var.is_fluent_exp()
            bits = bitblast_int(constant_value(initial_values[var]), nbits)
        set_initial_values(new_initial_values, var_bits, bits)

    return new_initial_values

def sign_bit(bits: List[FNode]) -> FNode:
    return bits[-1]
