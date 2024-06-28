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

# Obj = UserType("object")

# a1 = Object("a1", Obj)
# a2 = Object("a2", Obj)

# x = Fluent("x", RealType(), v = Obj)
# b = Fluent("b", BoolType(), v = Obj)

# new_var0 = Fluent("v0", RealType())
# new_var1 = Fluent("v1", RealType())

# cond1 = GE(x(a1), 0)
# cond2 = GE(x(a1), 5)
# # cond2_alt = GE(Minus(Times(x(a1), 2), Plus(5, x(a1))), 0)
# new_cond2 = GE(new_var0(), 0)

# cond3 = LE(x(a1), 0)
# cond4 = LT(x(a1), 0)

# combinations = [
#     (cond1, cond1, {}),
#     (cond2, new_cond2, {Minus(x(a1), 5): new_var0}),
#     (And(cond1, cond2), And(cond1, new_cond2), {Minus(x(a1), 5): new_var0}),
#     (Or(cond1, cond2), Or(cond1, new_cond2), {Minus(x(a1), 5): new_var0}),
#     (Not(cond2), Not(new_cond2), {Minus(x(a1), 5): new_var0}),
#     (And(cond2, Or(cond1, cond2)), And(new_cond2, Or(cond1, new_cond2)), {Minus(x(a1), 5): new_var0}),
#     (cond3, GE(new_var0, 0), {Minus(0, x(a1)): new_var0}),
#     (cond4, Not(GE(x(a1), 0)), {}),
# ]

# @pytest.mark.parametrize("formula, expected_formula, expected_map", combinations)
# def test_formula_normalization(formula, expected_formula, expected_map):
#     formula_normalizer = FormulaNormalizer()
#     result_formula = formula_normalizer.normalize(formula)
#     assert result_formula == expected_formula
#     assert formula_normalizer.conditions_map == expected_map


def test_pre_normalization():
    domain_path = Path(__file__).parent / "pddl" / "counters" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "counters" / "instance_4.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem = normalize(problem)
    print()