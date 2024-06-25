from unified_planning.shortcuts import *
from pathlib import Path
from bitblast.helpers import *
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