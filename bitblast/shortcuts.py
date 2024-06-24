from unified_planning.shortcuts import *
from typing import List, Tuple, Set, Dict

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