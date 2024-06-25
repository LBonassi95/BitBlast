from unified_planning.shortcuts import *
from bitblast.helpers import *
import numpy as np
import pytest

bits = 5

x1_fluent = Fluent("x1", RealType())
x2_fluent = Fluent("x2", RealType())

b1_fluent = Fluent("b1", BoolType())

x1 = FluentExp(Fluent("x1", RealType()))
x2 = FluentExp(Fluent("x2", RealType()))
b1 = FluentExp(Fluent("b1", BoolType()))

_, new_variables_map = get_bit_variables({x1_fluent, x2_fluent}, {Int(0)}, bits)

initial_values = {
    x1: Int(3), # 00011
    x2: Int(-5), # 11011
    b1: TRUE()
}

def test_new_initial_state():
    new_initial_variables = get_bin_initial_state(new_variables_map, initial_values, bits)
    assert new_initial_variables[new_variables_map[x1][0]] == TRUE()
    assert new_initial_variables[new_variables_map[x1][1]] == TRUE()
    assert new_initial_variables[new_variables_map[x1][2]] == FALSE()
    assert new_initial_variables[new_variables_map[x1][3]] == FALSE()
    assert new_initial_variables[new_variables_map[x1][4]] == FALSE()

    assert new_initial_variables[new_variables_map[x2][0]] == TRUE()
    assert new_initial_variables[new_variables_map[x2][1]] == TRUE()
    assert new_initial_variables[new_variables_map[x2][2]] == FALSE()
    assert new_initial_variables[new_variables_map[x2][3]] == TRUE()
    assert new_initial_variables[new_variables_map[x2][4]] == TRUE()

    assert new_initial_variables[new_variables_map[Int(0)][0]] == FALSE()
    assert new_initial_variables[new_variables_map[Int(0)][1]] == FALSE()
    assert new_initial_variables[new_variables_map[Int(0)][2]] == FALSE()
    assert new_initial_variables[new_variables_map[Int(0)][3]] == FALSE()
    assert new_initial_variables[new_variables_map[Int(0)][4]] == FALSE()

    assert new_initial_variables[b1] == TRUE()


initial_values_overflow = {
    x1: Int(1024), # Overflow
    x2: Int(-5), # Don't care
}

def test_new_initial_state_overflow():
    with pytest.raises(OverflowError):
        get_bin_initial_state(new_variables_map, initial_values_overflow, bits)