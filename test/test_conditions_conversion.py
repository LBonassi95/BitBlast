from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.helpers.utils import *
from pathlib import Path
from bitblast.helpers.full_adder import *
import numpy as np
import pytest

bits = 5

x1_fluent = Fluent("x1", RealType())
x2_fluent = Fluent("x2", RealType())

x1 = FluentExp(Fluent("x1", RealType()))
x2 = FluentExp(Fluent("x2", RealType()))
b1 = FluentExp(Fluent("b1", BoolType()))
b2 = FluentExp(Fluent("b2", BoolType()))

bin_fluents, bin_fluents_exp, bin_constants, bin_constants_exp = get_bin_variables({x1_fluent, x2_fluent}, {}, bits)


sign_x1 = bin_fluents_exp[x1][bits-1]
sign_x2 = bin_fluents_exp[x2][bits-1]

conditions_to_check = [
    (GE(x1, 0), True),
    (GE(x1, 1), False),
    (GE(x1, x2), False),
    (GE(x1, Plus(x1, 5)), False),
    (b1, True),
    (And(b1, b2), True),
    (Or(b1, b2), True),
    (Not(b1), True),
    (And(b1, GE(x1, 0)), True),
    (Or(b1, GE(x1, Plus(x1, 5))), False),
    (Not(GE(x1, 0)), True),
]

@pytest.mark.parametrize("condition, expected", conditions_to_check)
def test_check_conversion(condition, expected):
    assert check_condition(condition) == expected

conditions_to_convert = [
    (GE(x1, 0), sign_x1),
    (b1, b1),
    (And(b1, b2), And(b1, b2)),
    (Or(b1, b2), Or(b1, b2)),
    (Not(b1), Not(b1)),
    (And(b1, GE(x1, 0)), And(b1, sign_x1)),
    (Or(b1, GE(x2, 0)), Or(b1, sign_x2)),
    (Not(GE(x1, 0)), Not(sign_x1)),
]
@pytest.mark.parametrize("condition, expected", conditions_to_convert)
def test_conversion(condition, expected):
    assert check_condition(condition) == True
    assert convert_condition(condition, bin_fluents_exp) == expected