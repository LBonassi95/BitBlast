# from unified_planning.io.pddl_reader import PDDLReader
# from unified_planning.model import Problem
# from unified_planning.shortcuts import *
# from bitblast.helpers import *
# from pathlib import Path
# import os
# import numpy as np
# from unified_planning.io.pddl_writer import PDDLWriter
# from bitblast.base_compilation import BaseCompiler
# from bitblast.normalization import *

# Obj = UserType("object")

# v1 = Object("v1", Obj)
# v2 = Object("v2", Obj)

# x_fluent = Fluent("x", RealType(), v = Obj)
# b_fluent = Fluent("b", BoolType(), v = Obj)

# x_v1_fluent = Fluent("x--v1", RealType())
# x_v2_fluent = Fluent("x--v2", RealType())
# b_v1_fluent = Fluent("b--v1", BoolType())
# b_v2_fluent = Fluent("b--v2", BoolType())

# out_path = Path(__file__).parent / "pddl" / "simple" 
# def test_ground_fluents():
#     domain_path = Path(__file__).parent / "pddl" / "simple_fo" / "domain.pddl"
#     problem_path = Path(__file__).parent / "pddl" / "simple_fo" / "problem.pddl"
#     reader = PDDLReader()
#     problem = reader.parse_problem(domain_path, problem_path)
    
#     ground_fluents, ground_fluents_map = get_ground_fluents(problem)

#     assert x_v1_fluent in ground_fluents
#     assert x_v2_fluent in ground_fluents
#     assert b_v1_fluent in ground_fluents
#     assert b_v2_fluent in ground_fluents
#     assert len(ground_fluents) == 4
    
#     expected_map = {
#         x_fluent(v1): FluentExp(x_v1_fluent),
#         x_fluent(v2): FluentExp(x_v2_fluent),
#         b_fluent(v1): FluentExp(b_v1_fluent),
#         b_fluent(v2): FluentExp(b_v2_fluent)
#     }

#     assert ground_fluents_map == expected_map


# def test_normalization():
#     domain_path = Path(__file__).parent / "pddl" / "simple_fo" / "domain.pddl"
#     problem_path = Path(__file__).parent / "pddl" / "simple_fo" / "problem.pddl"
#     reader = PDDLReader()
#     problem = reader.parse_problem(domain_path, problem_path)
    
#     normalized_problem = normalize(problem)

