from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.helpers.utils import *
from bitblast.helpers.full_adder import *
from pathlib import Path
import os
import numpy as np
from unified_planning.io.pddl_writer import PDDLWriter
from bitblast.base_compilation import BaseCompiler

domain_path = Path(__file__).parent / "pddl" / "simple" / "domain.pddl"
problem_path = Path(__file__).parent / "pddl" / "simple" / "problem.pddl"

out_path = Path(__file__).parent / "pddl" / "simple" 
def test_compilation():
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)

    nbits = 4
    compilation = BaseCompiler(problem, nbits)
    new_problem = compilation.get_compiled_problem()

    writer = PDDLWriter(new_problem)
    writer.write_problem(out_path / "compiled_problem.pddl")
    writer.write_domain(out_path / "compiled_domain.pddl")


