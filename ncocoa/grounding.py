from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.io.pddl_writer import PDDLWriter
from unified_planning.model import Problem
from unified_planning.engines.compilers.grounder import Grounder
from unified_planning.engines.results import CompilerResult
from numeric_tcore.achievers_helper import *
from pathlib import Path


def ground(domain_path: Path, problem_path: Path) -> Problem:
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)
    grounding_result: CompilerResult = Grounder().compile(
            problem, CompilationKind.GROUNDING
        )
    return grounding_result.problem
