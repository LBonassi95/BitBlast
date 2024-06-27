from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.helpers import *
from pathlib import Path
import os
import numpy as np
from unified_planning.io.pddl_writer import PDDLWriter
from bitblast.base_compilation import BaseCompiler
from bitblast.normalization import *
import pytest

Obj = UserType("object")

v1 = Object("v1", Obj)
v2 = Object("v2", Obj)

x = Fluent("x", RealType(), v = Obj)
b = Fluent("b", BoolType(), v = Obj)

formula_1 = GE(x(v1), 0)
formula_2 = GE(x(v1), 5)

combinations = [
    (formula_1, formula_1, {}),
    #(formula_2, formula_1, {})
]

@pytest.mark.parametrize("formula, expected_formula, expected_variables", combinations)
def test_formula_normalization(formula, expected_formula, expected_variables):
    result_formula, result_variables = replace_complex_conditions(formula, {})
    assert result_formula == expected_formula
    assert result_variables == expected_variables
