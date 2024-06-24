from unified_planning.shortcuts import *
from typing import List, Tuple, Set, Dict
from bitblast.shortcuts import *
from bitblast.helpers.full_adder import *
import numpy as np

OVERFLOW_MSG = "Overflow Detected: the value {value} cannot be represented with {nbits} bits"

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


def bitblast_int(value: int, nbits: int) -> List[bool]:
    bits = [bool(int(bit)) for bit in list(np.binary_repr(value, width=nbits))]
    # Bits are reversed, so we need to reverse them
    if len(bits) > nbits:
        raise OverflowError(OVERFLOW_MSG.format(value=value, nbits=nbits))
    bits.reverse()
    return bits


def get_bin_variables(numeric_variables: Set[Fluent], 
                        constants: Set[int], 
                        nbits: int) -> Tuple[Dict[Fluent, List[Fluent]], Dict[FNode, List[FNode]], Dict[int, List[Fluent]], Dict[int, List[FNode]]]:
    
    bin_fluents = {var: [Fluent(f"{var.name}_{i}") for i in range(nbits)] for var in numeric_variables}
    bin_constants = {q: [Fluent(f"q{id}_{i}") for i in range(nbits)] for id, q in enumerate(constants)}
    bin_fluents_exp = {FluentExp(fluent): [FluentExp(fl_bit) for fl_bit in bin_fluents[fluent]] for fluent in bin_fluents.keys()}
    bin_constants_exp = {q: [FluentExp(q_bit) for q_bit in bin_constants[q]] for q in bin_constants.keys()}
    return bin_fluents, bin_fluents_exp, bin_constants, bin_constants_exp


def set_initial_values(initial_values: Dict[Fluent, bool], var_bits: List[FNode], bits: List[bool]) -> None:
    for var, bit in zip(var_bits, bits):
        initial_values[var] = Bool(bit)


def get_bin_initial_state(bin_fluent_exp: Dict[FNode, List[FNode]], 
                          bin_constants_exp: Dict[int, List[FNode]], 
                          initial_values: Dict,
                          nbits: int) -> Dict[Fluent, bool]:

    # Copy all boolean initial values
    new_initial_values = {k: v for k, v in initial_values.items() if is_bool_constant(v)}

    for var, var_bits in bin_fluent_exp.items():
        bits = bitblast_int(constant_value(initial_values[var]), nbits)
        set_initial_values(new_initial_values, var_bits, bits)

    for const, const_bits in bin_constants_exp.items():
        bits = bitblast_int(const, nbits)
        set_initial_values(new_initial_values, const_bits, bits)

    return new_initial_values


def check_condition(condition: FNode) -> bool:
    if condition.is_and() or condition.is_or():
        return all(check_condition(c) for c in condition.args)
    if condition.is_not():
        return check_condition(condition.args[0])
    if condition.is_fluent_exp():
        return True
    if condition.is_le():
        return check_ge_zero(condition)
    return False


def sign_bit(bits: List[FNode]) -> FNode:
    return bits[-1]


def check_ge_zero(condition: FNode) -> bool:
    return condition.is_le() and \
           condition.args[0].is_int_constant() and \
           condition.args[0].constant_value() == 0 and \
           condition.args[1].is_fluent_exp()


def convert_ge_zero(condition: FNode, bin_fluents_exp: Dict[FNode, List[FNode]]) -> FNode:
    var = condition.args[1]
    return sign_bit(bin_fluents_exp[var])


def convert_condition(condition: FNode, bin_fluents_exp: Dict[FNode, List[FNode]]) -> FNode:
    """
    Convert a condition to a bitblasted condition.
    Precondition: check_condition(condition) == True
    """
    if condition.is_and():
        return And(*[convert_condition(c, bin_fluents_exp) for c in condition.args])
    elif condition.is_or():
        return Or(*[convert_condition(c, bin_fluents_exp) for c in condition.args])
    elif condition.is_not():
        return Not(convert_condition(condition.args[0], bin_fluents_exp))
    elif condition.is_le():
        return convert_ge_zero(condition, bin_fluents_exp)
    else:
        # A boolean fluent expression
        return condition
    
def add_bin_effect(new_action: InstantaneousAction, eff: Effect, bin_fluents_exp: Dict[FNode, List[FNode]], bin_constants_exp: Dict[FNode, List[FNode]]):
    value = constant_value(eff.value)
    x_bits = bin_fluents_exp[eff.fluent]
    q_bits = bin_constants_exp[value]
    circuit = full_adder_circuit(x_bits, q_bits)
    sums = [circuit["z"][i] for i in range(len(x_bits))]
    for i in range(len(x_bits)):
        new_action.add_effect(condition=sums[i], fluent=x_bits[i], value=TRUE())
        new_action.add_effect(condition=Not(sums[i]), fluent=x_bits[i], value=FALSE())


def convert_action(act: InstantaneousAction, bin_fluents_exp: Dict[FNode, List[FNode]], bin_constants_exp: Dict[FNode, List[FNode]]) -> InstantaneousAction:
    
    new_action = InstantaneousAction(act.name)
    numeric_effects = effects_num(action=act)

    for precondition in act.preconditions:
        assert check_condition(precondition)
        new_action.add_precondition(convert_condition(precondition, bin_fluents_exp))

    for eff in numeric_effects:
        add_bin_effect(new_action, eff, bin_fluents_exp, bin_constants_exp)
    
    for eff in effects_prop(action=act):
        new_action.add_effect(condition=eff.condition, fluent=eff.fluent, value=eff.value)

    return new_action
    