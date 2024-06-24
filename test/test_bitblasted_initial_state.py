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

b1_fluent = Fluent("b1", BoolType())

x1 = FluentExp(Fluent("x1", RealType()))
x2 = FluentExp(Fluent("x2", RealType()))
b1 = FluentExp(Fluent("b1", BoolType()))

bin_fluents, bin_fluents_exp, bin_constants, bin_constants_exp = get_bin_variables({x1_fluent, x2_fluent}, {0}, bits)

initial_values = {
    x1: Int(3), # 00011
    x2: Int(-5), # 11011
    b1: TRUE()
}

def test_new_initial_state():
    new_initial_variables = get_bin_initial_state(bin_fluents_exp, bin_constants_exp, initial_values, bits)
    assert new_initial_variables[bin_fluents_exp[x1][0]] == TRUE()
    assert new_initial_variables[bin_fluents_exp[x1][1]] == TRUE()
    assert new_initial_variables[bin_fluents_exp[x1][2]] == FALSE()
    assert new_initial_variables[bin_fluents_exp[x1][3]] == FALSE()
    assert new_initial_variables[bin_fluents_exp[x1][4]] == FALSE()

    assert new_initial_variables[bin_fluents_exp[x2][0]] == TRUE()
    assert new_initial_variables[bin_fluents_exp[x2][1]] == TRUE()
    assert new_initial_variables[bin_fluents_exp[x2][2]] == FALSE()
    assert new_initial_variables[bin_fluents_exp[x2][3]] == TRUE()
    assert new_initial_variables[bin_fluents_exp[x2][4]] == TRUE()

    assert new_initial_variables[bin_constants_exp[0][0]] == FALSE()
    assert new_initial_variables[bin_constants_exp[0][1]] == FALSE()
    assert new_initial_variables[bin_constants_exp[0][2]] == FALSE()
    assert new_initial_variables[bin_constants_exp[0][3]] == FALSE()
    assert new_initial_variables[bin_constants_exp[0][4]] == FALSE()

    assert new_initial_variables[b1] == TRUE()


initial_values_overflow = {
    x1: Int(1024), # Overflow
    x2: Int(-5), # Don't care
}

def test_new_initial_state_overflow():
    with pytest.raises(OverflowError):
        get_bin_initial_state(bin_fluents_exp, bin_constants_exp, initial_values_overflow, bits)