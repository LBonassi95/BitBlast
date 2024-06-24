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


def test_compilation():
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)

    nbits = 5
    compilation = BaseCompiler(problem, nbits)
    compilation.get_compiled_problem()