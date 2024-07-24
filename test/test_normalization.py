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

cond1 = GE(x(a1), 0)
cond1_expected = GE(x(a1), 0)

cond2 = GE(x(a1), 5)
cond2_expected = GE(new_var0(), 0)
canonical_expression_test_2 = CanonicalExpression({x(a1): 1}, -5) # x(a1) - 5

cond3 = GE(Times(4, Plus(x(a1), x(a2))), 5)
cond3_expected = GE(new_var0(), 0)
canonical_expression_test_3 = CanonicalExpression({x(a1): 4, x(a2): 4}, -5) # 4*x(a1) + 4*x(a2) - 5

cond4 = LE(x(a1), 0)
cond4_expected = GE(new_var0(), 0)
canonical_expression_test_4 = CanonicalExpression({x(a1): -1}, 0) # -x(a1)

cond5 = GT(x(a1), 0)
cond5_expected = Not(GE(new_var0(), 0))
canonical_expression_test_5 = CanonicalExpression({x(a1): -1}, 0) # -x(a1)

cond6 = Equals(x(a1), 0)
cond6_expected = And(GE(x(a1), 0), GE(new_var0, 0))
canonical_expression_test_6 = CanonicalExpression({x(a1): -1}, 0) # -x(a1)

combinations = [
    (cond1, cond1_expected, {}),
    (cond2, cond2_expected, {canonical_expression_test_2: new_var0}),
    (cond3, GE(new_var0, 0), {canonical_expression_test_3: new_var0}),
    (cond4, cond4_expected, {canonical_expression_test_4: new_var0}),
    (cond5, cond5_expected, {canonical_expression_test_5: new_var0}),
    (cond6, cond6_expected, {canonical_expression_test_6: new_var0}),
    # Test generic formulas
    (And(cond1, cond2), And(cond1, cond2_expected), {canonical_expression_test_2: new_var0}),
    (Or(cond1, cond2), Or(cond1, cond2_expected), {canonical_expression_test_2: new_var0}),
    (Not(cond2), Not(cond2_expected), {canonical_expression_test_2: new_var0}),
    (And(cond2, Or(cond1, cond2)), And(cond2_expected, Or(cond1, cond2_expected)), {canonical_expression_test_2: new_var0}),
    (And(cond2, Or(cond1, cond2)), And(cond2_expected, Or(cond1, cond2_expected)), {canonical_expression_test_2: new_var0}),
]

@pytest.mark.parametrize("formula, expected_formula, expected_map", combinations)
def test_formula_normalization(formula, expected_formula, expected_map):
    formula_normalizer = FormulaNormalizer()
    result_formula = formula_normalizer.normalize(formula)
    assert result_formula == expected_formula
    assert formula_normalizer.conditions_map == expected_map


def test_normalization():
    domain_path = Path(__file__).parent / "pddl" / "counters" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "counters" / "instance_4.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem = normalize(problem)


def test_remove_unnecessary_effects():
    domain_path = Path(__file__).parent / "pddl" / "farmland" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "farmland" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem, _, _ = normalize(problem)

    x = [fl for fl in problem.fluents if fl.name == "x"][0]

    farm0 = problem.all_objects[0]
    farm1 = problem.all_objects[1]

    for action in problem.actions:
        for eff in action.effects:
            assert not eff.fluent == x(farm0)
            assert not eff.fluent == x(farm1)


def test_normalization_mprime():
    domain_path = Path(__file__).parent / "pddl" / "mistery_ground" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "mistery_ground" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem, _, _ = normalize(problem)

    for a in problem.actions:
        assert len(a.effects) >= 1

if __name__ == "__main__":
    test_normalization_mprime()
