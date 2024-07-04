from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.helpers import *
from pathlib import Path
import os
import numpy as np
from unified_planning.io.pddl_writer import PDDLWriter, ConverterToPDDLString
from bitblast.axioms_compilation import AxiomsCompiler, Axiom, ProblemAxiomWriter
from bitblast.normalization import normalize, add_metric

out_path = Path(__file__).parent.parent
def test_metric_compilation():
    domain_path = Path(__file__).parent / "pddl" / "simple_fo_metric" / "domain.pddl"
    problem_path = Path(__file__).parent / "pddl" / "simple_fo_metric" / "problem.pddl"
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    problem, metric, metric_map = normalize(problem)

    nbits = 10
    compilation = AxiomsCompiler(problem, nbits, optimized=True)
    new_problem, axioms = compilation.get_compiled_problem()
    
    add_metric(problem=new_problem, metric=metric, metric_map=metric_map)
    ax_writer = ProblemAxiomWriter(new_problem, axioms)

    for act in new_problem.actions:
        metric_effects = metric_map.get(act.name, [])
        for eff in metric_effects:
            assert eff in act.effects

    open(out_path / "compiled_domain.pddl", 'w').write(ax_writer.get_domain())
    open(out_path / "compiled_problem.pddl", 'w').write(ax_writer.get_problem())