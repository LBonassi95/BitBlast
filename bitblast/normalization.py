from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.engines import CompilationKind
from unified_planning.shortcuts import *
from typing import Tuple
# from numeric_tcore.achievers_helper import *
from bitblast.helpers import *
from bitblast.canonical_linear_expression import *
from pathlib import Path
from unified_planning.model.walkers import Simplifier
from unified_planning.model.walkers.state_evaluator import StateEvaluator
from unified_planning.model.state import UPState
from unified_planning.model.walkers import FreeVarsExtractor
from unified_planning.model.metrics import PlanQualityMetric
# from line_profiler import *


class VariableFactory:
    '''
    A factory class to create new variables
    '''
    def __init__(self) -> None:
        self.index = -1

    def get_new_var(self) -> Fluent:
        self.index += 1
        return Fluent(f"v{self.index}", RealType())


class FormulaNormalizer:
     
    def __init__(self, problem: Problem = None) -> None:
        self.conditions_map: Dict[CanonicalExpression, Fluent] = {}
        self.factory = VariableFactory()
        # The problem is required to substitue the static variables representing constants
        self.simplifier = Simplifier(environment=get_environment(), problem=problem) if problem is not None else Simplifier(environment=get_environment())

    def get_variable(self, canonical_expression: CanonicalExpression) -> Fluent:
        """
        Get the variable associated with the condition and save it in the conditions_map
        Example: 4x + 5y - 3 -> v0
        """
        if self.conditions_map.get(canonical_expression, None) is not None:
            return self.conditions_map[canonical_expression]
        else:
            new_var = self.factory.get_new_var()
            self.conditions_map[canonical_expression] = new_var
        return new_var
    
    def normalize(self, condition: FNode) -> FNode:
        '''
        Normalize a generic condition
        '''
        if is_and(condition):
            return And(*[self.normalize(c) for c in condition.args])
        elif is_or(condition):
            return Or(*[self.normalize(c) for c in condition.args])
        elif is_not(condition):
            return Not(self.normalize(condition.args[0]))
        elif is_fluent_exp(condition):
            return condition
        elif is_numeric_condition(condition): # Nuemric condition
            return self.normalize_condition(condition)
        else:
            raise ValueError(f"Formula {condition} is not supported")
        
    def normalize_condition(self, condition: FNode):
        '''
        Normalize a numeric condition, creating a new variable if needed
        '''
        if is_le(condition):
            preprocessed_formula = self.simplifier.simplify(Minus(rhs(condition), lhs(condition)))
            expression = get_canonical_expression(preprocessed_formula)
            if self.is_simple_condition(expression): 
                # Condition is of the form x.
                # Hence we have 0 <= x, which is equivalent to x >= 0 
                return condition
            new_var = self.get_variable(expression)
            return GE(new_var, 0)
        elif is_lt(condition):
            preprocessed_formula = self.simplifier.simplify(Minus(rhs(condition), lhs(condition)))
            res = Not(GE(-preprocessed_formula, 0))
            return self.normalize(res)
        elif is_equals(condition):
            res = And(GE(lhs(condition), rhs(condition)), LE(lhs(condition), rhs(condition)))
            return self.normalize(res)
        else:
            raise ValueError(f"Formula {condition} is not supported")
    
    def is_simple_condition(self, expr: CanonicalExpression) -> bool:
        '''
        Check if the expression is a condition of the form x >= 0
        '''
        if len(expr.coefficients.keys()) == 1: # Exacly one variable
            var = list(expr.coefficients.keys())[0]
            coefficient = expr.coefficients[var]
            return coefficient == 1 and expr.constant == 0
        else:
            return False


def set_normalized_effect(act: InstantaneousAction, eff: Effect, simplifier: Simplifier):
    '''
    Set the effect in the action as an INCREASE effect
    The simplifier is required to simplify the value of the effect and substitute static variables representing constants
    '''
    if is_propositional_effect(eff):
        act.add_effect(condition=eff.condition, value=eff.value, fluent=eff.fluent)
    elif eff.is_increase():
        act.add_increase_effect(condition=eff.condition, value=simplifier.simplify(eff.value), fluent=eff.fluent)
    elif eff.is_decrease():
        act.add_increase_effect(condition=eff.condition, value=simplifier.simplify(-eff.value), fluent=eff.fluent)
    else:
        # TODO: handle increase and decrease effects expressed as assignments
        raise NotImplementedError("Effect type not supported")
    

def normalize_action(act: InstantaneousAction, formula_normalizer: FormulaNormalizer) -> InstantaneousAction:
    '''
    Normalize an action:
        - transform all the preconditions into conditions of the form x >= 0
        - transform all the effects into INCREASE effects
    '''
    normalized_action = InstantaneousAction(act.name)
    
    for pre in act.preconditions:
        normalized_action.add_precondition(formula_normalizer.normalize(pre))

    for eff in act.effects:
        set_normalized_effect(normalized_action, eff, formula_normalizer.simplifier)
    return normalized_action


def get_delta(act: InstantaneousAction, expression: CanonicalExpression) -> int:
    '''
    Get how much the expression is increased or decreased by the action
    '''
    expression_variables = set(expression.coefficients.keys())
    relevant_effects = [eff for eff in act.effects if eff.fluent in expression_variables]
    delta = 0
    for eff in relevant_effects:
        delta += int(constant_value(eff.value)) * expression.coefficients[eff.fluent]
    return delta



def add_new_effects(act: InstantaneousAction, formula_normalizer: FormulaNormalizer) -> InstantaneousAction:
    '''
    Add new effects for the new variables created during the normalization
    '''
    for expression, variable in formula_normalizer.conditions_map.items():
        delta = get_delta(act, expression)
        if delta != 0:
            act.add_increase_effect(condition=TRUE(), value=Int(delta), fluent=variable)


def get_initial_value(expression: FNode, initial_state: UPState, state_evaluator: StateEvaluator) -> int:
    return state_evaluator.evaluate(expression, initial_state)

def remove_unnecessary_effects(normalized_problem: Problem) -> Set[FNode]:
    '''
    Remove unnacessary effects from the actions.
    An effect is unnecessary if it changes a fluent that is not used in any precondition or goal
    '''
    extractor = get_environment().free_vars_extractor
    assert isinstance(extractor, FreeVarsExtractor)

    all_var = []
    
    for a in normalized_problem.actions:
        assert isinstance(a, InstantaneousAction)
        for pre in a.preconditions:
            all_var.extend(extractor.get(pre))

    for g in normalized_problem.goals:
        all_var.extend(extractor.get(g))

    unnecessary_vars = set(normalized_problem.initial_values.keys()) - set(all_var)

    actions_to_remove = []

    for a in normalized_problem.actions:
        assert isinstance(a, InstantaneousAction)
        effects_to_remove = [eff for eff in a.effects if eff.fluent in unnecessary_vars]
        for eff in effects_to_remove:
            a.effects.remove(eff)
        if len(a.effects) == 0:
            actions_to_remove.append(a)
    
    if len(actions_to_remove) > 0:
        for a in actions_to_remove:
            normalized_problem.actions.remove(a)

    return unnecessary_vars

# @profile
def snp_to_rnp(problem: Problem, verbose: bool = False) -> Problem:

    formula_normalizer = FormulaNormalizer(problem)
    state_evaluator = StateEvaluator(problem)
    normalized_problem = Problem(name="normalized")

    # Normalize the actions
    normalized_actions = []
    for act in problem.actions:
        normalized_actions.append(normalize_action(act, formula_normalizer))

    # Normalize the goals
    for g in problem.goals:
        normalized_problem.add_goal(formula_normalizer.normalize(g))

    # Add new effects for the new variables created during the normalization
    for act in normalized_actions:
        add_new_effects(act, formula_normalizer)

    # Get the new initial values for the new variables
    new_initial_values = {}
    for expression, new_var in formula_normalizer.conditions_map.items():
        initial_value = get_initial_value(expression.get_formula(), UPState(problem.initial_values), state_evaluator)
        new_initial_values[FluentExp(new_var)] = initial_value

    # Add actions, fluents and objects to the new problem
    normalized_problem.add_fluents(problem.fluents)
    normalized_problem.add_actions(normalized_actions)
    normalized_problem.add_objects(problem.all_objects)
    normalized_problem.add_fluents(formula_normalizer.conditions_map.values())

    # Copy the initial values from the original problem
    for var, value in problem.initial_values.items():
        normalized_problem.set_initial_value(var, value)

    # Set the new initial values for the new variables
    for var, value in new_initial_values.items():
        normalized_problem.set_initial_value(var, value)

    # Remove unnecessary effects
    unnecessary_vars = remove_unnecessary_effects(normalized_problem)

    # unnecessary_fluents = {v.fluent() for v in unnecessary_vars}
    # fluents_ok = [fl for fl in normalized_problem.fluents if fl not in unnecessary_fluents]
    # normalized_problem.clear_fluents()
    # normalized_problem.add_fluents(fluents_ok)

    if verbose:
        unnecessary_vars = set([v for v in unnecessary_vars if isinstance(v, FNode) and v.fluent().type == RealType()])

        vars = get_numeric_variables(problem)
        new_vars = [v() for v in formula_normalizer.conditions_map.values()]

        N_size = len(vars)
        N_new_size = N_size + len(new_vars) - len(unnecessary_vars)
        print('----------------------')
        print('Normalization results:')
        print('----------------------')
        print('Numeric variables:', vars)
        print('New variables:', new_vars)
        print('Removed variables:', unnecessary_vars)

        print('----------------------')
        print('|N|:', N_size)
        print('|N_prime|:', N_new_size)
        print(f'|N|/|N_prime|: {N_new_size/N_size:.3f}')
        print('----------------------')
        print('----------------------')
        print('Variable Input problem')
        print('----------------------')
        all_vars = get_all_variables(problem)
        static_fluents = problem.get_static_fluents()
        static_state_variables = [v for v in all_vars if v.fluent() in static_fluents]
        state_variables = [v for v in all_vars if v.fluent() not in static_fluents]
        # print('State variables:', state_variables)
        print('Number of static variables:', len(static_state_variables))
        size_numeric_state_variables = len([v for v in state_variables if is_numeric_fluent(v.fluent())])
        size_boolean_state_variables = len([v for v in state_variables if not is_numeric_fluent(v.fluent())])
        print('Number of  numeric state variables:', size_numeric_state_variables)
        print('Number of  boolean state variables:', size_boolean_state_variables)
        print(f'|Fvar| / |Nvar|: {size_boolean_state_variables/size_numeric_state_variables:.3f}')
        eff_prop = []
        eff_num = []
        for a in problem.actions:
            for eff in a.effects:
                if is_numeric_fluent(eff.fluent.fluent()):
                    eff_num.append(eff)
                else:
                    eff_prop.append(eff)
        print(f'|Eff_prop| / |Eff_num|: {len(eff_prop) / len(eff_num):.3f}')

        print('----------------------')
        print('----------------------')
        print('Variable Normalized problem')
        print('----------------------')
        all_vars = [v for v in get_all_variables(normalized_problem) if v not in unnecessary_vars]
        static_fluents = problem.get_static_fluents()
        static_state_variables = [v for v in all_vars if v.fluent() in static_fluents]
        state_variables = [v for v in all_vars if v.fluent() not in static_fluents]
        # print('Normalized - State variables:', state_variables)
        print('Normalized - Number of static variables:', len(static_state_variables))
        size_numeric_state_variables = len([v for v in state_variables if is_numeric_fluent(v.fluent())])
        size_boolean_state_variables = len([v for v in state_variables if not is_numeric_fluent(v.fluent())])
        print('Normalized - Number of  numeric state variables:', size_numeric_state_variables)
        print('Normalized - Number of  boolean state variables:', size_boolean_state_variables)
        print(f'Normalized - |Fvar| / |Nvar|: {size_boolean_state_variables/size_numeric_state_variables:.3f}')
        eff_prop = []
        eff_num = []
        for a in normalized_problem.actions:
            for eff in a.effects:
                if is_numeric_fluent(eff.fluent.fluent()):
                    eff_num.append(eff)
                else:
                    eff_prop.append(eff)
        print(f'Normalized - |Eff_prop| / |Eff_num|: {len(eff_prop) / len(eff_num):.3f}')

    return normalized_problem


def pop_metric_effects(act: InstantaneousAction, metric_vars: Set[Fluent]) -> List[Effect]:
    '''
    Extract the effects that are related to the metric variables
    '''
    for pre in act.preconditions:
        assert len(get_environment().free_vars_extractor.get(pre) & metric_vars) == 0, "Metric variables appearing in the preconditions are not supported"
    metric_effects = []
    for eff in act.effects:
        assert isinstance(eff, Effect)
        if eff.fluent in metric_vars:
            metric_effects.append(eff)
            act.effects.remove(eff)
    return metric_effects


def extract_metric(problem: Problem) -> Tuple[PlanQualityMetric, Dict[str, List[Effect]]]:
    '''
    Extract the metric from the problem and the effects related to the metric variables
    '''
    assert len(problem.quality_metrics) <= 1, "Only one metric is supported"
    if len(problem.quality_metrics) == 1:
        metric = problem.quality_metrics[0]
        assert isinstance(metric, PlanQualityMetric)
        if isinstance(metric, MinimizeActionCosts):
            return metric, {}
        metric_vars = get_environment().free_vars_extractor.get(metric.expression)
    
        metric_map = {a.name: pop_metric_effects(a, metric_vars) for a in problem.actions}
        
        return metric, metric_map

    else:
        return None, {}
    

def add_metric(problem: Problem, metric: PlanQualityMetric, metric_map: Dict[str, List[Effect]]) -> None:
    '''
    Add the metric to the problem
    '''
    problem.clear_quality_metrics()

    if isinstance(metric, MinimizeActionCosts):
        action_dict = {}
        for act, cost in metric.costs.items():
            action_dict[act.name] = cost
        metric = MinimizeActionCosts({a: action_dict.get(a.name, 0) for a in problem.actions})

    problem.add_quality_metric(metric)
    for a in problem.actions:
        assert isinstance(a, InstantaneousAction)
        metric_effects = metric_map.get(a.name, [])
        for eff in metric_effects:
            if eff.is_increase():
                a.add_increase_effect(condition=eff.condition, fluent=eff.fluent, value=eff.value)
            elif eff.is_decrease():
                a.add_decrease_effect(condition=eff.condition, fluent=eff.fluent, value=eff.value)
            else:
                assert eff.is_assignment()
                a.add_effect(condition=eff.condition, fluent=eff.fluent, value=eff.value)

# @profile
def normalize(problem: Problem, verbose: bool = False) -> Tuple[Problem, PlanQualityMetric, Dict[str, List[Effect]]]:
    grounder = Compiler(compilation_kind = CompilationKind.GROUNDING)
    quantifier_remover = Compiler(compilation_kind = CompilationKind.QUANTIFIERS_REMOVING)

    # Ground the problem
    ground_problem = grounder.compile(problem).problem

    # Remove Forall and Exists quantifiers
    ground_problem = quantifier_remover.compile(ground_problem).problem
    assert isinstance(ground_problem, Problem)
    ##########################################

    # Extract the metric from the problem
    metric, metric_map = extract_metric(ground_problem)
    #####################################

    return snp_to_rnp(ground_problem, verbose), metric, metric_map
