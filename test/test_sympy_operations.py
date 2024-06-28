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

a1 = Object("a1", Obj)
a2 = Object("a2", Obj)

x = Fluent("x", RealType(), v = Obj)
b = Fluent("b", BoolType(), v = Obj)

new_var0 = Fluent("v0", RealType())
new_var1 = Fluent("v1", RealType())

expr1 = x(a1)
expr2 = Plus(x(a1), x(a2))
expr3 = Minus(x(a1), x(a2))
expr4 = Minus(x(a1), Times(5, x(a2)))
expr5 = Plus(Minus(Times(3, x(a1)), Times(2, x(a1))), x(a2), 5)

combinations = [
    (expr1, expr1),
    (expr2, expr2),
    (expr3, Plus(x(a1), Times(-1, x(a2)))),
    (expr4, Plus(x(a1), Times(-5, x(a2)))),
    (expr5, Plus(5, x(a1), x(a2))),
]
@pytest.mark.parametrize("expression, expected_expression", combinations)
def test_sympy_simplify(expression, expected_expression):
    assert expected_expression.simplify() == deep_simplify(expression).simplify()
