from unified_planning.shortcuts import *

def lhs(condition: FNode) -> FNode:
    return condition.args[0]

def rhs(condition: FNode) -> FNode:
    return condition.args[1]

def is_equals(f: FNode) -> bool:
    return f.is_equals()

def is_le(f: FNode) -> bool:
    return f.is_le()

def is_lt(f: FNode) -> bool:
    return f.is_lt()

def is_numeric_condition(f: FNode) -> bool:
    return is_le(f) or is_lt(f) or is_equals(f)

def is_and(f: FNode) -> bool:
    return f.is_and()

def is_or(f: FNode) -> bool:
    return f.is_or()

def is_not(f: FNode) -> bool:
    return f.is_not()

def is_fluent_exp(f: FNode) -> bool:
    return f.is_fluent_exp()

def is_minus(f: FNode) -> bool:
    return f.is_minus()

def is_zero(f: FNode) -> bool:
    return is_int_constant(f) and constant_value(f) == 0

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