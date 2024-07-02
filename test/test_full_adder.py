from unified_planning.shortcuts import *
from pathlib import Path
from bitblast.helpers import full_adder_circuit
from bitblast.axioms_compilation import compact_full_adder_circuit
import numpy as np
import pytest

x = Fluent("x", RealType())
y = Fluent("y", RealType())
z = Fluent("z", RealType())

eff = Effect(condition=TRUE(), fluent=FluentExp(x), value=Int(5), kind=EffectKind.INCREASE)

def _build_ciurcuit(x, q, circuit, i):
    if i == -1:
        circuit["c"][i] = FALSE()
    else:
        _build_ciurcuit(x, q, circuit, i - 1)
        c_i = Or(
                And(x[i], q[i]),
                And(circuit["c"][i-1], XOr(x[i], q[i]))
            ).simplify()
        z_i = XOr(XOr(x[i], q[i]), circuit["c"][i-1]).simplify()
        circuit["c"][i] = c_i
        circuit["z"][i] = z_i

def build_ciurcuit(x: List[FNode], q: List[FNode]):
    circuit = {"c": {}, 
               "z": {}}
    _build_ciurcuit(x, q, circuit, len(x)-1)
    return circuit

runs = [0, 1, 2, 3, 4, 5]

@pytest.mark.parametrize("nbits", runs)
def test_full_adder(nbits):

    x_bits = [FluentExp(Fluent(f"{x.name}_{i}")) for i in range(nbits)]
    q_bits = [FluentExp(Fluent(f"q{0}_{i}")) for i in range(nbits)]

    expected_circuit = build_ciurcuit(x_bits, q_bits)

    assert full_adder_circuit(x_bits, q_bits) == expected_circuit
    

def test_full_adder_constant():
    nbits = 3
    x_bits = [FluentExp(Fluent(f"{x.name}_{i}")) for i in range(nbits)]
    q_bits = [TRUE() for _ in range(nbits)]

    expected_circuit = build_ciurcuit(x_bits, q_bits)

    assert full_adder_circuit(x_bits, q_bits) == expected_circuit


def test_full_adder_compact():
    nbits = 3
    x_bits = [FluentExp(Fluent(f"{x.name}_{i}")) for i in range(nbits)]
    q_bits = [TRUE() for _ in range(nbits)]

    c_bot = Fluent("c_-1", BoolType())
    c_0 = Fluent("c_0", BoolType())
    c_1 = Fluent("c_1", BoolType())
    c_2 = Fluent("c_2", BoolType())

    z_0 = Fluent("z_0", BoolType())
    z_1 = Fluent("z_1", BoolType())
    z_2 = Fluent("z_2", BoolType())

    compact_circuit = {
        'c': {c_bot: FALSE(), 
              c_0: Or(And(x_bits[0], q_bits[0]), And(c_bot, XOr(x_bits[0], q_bits[0]))).simplify(), 
              c_1: Or(And(x_bits[1], q_bits[1]), And(c_0, XOr(x_bits[1], q_bits[1]))).simplify(), 
              c_2: Or(And(x_bits[2], q_bits[2]), And(c_1, XOr(x_bits[2], q_bits[2]))).simplify()},
        'z': {z_0: XOr(XOr(x_bits[0], q_bits[0]), c_bot).simplify(),
              z_1: XOr(XOr(x_bits[1], q_bits[1]), c_0).simplify(),
              z_2: XOr(XOr(x_bits[2], q_bits[2]), c_1).simplify()
              }
    
    }
    assert compact_full_adder_circuit(x_bits, q_bits) == compact_circuit