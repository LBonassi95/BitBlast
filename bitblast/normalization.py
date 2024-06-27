from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.engines import CompilationKind
from unified_planning.shortcuts import *
from typing import Tuple
from unified_planning.model.walkers import Substituter
# from numeric_tcore.achievers_helper import *
from bitblast.helpers import *
from pathlib import Path


def replace_complex_conditions(formula: FNode, conditions_map: Dict[FNode, FNode]) -> Tuple[FNode, Dict[FNode, FNode]]:
    """
    Transform complex expressions into conditions of the form x >= 0
    """
    if check_ge_zero(formula):
        return formula, conditions_map
    else:
        raise NotImplementedError("The formula is not in the form x >= 0")

def normalize(problem: Problem) -> Problem:
    grounder = Compiler(compilation_kind = CompilationKind.GROUNDING)
    quantifier_remover = Compiler(compilation_kind = CompilationKind.QUANTIFIERS_REMOVING)

    # semplificare gli implies

    # Ground the problem
    ground_problem = grounder.compile(problem).problem

    # Remove Forall and Exists quantifiers
    ground_problem = quantifier_remover.compile(ground_problem).problem
    assert isinstance(ground_problem, Problem)

    # TODO: transform the problem to a RT taks

    # ground_fluents, ground_fluents_map = get_ground_fluents(ground_problem)
    # subsistuter = Substituter(get_environment())
    # normalized_problem = Problem(name="normalized")
    # normalized_problem.add_fluents(ground_fluents)

    # normalized_actions = []
    # for act in ground_problem.actions:
    #     assert isinstance(act, InstantaneousAction)
    #     new_act = InstantaneousAction(act.name)
    #     new_preconditions = [subsistuter.substitute(pre, ground_fluents_map) for pre in act.preconditions]
    #     for pre in new_preconditions:
    #         new_act.add_precondition(pre)
    #     print()
        
        
    # normalized_problem.add_actions(ground_problem.actions)
    # for g in ground_problem.goals:
    #     normalized_problem.add_goal(g)

    # for var, value in ground_problem.initial_values.items():
    #     normalized_problem.set_initial_value(var, value)

    ##########################################

    return ground_problem
