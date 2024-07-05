from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.helpers import *
from pathlib import Path
import os
import numpy as np
from unified_planning.io.pddl_writer import PDDLWriter, ConverterToPDDLString
from bitblast.sequence_compilation import SequenceCompiler
from bitblast.base_compilation import BaseCompiler
from bitblast.normalization import normalize, add_metric

out_path = Path(__file__).parent.parent
def test_metric_compilation():
    domain_path = Path(__file__).parent / "pddl" / "simple_fo_metric" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "simple_fo_metric" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem, metric, metric_map = normalize(problem)

    nbits = 10
    compilation = BaseCompiler(problem, nbits, optimized=True)
    new_problem = compilation.get_compiled_problem()
    
    add_metric(problem=new_problem, metric=metric, metric_map=metric_map)

    for act in new_problem.actions:
        metric_effects = metric_map.get(act.name, [])
        for eff in metric_effects:
            assert eff in act.effects

    writer = PDDLWriter(new_problem)
    writer.write_problem(out_path / "compiled_problem.pddl")
    writer.write_domain(out_path / "compiled_domain.pddl")


def test_metric_compilation_sequence():
    domain_path = Path(__file__).parent / "pddl" / "simple_fo_metric" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "simple_fo_metric" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem, metric, metric_map = normalize(problem)

    nbits = 10
    compilation = SequenceCompiler(problem, nbits, optimized=True)
    new_problem = compilation.get_compiled_problem()
    
    add_metric(problem=new_problem, metric=metric, metric_map=metric_map)


    writer = PDDLWriter(new_problem)
    writer.write_problem(out_path / "compiled_problem.pddl")
    writer.write_domain(out_path / "compiled_domain.pddl")