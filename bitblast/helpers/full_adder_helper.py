from unified_planning.shortcuts import *
from typing import List


def full_adder_circuit(x_bits: List[FNode], q_bits: List[FNode]):
    assert len(x_bits) == len(q_bits), "The number of bits in x and q must be the same"

    circuit = {'c': {-1: FALSE()}, 'z': {}}

    for i in range(len(x_bits)):
        circuit['z'][i] = XOr(XOr(x_bits[i], q_bits[i]), circuit["c"][i-1]).simplify()
        circuit['c'][i] = Or(And(x_bits[i], q_bits[i]), And(circuit["c"][i-1], XOr(x_bits[i], q_bits[i]))).simplify()

    return circuit


def compact_full_adder_circuit(x_bits: List[FNode], q_bits: List[FNode]):
    assert len(x_bits) == len(q_bits), "The number of bits in x and q must be the same"

    circuit = {'c': {-1: FALSE()}, 'z': {}}

    for i in range(len(x_bits)):
        circuit['z'][i] = XOr(XOr(x_bits[i], q_bits[i]), circuit["c"][i-1]).simplify()
        circuit['c'][i] = Or(And(x_bits[i], q_bits[i]), And(circuit["c"][i-1], XOr(x_bits[i], q_bits[i]))).simplify()

    return circuit