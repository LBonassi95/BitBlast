import pytest
from pathlib import Path

from ncocoa.grounding import ground

PDDL_PATH = Path(__file__).parent.parent / "pddl"

def test_grounding_propositional():

    domain_path = PDDL_PATH / 'airport-adl' / 'domain.pddl'
    problem_path = PDDL_PATH / 'airport-adl' / 'p01-airport1-p1.pddl'

    ground_problem = ground(domain_path, problem_path)