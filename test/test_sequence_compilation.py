from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.shortcuts import *
from bitblast.helpers import *
from pathlib import Path
import numpy as np
from unified_planning.io.pddl_writer import PDDLWriter
from bitblast.sequence_compilation import SequenceCompiler
from bitblast.normalization import normalize

out_path = Path(__file__).parent / "pddl" / "simple" 
def test_sequence_compilation():

    domain_path = Path(__file__).parent / "pddl" / "counters" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "counters" / "instance_4.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)

    problem, _, _ = normalize(problem)

    nbits = 4
    compilation = SequenceCompiler(problem, nbits)
    new_problem = compilation.get_compiled_problem()

    writer = PDDLWriter(new_problem)
    writer.write_problem(out_path / "compiled_problem.pddl")
    writer.write_domain(out_path / "compiled_domain.pddl")