from unified_planning.shortcuts import *
from unified_planning.model.walkers import LinearChecker, FreeVarsExtractor
from sympy.parsing.sympy_parser import parse_expr, standard_transformations
from sympy.core import Expr

extractor = FreeVarsExtractor()
linear_checker = LinearChecker()

class CanonicalExpression:

    def __init__(self, coefficients: Dict[FNode, int], constant: int) -> None:
        self.coefficients = coefficients
        self.constant = constant

    def get_formula(self) -> FNode:
        if self.constant != 0:
            return Plus(*[Times(Int(coeff), var) for var, coeff in self.coefficients.items()] + [Int(self.constant)]).simplify()
        else:
            return Plus(*[Times(Int(coeff), var) for var, coeff in self.coefficients.items()]).simplify()
    
    def __eq__(self, other: object) -> bool:
        return type(other) == CanonicalExpression and \
               self.coefficients == other.coefficients and \
               self.constant == other.constant
    
    def __hash__(self) -> int:
        return hash((self.__class__, frozenset(self.coefficients.items()), self.constant))
    
    def __repr__(self) -> str:
        return f"{self.coefficients} + {self.constant}"

def get_substitutions(fluents: List[Fluent]):
    return {fluent: FluentExp(Fluent(f'var{index}', RealType())) 
            for index, fluent in enumerate(fluents)}
    
def up_to_sympy(expr: FNode):
    return parse_expr(str(expr), transformations=standard_transformations)

def get_canonical_expression(expression: FNode):
    assert linear_checker.get_fluents(expression)[0]
    fluents = extractor.get(expression)
    fluents_to_vars = get_substitutions(fluents)
    vars_to_fluents = {str(v): k for k, v in fluents_to_vars.items()}
    new_expression = expression.substitute(fluents_to_vars)
    return sympy_to_canonical(up_to_sympy(new_expression), vars_to_fluents)

def sympy_to_canonical(expr: Expr, vars_dict: Dict[str, FNode]):
    coefficients = {
        vars_dict[str(var)]: int(coeff) for var, coeff in expr.as_coefficients_dict().items() if var != 1
        # Sympy uses the key 1 for the constant
    }
    constant = expr.as_coefficients_dict().get(1, 0) # If the constant is not present, it is 0
    return CanonicalExpression(coefficients, int(constant))
