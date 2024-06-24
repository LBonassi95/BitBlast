from bitblast.helpers.utils import *
from typing import List


def full_adder_circuit(x_bits: List[FNode], q_bits: List[FNode]):
    assert len(x_bits) == len(q_bits), "The number of bits in x and q must be the same"

    circuit = {'c': {-1: FALSE()}, 'z': {}}

    for i in range(len(x_bits)):
        circuit['z'][i] = XOr(XOr(x_bits[i], q_bits[i]), circuit["c"][i-1]).simplify()
        circuit['c'][i] = Or(And(x_bits[i], q_bits[i]), And(circuit["c"][i-1], XOr(x_bits[i], q_bits[i]))).simplify()

    return circuit


# TODO: Maybe this class is a little bit overengineered

# class FullAdder:

#     def __init__(self, x: List[Fluent], q: List[Fluent]):
#         assert len(x) == len(q), "The number of bits in x and q must be the same"
#         self.x = [FluentExp(x_i) for x_i in x]
#         self.q = [FluentExp(q_i) for q_i in q]
#         self.circuit = {"c": {}, 
#                         "z": {}}
#         self.build_ciurcuit(len(self.x)-1)

#     def build_ciurcuit(self, i: int):
#         if i == -1:
#             self.circuit["c"][i] = FALSE()
#         else:
#             self.build_ciurcuit(i - 1)
#             c_i = Or(
#                     And(self.x[i], self.q[i]),
#                     And(self.circuit["c"][i-1], XOr(self.x[i], self.q[i]))
#                 ).simplify()
#             z_i = XOr(XOr(self.x[i], self.q[i]), self.circuit["c"][i-1]).simplify()
#             self.circuit["c"][i] = c_i
#             self.circuit["z"][i] = z_i