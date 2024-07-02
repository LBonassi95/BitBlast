from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.helpers import *
from pathlib import Path
import os
import numpy as np
from unified_planning.io.pddl_writer import PDDLWriter
from bitblast.axioms_compilation import AxiomsCompiler
from bitblast.normalization import normalize


out_path = Path(__file__).parent / "pddl" / "simple" 
def test_compilation():
    domain_path = Path(__file__).parent / "pddl" / "simple" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "simple" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)

    nbits = 4
    compilation = AxiomsCompiler(problem, nbits, optimized=True)
    new_problem = compilation.get_compiled_problem()

    writer = PDDLWriter(new_problem)
    writer.write_problem(out_path / "compiled_problem.pddl")
    writer.write_domain(out_path / "compiled_domain.pddl")

def test_compilation_fo():
    domain_path = Path(__file__).parent / "pddl" / "simple_fo" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "simple_fo" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem = normalize(problem)

    nbits = 4
    compilation = AxiomsCompiler(problem, nbits, optimized=True)
    new_problem = compilation.get_compiled_problem()

    writer = PDDLWriter(new_problem)
    writer.write_problem(out_path / "compiled_problem.pddl")
    writer.write_domain(out_path / "compiled_domain.pddl")


