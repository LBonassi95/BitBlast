from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.helpers.utils import *
from pathlib import Path
from bitblast.helpers.full_adder import *
import numpy as np
import pytest

nbits = 5

x = Fluent("x", RealType())
b = Fluent("b", BoolType())

act = InstantaneousAction('test')

act.add_precondition(GE(x, 0))
act.add_increase_effect(condition=TRUE(), fluent=FluentExp(x), value=Int(5))
act.add_effect(condition=TRUE(), fluent=FluentExp(b), value=True)


bin_fluents, bin_fluents_exp, bin_constants, bin_constants_exp = get_bin_variables({x}, {5}, nbits)


sign_x1 = bin_fluents_exp[FluentExp(x)][nbits-1]

def test_action_conversion():

    x_bits = [FluentExp(Fluent(f"{x.name}_{i}")) for i in range(nbits)]
    q_bits = [FluentExp(Fluent(f"q{0}_{i}")) for i in range(nbits)]

    circuit = full_adder_circuit(x_bits, q_bits)
    sums = [circuit["z"][i] for i in range(nbits)]

    act_expected = InstantaneousAction('test')
    act_expected.add_precondition(sign_x1)
    for i in range(nbits):
        act_expected.add_effect(condition=sums[i], fluent=x_bits[i], value=TRUE())
        act_expected.add_effect(condition=Not(sums[i]), fluent=x_bits[i], value=FALSE())

    act_expected.add_effect(condition=TRUE(), fluent=FluentExp(b), value=True)

    new_action = convert_action(act, bin_fluents_exp, bin_constants_exp)
    assert new_action == act_expected