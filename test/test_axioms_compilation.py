from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.helpers import *
from pathlib import Path
import os
import numpy as np
from unified_planning.io.pddl_writer import PDDLWriter, ConverterToPDDLString
from bitblast.axioms_compilation import AxiomsCompiler, Axiom, ProblemAxiomWriter
from bitblast.normalization import normalize

out_path = Path(__file__).parent.parent
def test_compilation():
    domain_path = Path(__file__).parent / "pddl" / "simple" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "simple" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)

    nbits = 5
    compilation = AxiomsCompiler(problem, nbits, optimized=True)
    new_problem, axioms = compilation.get_compiled_problem()

    ax_writer = ProblemAxiomWriter(new_problem, axioms)

    open(out_path / "compiled_domain.pddl", 'w').write(ax_writer.get_domain())
    open(out_path / "compiled_problem.pddl", 'w').write(ax_writer.get_problem())

def test_compilation_fo():
    domain_path = Path(__file__).parent / "pddl" / "simple_fo" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "simple_fo" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem, _, _ = normalize(problem)

    nbits = 4
    compilation = AxiomsCompiler(problem, nbits, optimized=True)
    new_problem, axioms = compilation.get_compiled_problem()

    ax_writer = ProblemAxiomWriter(new_problem, axioms)

    open(out_path / "compiled_domain.pddl", 'w').write(ax_writer.get_domain())
    open(out_path / "compiled_problem.pddl", 'w').write(ax_writer.get_problem())


