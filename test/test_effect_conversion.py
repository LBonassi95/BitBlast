from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.model import Problem
from unified_planning.shortcuts import *
from bitblast.utils import *
from pathlib import Path
from bitblast.full_adder import *
import numpy as np
import pytest

x = Fluent("x", RealType())
y = Fluent("y", RealType())
z = Fluent("z", RealType())

eff = Effect(condition=TRUE(), fluent=FluentExp(x), value=Int(5), kind=EffectKind.INCREASE)

def test_full_adder():

    bitblasted_var, bitblasted_const = get_bitblasted_variables({x}, {1}, 4)

    x_bits = bitblasted_var[x]
    q_bits = bitblasted_const[1]

    result = get_full_adder()