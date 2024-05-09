import pytest
from pathlib import Path
from unified_planning.model import Problem
from ncocoa.grounding import ground

PDDL_PATH = Path(__file__).parent / "pddl"

def test_grounding_propositional():

    domain_path = PDDL_PATH / 'airport-adl' / 'domain.pddl'
    problem_path = PDDL_PATH / 'airport-adl' / 'p01-airport1-p1.pddl'

    ground_problem = ground(domain_path, problem_path)
    assert isinstance(ground_problem, Problem)


def test_grounding_numeric():

    domain_path = PDDL_PATH / 'sailing-condeffs' / 'domain.pddl'
    problem_path = PDDL_PATH / 'sailing-condeffs' / 'instance_1_1_1229.pddl'

    ground_problem = ground(domain_path, problem_path)
    assert isinstance(ground_problem, Problem)