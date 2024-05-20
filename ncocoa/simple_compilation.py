from unified_planning.shortcuts import *
from ncocoa.grounding import ground
from typing import Set, List, Tuple
from unified_planning.model.walkers.state_evaluator import StateEvaluator
from unified_planning.model.state import UPState


HOLD_C = 'hold_c'
COUNT = 'count'


def numeric_fluent(name: str) -> Fluent:
    return Fluent(name, RealType())


def modify_actions(actions: List[InstantaneousAction], hold_c_map: Dict[FNode, Fluent], count_fluent: Fluent) -> List[InstantaneousAction]:

    for a in actions:
        a.add_precondition(Equals(count_fluent, -1))
        
        effects: List[Effect] = a.effects
        new_effects: List[Effect] = []

        for eff in effects:
            if not eff.is_conditional():
                new_effects.append(eff)
            else:
                # CONDITIONAL EFFECT

                # NORMALIZE INCREASE DECREASE EFFECTS
                # TODO: these can be handled natively I think.

                if eff.is_increase():
                    eff = Effect(condition=eff.condition, fluent=eff.fluent, value=Plus(eff.fluent, eff.value))
                elif eff.is_decrease():
                    eff = Effect(condition=eff.condition, fluent=eff.fluent, value=Minus(eff.fluent, eff.value))
                
                assert eff.is_assignment()

                hold_c = hold_c_map[eff.condition]
                new_value = Plus(Times(eff.fluent, (1 - hold_c)), Times(eff.value, hold_c))
                new_effect = Effect(
                    condition=TRUE(),
                    fluent=eff.fluent,
                    value=new_value,
                )
                new_effects.append(new_effect)
        
        a.clear_effects()
        
        for e in new_effects:
            a.effects.append(e)

        a.add_effect(condition=TRUE(), fluent=FluentExp(count_fluent), value=0)

def get_update_actions(hold_c_map: Dict[FNode, Fluent], count_fluent: Fluent) -> List[InstantaneousAction]:

    to_update: Tuple[FNode, Fluent] = []
    for c, hold_c in hold_c_map.items():
        to_update.append((c, hold_c))

    # Sort fluents by index. It is not necessary, but it is much better to obtain a more readable pddl output.
    # It should be computationally better to use an ordered dictionary, but it is not necessary for now.
    to_update.sort(key=lambda f: int(f[1].name.replace(HOLD_C, '')))

    update_actions = []

    for c, hold_c in to_update:
        assert isinstance(hold_c, Fluent)
        index = int(hold_c.name.replace(HOLD_C, ''))

        test = FluentExp(hold_c)

        hold_c_true_action = InstantaneousAction(f"update_{hold_c.name}_true")
        hold_c_true_action.add_precondition(Equals(FluentExp(count_fluent), index))
        hold_c_true_action.add_precondition(c)
        hold_c_true_action.add_effect(condition=TRUE(), fluent=test, value=1)

        hold_c_false_action = InstantaneousAction(f"update_{hold_c.name}_false")
        hold_c_false_action.add_precondition(Equals(FluentExp(count_fluent), index))
        hold_c_false_action.add_precondition(Not(c))
        hold_c_false_action.add_effect(condition=TRUE(), fluent=test, value=0)

        if index == len(to_update) - 1:
            hold_c_true_action.add_effect(condition=TRUE(), fluent=count_fluent, value=-1)
            hold_c_false_action.add_effect(condition=TRUE(), fluent=count_fluent, value=-1)
        else:
            hold_c_true_action.add_effect(condition=TRUE(), fluent=count_fluent, value=Plus(count_fluent, 1))
            hold_c_false_action.add_effect(condition=TRUE(), fluent=count_fluent, value=Plus(count_fluent, 1))

        update_actions.append(hold_c_true_action)
        update_actions.append(hold_c_false_action)
    
    return update_actions

def compile(domain_path: Path, problem_path: Path):

    # ASSUMPION (for now): conditional effects are only numeric!

    ground_problem = ground(domain_path, problem_path)
    compiled_problem = ground_problem.clone()

    initial_state: UPState = UPState(compiled_problem.initial_values)
    actions: List[InstantaneousAction] = compiled_problem.actions

    # conditions = {c | c -> x := e is an effect of an action} \ {true}
    conditions: Set[FNode] = {e.condition for a in actions for e in a.effects}.difference({TRUE()})

    # NEW FLUENTS
    count_fluent = numeric_fluent(COUNT)
    hold_c_map = {c : numeric_fluent(f"{HOLD_C}{i}") for c, i in zip(conditions, range(len(conditions)))}
    new_fluents = set(hold_c_map.values()) | {count_fluent}
    compiled_problem.add_fluents(new_fluents)

    initial_values = {count_fluent: -1}
    
    state_evaluator = StateEvaluator(compiled_problem)
    for c, hold_c in hold_c_map.items():
        initial_values[hold_c] = 1 if state_evaluator.evaluate(c, initial_state).is_true() else 0

    for fluent, value in initial_values.items():
        compiled_problem.set_initial_value(fluent, value)

    modify_actions(actions, hold_c_map, count_fluent)
    update_actions = get_update_actions(hold_c_map, count_fluent)

    compiled_problem.add_actions(update_actions)
    compiled_problem.add_goal(Equals(count_fluent, -1))

    return compiled_problem
