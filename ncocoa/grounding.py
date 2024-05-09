from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.io.pddl_writer import PDDLWriter
from unified_planning.model import Problem
from unified_planning.engines import CompilationKind
from unified_planning.engines.results import CompilerResult
from numeric_tcore.achievers_helper import *
from pathlib import Path

def ground(domain_path: Path, problem_path: Path) -> Problem:
    reader = PDDLReader()
    problem = reader.parse_problem(domain_path, problem_path)

    grounder = Compiler(compilation_kind = CompilationKind.GROUNDING)
    quantifier_remover = Compiler(compilation_kind = CompilationKind.QUANTIFIERS_REMOVING)

    # Ground the problem
    ground_problem = grounder.compile(problem).problem

    # Remove Forall and Exists quantifiers
    ground_problem = quantifier_remover.compile(ground_problem).problem

    return ground_problem
