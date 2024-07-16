from bitblast.helpers.full_adder_helper import full_adder_circuit
from unified_planning.shortcuts import *
from bitblast.helpers.utils import effects_num, effects_prop, bitblast_int, constant_value
from bitblast.helpers.conditions_helper import check_condition, convert_condition

OF_FLUENT = Fluent("OF", BoolType())


def add_bin_effect(new_action: InstantaneousAction, eff: Effect, new_variables_map: Dict[FNode, List[FNode]], optimized = True):
    x_bits = new_variables_map[eff.fluent]
    nbits = len(x_bits)
    if optimized:
        q_bits = bitblast_int(constant_value(eff.value), nbits, False)
        q_bits = [TRUE() if q_bits[i] else FALSE() for i in range(nbits)]
    else:
        q_bits = new_variables_map[eff.value]
    circuit = full_adder_circuit(x_bits, q_bits)
    z = [circuit["z"][i] for i in range(nbits)]
    for i in range(nbits):
        new_action.add_effect(condition=z[i], fluent=x_bits[i], value=TRUE())
        new_action.add_effect(condition=Not(z[i]), fluent=x_bits[i], value=FALSE())

    # case1 = And(x_bits[nbits-1], q_bits[nbits-1], Not(circuit["c"][nbits-1])).simplify()
    # case2 = And(Not(x_bits[nbits-1]), Not(q_bits[nbits-1]), circuit["c"][nbits-1]).simplify()
    of1 = And(x_bits[nbits-1], q_bits[nbits-1], Not(circuit["z"][nbits-1])).simplify()
    of2 = And(Not(x_bits[nbits-1]), Not(q_bits[nbits-1]), circuit["z"][nbits-1]).simplify()
    
    #overflow = Or(case1, case2).simplify()
    new_action.add_effect(condition=of1, fluent=FluentExp(OF_FLUENT), value=TRUE())
    new_action.add_effect(condition=of2, fluent=FluentExp(OF_FLUENT), value=TRUE())


def convert_action(act: InstantaneousAction, new_variables_map: Dict[FNode, List[FNode]], optimized = True) -> InstantaneousAction:
    
    new_action = InstantaneousAction(act.name)
    numeric_effects = effects_num(action=act)

    for precondition in act.preconditions:
        assert check_condition(precondition)
        new_action.add_precondition(convert_condition(precondition, new_variables_map, False))

    new_action.add_precondition(Not(OF_FLUENT))

    for eff in numeric_effects:
        add_bin_effect(new_action, eff, new_variables_map, optimized=optimized)
    
    for eff in effects_prop(action=act):
        new_action.add_effect(condition=eff.condition, fluent=eff.fluent, value=eff.value)

    return new_action