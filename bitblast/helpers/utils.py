from unified_planning.shortcuts import *
from bitblast.helpers.shortcuts import *
from typing import List, Tuple, Set, Dict
import numpy as np
from sympy.parsing.sympy_parser import parse_expr, standard_transformations
from sympy.core import Expr

OVERFLOW_MSG = "Overflow Detected: the value {value} cannot be represented with {nbits} bits"

def effects_num(action: InstantaneousAction) -> Set[Effect]:
    return {eff for eff in effects(action) if is_numeric_effect(eff)}

def effects_prop(action: InstantaneousAction) -> Set[Effect]:
    return {eff for eff in effects(action) if is_propositional_effect(eff)}

def get_action_effect_map(actions: List[InstantaneousAction]) -> Dict[str, set[Effect]]:
    return {action_name(a): effects(a) for a in actions}

def get_action_name(action: FNode):
    return action._name

def get_numeric_variables(problem: Problem) -> Set[FNode]:
    ground_fluents = set()
    
    # TODO CHECK THIS!!!!!!!!
    for var in problem.initial_values.keys():
        assert isinstance(var, FNode)
        if is_numeric_fluent(var.fluent()):
            ground_fluents.add(var)
    
    return ground_fluents
    # return set(fl for fl in problem.fluents if is_numeric_fluent(fl))
    

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
    if value < -pow(2, nbits - 1) or value > pow(2, nbits - 1) - 1:
        raise OverflowError(OVERFLOW_MSG.format(value=value, nbits=nbits))

    bin_rep = np.binary_repr(value, width=nbits)
    bits = [bool(int(bit)) for bit in bin_rep]
    sign    = value >= 0
    assert (sign and bits[0] == 0) or (not sign and bits[0] == 1)
    bits.reverse()
    # bits = [bool(int(bit)) for bit in list(np.binary_repr(value, width=nbits))]
    # Bits are reversed, so we need to reverse them
    # if len(bits) > nbits:
    #     raise OverflowError(OVERFLOW_MSG.format(value=value, nbits=nbits))
    return bits

def two_complement(value, bits):
    pass


SEP = "--"

def args_str(args: Tuple[Object]) -> str:
    return SEP.join([str(arg) for arg in args])


def get_ground_fluent_name(fluent_exp: FNode) -> str:
    original_fluent = fluent_exp.fluent()
    if len(fluent_exp.args) > 0:
        return f"{original_fluent.name}{SEP}{args_str(args=fluent_exp.args)}"
    else:
        return f"{original_fluent.name}"

def get_bit_variables(numeric_variables: Set[FNode], 
                      constants: Set[int], 
                      nbits: int) -> Tuple[List[Fluent], Dict[FNode, List[FNode]]]:
    
    bit_fluents = {var: [Fluent(f"{get_ground_fluent_name(var)}_{i}") for i in range(nbits)] for var in numeric_variables}
    bit_constants = {q: [Fluent(f"q{id}_{i}") for i in range(nbits)] for id, q in enumerate(constants)}

    new_fluents = [item for sublist in bit_fluents.values() for item in sublist] + \
                  [item for sublist in bit_constants.values() for item in sublist]
    new_variables_map = {fluent: [FluentExp(fl_bit) for fl_bit in bit_fluents[fluent]] for fluent in bit_fluents.keys()}
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


def subtract(lhs: FNode, rhs: FNode) -> FNode:
    """
    Perfom subtraction by ignoring zeros.
    For example, Minus(x - 5, 0) -> x - 5
    """
    # TODO: it would be better to use sympy
    if is_zero(rhs):
        return lhs
    if is_zero(lhs):
        return -rhs
    return Minus(lhs, rhs)