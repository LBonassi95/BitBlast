from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.engines import CompilationKind
from unified_planning.shortcuts import *
from typing import Tuple
# from numeric_tcore.achievers_helper import *
from bitblast.helpers import *
from pathlib import Path

# class VariableFactory:
#     def __init__(self) -> None:
#         self.index = -1

#     def get_new_var(self) -> Fluent:
#         self.index += 1
#         return Fluent(f"v{self.index}", RealType())


# class FormulaNormalizer:
     
#     def __init__(self) -> None:
#         # self.conditions_map: Dict[FNode, Fluent] = {}
#         self.conditions_map: Dict[Expr, Fluent] = {}
#         self.factory = VariableFactory()

#     def get_variable(self, condition: Expr) -> FNode:
#         """
#         Get the variable associated with the condition and save it in the conditions_map
#         Example: 4x + 5y - 3 -> v1
#         """
#         if self.conditions_map.get(condition, None) is not None:
#             return FluentExp(self.conditions_map[condition])
#         else:
#             new_var = self.factory.get_new_var()
#             self.conditions_map[condition] = new_var
#         return FluentExp(new_var)

#     def normalize(self, formula: FNode) -> FNode:
#         """
#         Transform complex expressions into conditions of the form x >= 0
#         """
#         if is_and(formula):
#             return And(*[self.normalize(f) for f in formula.args])
#         elif is_or(formula):
#             return Or(*[self.normalize(f) for f in formula.args])
#         elif is_not(formula):
#             return Not(self.normalize(formula.args[0]))
#         else:
#             return self.normalize_condition(formula)
    
#     def normalize_condition(self, formula: FNode) -> FNode:
#         if check_ge_zero(formula):
#             return formula
#         elif is_le(formula):
#             new_var = self.get_variable(subtract(rhs(formula), lhs(formula)))
#             return GE(new_var, 0)
#         elif is_lt(formula):
#             # If we have x < 0, we can transform it into Not(x >= 0) without adding a new variable.
#             if check_ge_zero(GE(lhs(formula), rhs(formula))):
#                 return Not(GE(lhs(formula), rhs(formula)))
#             return Not(self.normalize(GE(0, Minus(rhs(formula), lhs(formula)))))
#         else:
#             raise ValueError(f"Formula {formula} is not supported")

# Transform all effects into INCREASE
def set_normalized_effect(act: InstantaneousAction, eff: Effect, simplifier: Simplifier):
    if is_propositional_effect(eff):
        act.add_effect(condition=eff.condition, value=eff.value, fluent=eff.fluent)
    elif eff.is_increase():
        act.add_increase_effect(condition=eff.condition, value=eff.value, fluent=eff.fluent)
    elif eff.is_decrease():
        act.add_increase_effect(condition=eff.condition, value=simplifier.simplify(-eff.value), fluent=eff.fluent)
    else:
        # TODO: handle increase and decrease effects expressed as assignments
        raise NotImplementedError("Effect type not supported")
    

def normalize_action(act: InstantaneousAction, simplifier: Simplifier) -> InstantaneousAction:
    normalized_action = InstantaneousAction(act.name)
    
    for pre in act.preconditions:
        if is_numeric_condition(pre):
            expression = deep_simplify(simplifier.simplify(Minus(lhs(pre), rhs(pre))))
            if is_le(pre):
                normalized_action.add_precondition(LE(expression, 0))
            elif is_lt(pre):
                normalized_action.add_precondition(LT(expression, 0))
            elif is_equals(pre):
                normalized_action.add_precondition(Equals(expression, 0))
        else:
            normalized_action.add_precondition(pre)

    
    for eff in act.effects:
        set_normalized_effect(normalized_action, eff, simplifier)
    return normalized_action


def normalize(problem: Problem) -> Problem:
    grounder = Compiler(compilation_kind = CompilationKind.GROUNDING)
    quantifier_remover = Compiler(compilation_kind = CompilationKind.QUANTIFIERS_REMOVING)

    # semplificare gli implies

    # Ground the problem
    ground_problem = grounder.compile(problem).problem

    # Remove Forall and Exists quantifiers
    ground_problem = quantifier_remover.compile(ground_problem).problem
    assert isinstance(ground_problem, Problem)

    # CAREFUL! THIS SUBSTITUE THE STATIC VARIABLES
    simplifier = Simplifier(environment=get_environment(), problem=problem)

    # Normalize the actions
    normalized_actions = []
    for act in ground_problem.actions:
        normalized_actions.append(normalize_action(act, simplifier))

    normalized_problem = Problem(name="normalized")
    normalized_problem.add_fluents(ground_problem.fluents)
    normalized_problem.add_actions(normalized_actions)

    # TODO SIMPLIFY A GENERIC FORMULA

    for g in ground_problem.goals:
        normalized_problem.add_goal(g)
    normalized_problem.add_objects(ground_problem.all_objects)
    for var, value in ground_problem.initial_values.items():
        normalized_problem.set_initial_value(var, value)

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

    return normalized_problem
