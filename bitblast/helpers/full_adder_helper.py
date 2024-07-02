from unified_planning.shortcuts import *
from typing import List


def full_adder_circuit(x_bits: List[FNode], q_bits: List[FNode]):
    assert len(x_bits) == len(q_bits), "The number of bits in x and q must be the same"

    circuit = {'c': {-1: FALSE()}, 'z': {}}

    for i in range(len(x_bits)):
        circuit['z'][i] = XOr(XOr(x_bits[i], q_bits[i]), circuit["c"][i-1]).simplify()
        circuit['c'][i] = Or(And(x_bits[i], q_bits[i]), And(circuit["c"][i-1], XOr(x_bits[i], q_bits[i]))).simplify()

    return circuit

def carry_fl(i: int, label: str = None) -> Fluent:
    return Fluent(f'c_{i}', BoolType()) if label is None else Fluent(f'c_{label}_{i}', BoolType())

def sum_fl(i: int, label: str = None) -> Fluent:
    return Fluent(f'z_{i}', BoolType()) if label is None else Fluent(f'z_{label}_{i}', BoolType())

def compact_full_adder_circuit(x_bits: List[FNode], q_bits: List[FNode], label: str = None):
    assert len(x_bits) == len(q_bits), "The number of bits in x and q must be the same"
    circuit = {'c': {carry_fl(-1, label): FALSE()}, 'z': {}}

    for i in range(len(x_bits)):
        curr_carry = carry_fl(i, label)
        curr_sum = sum_fl(i, label)
        prev_carry = carry_fl(i-1, label)
        circuit['z'][curr_sum] = XOr(XOr(x_bits[i], q_bits[i]), prev_carry()).simplify()
        circuit['c'][curr_carry] = Or(And(x_bits[i], q_bits[i]), And(prev_carry(), XOr(x_bits[i], q_bits[i]))).simplify()

    return circuit