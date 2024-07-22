from unified_planning.shortcuts import *
from bitblast.helpers.utils import sign_bit

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

def check_ge_zero(condition: FNode) -> bool:
    return condition.is_le() and \
           condition.args[0].is_int_constant() and \
           condition.args[0].constant_value() == 0 and \
           condition.args[1].is_fluent_exp()


def convert_ge_zero(condition: FNode, bin_fluents_exp: Dict[FNode, List[FNode]], flipped) -> FNode:
    var = condition.args[1]
    if not flipped:
        return Not(sign_bit(bin_fluents_exp[var]))
    else:
        return sign_bit(bin_fluents_exp[var])


def convert_condition(condition: FNode, bin_fluents_exp: Dict[FNode, List[FNode]], flipped: bool = False) -> FNode:
    """
    Convert a condition to a bitblasted condition.
    Precondition: check_condition(condition) == True
    """
    if condition.is_and():
        return And(*[convert_condition(c, bin_fluents_exp, flipped) for c in condition.args])
    elif condition.is_or():
        return Or(*[convert_condition(c, bin_fluents_exp, flipped) for c in condition.args])
    elif condition.is_not():
        return Not(convert_condition(condition.args[0], bin_fluents_exp, flipped))
    elif condition.is_le():
        return convert_ge_zero(condition, bin_fluents_exp, flipped)
    else:
        # A boolean fluent expression
        return condition