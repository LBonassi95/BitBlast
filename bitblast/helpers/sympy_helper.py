from unified_planning.shortcuts import *
from unified_planning.model.walkers import LinearChecker, FreeVarsExtractor, Substituter, Simplifier, Nnf
from sympy.parsing.sympy_parser import parse_expr, standard_transformations
from sympy.core import Expr

extractor = FreeVarsExtractor()
linear_checker = LinearChecker()

def get_substitutions(fluents: List[Fluent]):
    return {fluent: FluentExp(Fluent(f'var{index}', RealType())) 
            for index, fluent in enumerate(fluents)}

def sympy_to_up(expr: Expr, vars_dict):
    if expr.is_Add:
        return Plus(*[sympy_to_up(elem, vars_dict) for elem in expr.args])
    elif expr.is_Mul:
        return Times(*[sympy_to_up(elem, vars_dict) for elem in expr.args])
    elif expr.is_Pow:
        raise NotImplementedError("Power not supported")
    elif expr.is_Number:
        return Int(int(expr))
    elif expr.is_Symbol:
        return vars_dict[str(expr)]
    
def up_to_sympy(expr: FNode):
    return parse_expr(str(expr), transformations=standard_transformations)

def deep_simplify(expression: FNode):
    # Check that the expression is linear
    assert linear_checker.get_fluents(expression)[0]
    fluents = extractor.get(expression)
    fluents_to_vars = get_substitutions(fluents)
    vars_to_fluents = {str(v): k for k, v in fluents_to_vars.items()}
    new_expression = expression.substitute(fluents_to_vars)
    return sympy_to_up(up_to_sympy(new_expression), vars_to_fluents).simplify()