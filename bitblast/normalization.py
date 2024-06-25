from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.engines import CompilationKind
from unified_planning.shortcuts import *
from typing import Tuple
# from numeric_tcore.achievers_helper import *
from pathlib import Path

SEP = "--"

def args_str(args: Tuple[Object]) -> str:
    return SEP.join([str(arg) for arg in args])


def fluent_exp_to_fluent(fluent_exp: FNode) -> Fluent:
    assert isinstance(fluent_exp, FNode)
    original_fluent = fluent_exp.fluent()
    fluent_type = original_fluent.type
    if len(fluent_exp.args) > 0:
        return Fluent(f"{original_fluent.name}{SEP}{args_str(args=fluent_exp.args)}", fluent_type)
    else:
        return Fluent(f"{original_fluent.name}", fluent_type)

def get_explicit_fluents(problem: Problem) -> List[Fluent]:
    explicit_fluents = []
    
    # TODO CHECK THIS!!!!!!!!
    for var in problem.initial_values.keys():
        explicit_fluents.append(fluent_exp_to_fluent(var))
    
    return explicit_fluents

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
    # explicit_fluents = get_explicit_fluents(ground_problem)

    # normalized_problem = Problem(name="normalized")
    # normalized_problem.add_fluents(explicit_fluents)
    # normalized_problem.add_actions(ground_problem.actions)
    # for g in ground_problem.goals:
    #     normalized_problem.add_goal(g)

    # for var, value in ground_problem.initial_values.items():
    #     normalized_problem.set_initial_value(var, value)

    ##########################################

    return ground_problem
