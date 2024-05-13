from unified_planning.io.pddl_writer import PDDLWriter
from ncocoa.grounding import ground
import click
from pathlib import Path
from unified_planning.model import Problem, Fluent
from unified_planning.model.types import *
from unified_planning.shortcuts import *

@click.command()
@click.argument('domain', type=click.Path(exists=True))
@click.argument('problem', type=click.Path(exists=True))
@click.argument('output', type=click.Path(exists=True))


def main(domain: str, problem: str, output: str):
    
    new_problem = ground(domain, problem)
    num_problem = compile_strips2num(new_problem)

    num_problem.name = "CompiledProblem"
    writer = PDDLWriter(num_problem, needs_requirements=False)
    writer.write_domain('{}/{}'.format(output, 'compiled_dom.pddl'))
    writer.write_problem('{}/{}'.format(output, 'compiled_prob.pddl'))


def compile_strips2num(strips_problem: Problem):
    num_problem = Problem()
    NUM_ATOMS = {}
    add_numeric_variables(num_problem, strips_problem, NUM_ATOMS)
    convert_initial_state(num_problem, strips_problem, NUM_ATOMS)
    generate_goal_state(num_problem, strips_problem, NUM_ATOMS)
    generate_compiled_actions(num_problem, strips_problem, NUM_ATOMS)
    return num_problem


def add_numeric_variables(num_problem: Problem, strips_problem: Problem, NUM_ATOMS: Dict):
    for atom in strips_problem.fluents:
        num_atom = Fluent('{}_{}'.format(atom.name, 'x'), RealType(0, 1), atom.signature, atom.environment)
        NUM_ATOMS[atom] = num_atom
        num_problem.add_fluent(num_atom)


def convert_initial_state(num_problem: Problem, strips_problem: Problem, NUM_ATOMS: Dict):
    for atom, value in strips_problem.initial_values.items():
        num_atom = NUM_ATOMS[atom.fluent()]
        pars = atom.args
        num_problem.set_initial_value(num_atom(*pars), 1 if value.is_true() else 0)


def generate_goal_state(num_problem: Problem, strips_problem: Problem, NUM_ATOMS: Dict):

    for g in strips_problem.goals:
        num_problem.add_goal(num_function(g, NUM_ATOMS))


def num_function(g: FNode, NUM_ATOMS: Dict):

    if (g.is_fluent_exp()):
        num_atom = NUM_ATOMS[g.fluent()]
        pars = g.args
        return Equals(num_atom(*pars), 1)

    if (g.is_and()):
        conjs = g.args
        num_conjs = list()
        for conj in conjs:
            num_conjs.append(num_function(conj, NUM_ATOMS))
        return And(num_conjs)                

    if (g.is_not()):
        inner_g = g.args

        # genera tupla, boh, patch
        if type(inner_g) == tuple:
            assert len(inner_g) == 1
            inner_g = inner_g[0]
        num_atom = NUM_ATOMS[inner_g.fluent()]
        pars = inner_g.args
        return Equals(num_atom(*pars), 0)
        # return Minus(1, num_function(inner_g, NUM_ATOMS))

    else:
        print ('TODO')
        print (type(g))
        print (g.__str__())
        exit(1)


def generate_compiled_actions(num_problem: Problem, strips_problem: Problem, NUM_ATOMS: Dict):

    for a in strips_problem.actions:
        strips_precs = a.preconditions
        num_precs    = from_strips2num_prec(strips_precs, NUM_ATOMS)
        strips_effs  = a.effects
        num_effs     = from_strips2num_eff(strips_effs, NUM_ATOMS)
        num_action   = InstantaneousAction(a.name)
        [num_action.add_precondition(p) for p in num_precs]

        for (atom, value) in num_effs:
            num_action.add_effect(atom, value)


        num_problem.add_action(num_action)


def from_strips2num_eff(strips_effs, NUM_ATOMS: Dict):
    num_effs = list()
    for e in strips_effs:
        num_e = numify_effect(e, NUM_ATOMS)
        if num_e is not None:
            num_effs.append(num_e)
    return num_effs


def numify_effect(e: Effect, NUM_ATOMS: Dict):

    atom     = e._fluent
    value    = e.value
    num_atom = NUM_ATOMS[atom.fluent()]
    pars     = atom.args
    num_atom = num_atom(*pars)

    pars     = atom.args
    if e.is_conditional():
        cond_e        = e.condition
        num_atom_cond = NUM_ATOMS[cond_e.fluent()]
        pars_cond     = cond_e.args
        num_atom_cond = num_atom_cond(*pars_cond)

        if value.is_true():
            return (num_atom, 1 - Times(Minus(1, num_atom), Minus(1, num_atom_cond)))
        else:
            return (num_atom, Times(Minus(1, num_atom_cond), num_atom))
    else:
        return (num_atom, 1 if value.is_true() else 0)



def from_strips2num_prec(strips_precs, NUM_ATOMS: Dict):
    num_precs = list()
    for p in strips_precs:
        num_precs.append(num_function(p, NUM_ATOMS))
    return num_precs

if __name__ == '__main__':
    main()