from pathlib import Path
from unified_planning.model.problem import Problem
from ncocoa.simple_compilation import compile

PDDL_PATH = Path(__file__).parent / "pddl"

def test_sailing():

    domain_path = PDDL_PATH / 'sailing-condeffs' / 'domain.pddl'
    problem_path = PDDL_PATH / 'sailing-condeffs' / 'instance_1_1_1229.pddl'

    compiled_problem = compile(domain_path, problem_path)

    assert isinstance(compiled_problem, Problem)
