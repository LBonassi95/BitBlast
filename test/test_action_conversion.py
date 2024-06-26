from unified_planning.shortcuts import *
from bitblast.helpers import *
import numpy as np
import pytest

nbits = 5

x = Fluent("x", RealType())
of = Fluent("OF", BoolType())
b = Fluent("b", BoolType())

act = InstantaneousAction('test')

act.add_precondition(GE(x, 0))
act.add_increase_effect(condition=TRUE(), fluent=FluentExp(x), value=Int(5))
act.add_effect(condition=TRUE(), fluent=FluentExp(b), value=True)


_, new_variables_map = get_bit_variables({FluentExp(x)}, {Int(5)}, nbits)


sign_x1 = new_variables_map[FluentExp(x)][nbits-1]

def test_action_conversion():

    x_bits = [FluentExp(Fluent(f"{x.name}_{i}")) for i in range(nbits)]
    q_bits = [FluentExp(Fluent(f"q{0}_{i}")) for i in range(nbits)]

    circuit = full_adder_circuit(x_bits, q_bits)
    sums = [circuit["z"][i] for i in range(nbits)]

    # overflow = Or(And(x_bits[nbits-1], q_bits[nbits-1], Not(circuit["c"][nbits-1])), And(Not(x_bits[nbits-1]), Not(q_bits[nbits-1]), circuit["c"][nbits-1]))

    act_expected = InstantaneousAction('test')
    act_expected.add_precondition(Not(sign_x1))
    for i in range(nbits):
        act_expected.add_effect(condition=sums[i], fluent=x_bits[i], value=TRUE())
        act_expected.add_effect(condition=Not(sums[i]), fluent=x_bits[i], value=FALSE())

    of1 = And(x_bits[nbits-1], q_bits[nbits-1], Not(circuit["z"][nbits-1])).simplify()
    of2 = And(Not(x_bits[nbits-1]), Not(q_bits[nbits-1]), circuit["z"][nbits-1]).simplify()
    
    #overflow = Or(case1, case2).simplify()
    act_expected.add_effect(condition=of1, fluent=FluentExp(OF_FLUENT), value=TRUE())
    act_expected.add_effect(condition=of2, fluent=FluentExp(OF_FLUENT), value=TRUE())

    act_expected.add_effect(condition=TRUE(), fluent=FluentExp(b), value=TRUE())

    new_action = convert_action(act, new_variables_map)
    assert new_action == act_expected