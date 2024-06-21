from bitblast.utils import *
from typing import List


class FullAdder:

    def __init__(self, x: List[Fluent], q: List[Fluent]):
        assert len(x) == len(q), "The number of bits in x and q must be the same"
        self.x = [FluentExp(x_i) for x_i in x]
        self.q = [FluentExp(q_i) for q_i in q]
        self.circuit = {}
        self.build_ciurcuit(len(self.x)-1)

    def build_ciurcuit(self, i: int):
        if i == -1:
            self.circuit[f"c_{i}"] = FALSE()
        else:
            self.build_ciurcuit(i - 1)
            c_i = Or(
                    And(self.x[i], self.q[i]),
                    And(self.circuit[f"c_{i-1}"], XOr(self.x[i], self.q[i]))
                ).simplify()
            z_i = XOr(XOr(self.x[i], self.q[i]), self.circuit[f"c_{i-1}"]).simplify()
            self.circuit[f"c_{i}"] = c_i
            self.circuit[f"z_{i}"] = z_i