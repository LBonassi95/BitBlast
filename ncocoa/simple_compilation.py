from unified_planning.shortcuts import *
from ncocoa.grounding import ground
from typing import Set, List, Tuple
from unified_planning.model.walkers.state_evaluator import StateEvaluator
from unified_planning.model.state import UPState


HOLD_C = 'hold_c'
COUNT = 'count'


def numeric_fluent(name: str) -> Fluent:
    return Fluent(name, RealType())


def simple_effect(lhs: Fluent, rhs: FNode) -> Effect:
    return Effect(condition=TRUE(), fluent=lhs, value=rhs)


def rhs(eff: Effect) -> FNode:
    return eff.value


def lhs(eff: Effect) -> Fluent:
    return eff.fluent


def condition(eff: Effect) -> FNode:
    return eff.condition


def normalize_effect(eff: Effect) -> Effect:
    '''
    Transform an increase/decrease effect into an assignment effect
    '''
    if eff.is_increase():
        return Effect(condition=condition(eff), fluent=lhs(eff), value=Plus(lhs(eff), rhs(eff)))
    elif eff.is_decrease():
        return Effect(condition=condition(eff), fluent=lhs(eff), value=Minus(lhs(eff), rhs(eff)))
    else:
        assert eff.is_assignment()
        return eff


def compile_effect(eff: Effect, hold_c_map: Dict[FNode, Fluent]) -> Effect:
    '''
    Compiles a conditional effect using hold_c variables
    Input: c -> x := e
    Output: 
        if c is true then return c -> x := e
        Otherwise, return x = x * (1 - hold_c) + e * hold_c
    '''
    if not eff.is_conditional():
        return eff
    else:
        # Normalize increase decrease effects
        # TODO: these can be handled natively I think.
        eff = normalize_effect(eff)
        hold_c = hold_c_map[condition(eff)]
        return simple_effect(lhs(eff), Plus(Times(lhs(eff), (1 - hold_c)), Times(rhs(eff), hold_c)))



def compile_action(a: InstantaneousAction, hold_c_map: Dict[FNode, Fluent], count_fluent: Fluent) -> None:
    '''
    Removes the conditional effects from the action using the hold_c variables
    '''
    a.add_precondition(Equals(count_fluent, -1))

    new_effects = [compile_effect(eff, hold_c_map) for eff in a.effects] + [simple_effect(FluentExp(count_fluent), Int(0))]
    a.clear_effects()
    for e in new_effects:
        # If two effect are in conflict then we must use "append" instead of "add_effect"
        a.effects.append(e)


def create_action(name: str, preconditions: List[FNode], effects: List[Effect]) -> InstantaneousAction:
    '''
    Creates a new action with the given preconditions and effects
    '''
    a = InstantaneousAction(name)
    for p in preconditions:
        a.add_precondition(p)
    for e in effects:
        a.effects.append(e)
    return a


def get_updates(c: FNode, hold_c: Fluent, count_fluent: Fluent, index: int, last_update: int) -> List[InstantaneousAction]:
    '''
    Creates the update actions for one hold_c fluent.
    '''
    count_expr = FluentExp(count_fluent)
    hold_expr = FluentExp(hold_c)
    count_value = Int(-1) if index == last_update else Plus(count_expr, 1)
    counter_update = simple_effect(count_expr, count_value)

    update_true = create_action(
        name = f"update_{hold_c.name}_true",
        preconditions = [c, Equals(count_expr, index)],
        effects = [counter_update, simple_effect(hold_expr, Int(1))]
    )

    update_false = create_action(
        name = f"update_{hold_c.name}_false",
        preconditions = [Not(c), Equals(count_expr, index)],
        effects = [counter_update, simple_effect(hold_expr, Int(0))]
    )

    return update_true, update_false


def get_update_actions(hold_c_map: Dict[FNode, Fluent], count_fluent: Fluent) -> List[InstantaneousAction]:
    '''
    Creates the update actions for every hold_c fluents.
    '''
    to_update: Tuple[FNode, Fluent] = [(c, hold_c) for c, hold_c in hold_c_map.items()]
    # Sort fluents by index. It is not necessary, but it is much better to obtain a more readable pddl output.
    # It should be computationally better to use an ordered dictionary, but it is not necessary for now.
    to_update.sort(key=lambda f: int(f[1].name.replace(HOLD_C, '')))

    update_actions = []
    last_update = len(to_update) - 1
    for i, (c, hold_c) in enumerate(to_update):
        update_actions.extend(get_updates(c, hold_c, count_fluent, i, last_update))

    return update_actions

def set_initial_values(compiled_problem: Problem, initial_state: UPState, count_fluent: Fluent, hold_c_map: Dict[FNode, Fluent]) -> None:
    
    new_initial_values = {count_fluent: -1}
    
    state_evaluator = StateEvaluator(compiled_problem)
    for c, hold_c in hold_c_map.items():
        new_initial_values[hold_c] = 1 if state_evaluator.evaluate(c, initial_state).is_true() else 0

    for fluent, value in new_initial_values.items():
        compiled_problem.set_initial_value(fluent, value)


def compile(domain_path: Path, problem_path: Path):
    '''
    Compiles a numeric problem with conditional effects into a numeric problem without conditional effects.
    '''

    # ASSUMPION (for now): conditional effects are only numeric!
    ground_problem = ground(domain_path, problem_path)
    compiled_problem = ground_problem.clone()
    
    initial_state: UPState = UPState(ground_problem.initial_values)
    actions: List[InstantaneousAction] = compiled_problem.actions

    # conditions = {c | c -> x := e is an effect of an action} \ {true}
    conditions: Set[FNode] = {e.condition for a in actions for e in a.effects}.difference({TRUE()})

    # New numeric fluents
    count_fluent = numeric_fluent(COUNT)
    hold_c_map = {c: numeric_fluent(f"{HOLD_C}{i}") for c, i in zip(conditions, range(len(conditions)))}
    new_fluents = set(hold_c_map.values()) | {count_fluent}
    compiled_problem.add_fluents(new_fluents)

    # New initial values
    set_initial_values(compiled_problem, initial_state, count_fluent, hold_c_map)

    # New actions
    for a in actions:
        compile_action(a, hold_c_map, count_fluent)

    update_actions = get_update_actions(hold_c_map, count_fluent)

    compiled_problem.add_actions(update_actions)

    return compiled_problem
