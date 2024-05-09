from unified_planning.shortcuts import *
from unified_planning.io.pddl_writer import PDDLWriter
from ncocoa.grounding import ground
import click
from pathlib import Path

@click.command()
@click.argument('domain', type=click.Path(exists=True))
@click.argument('problem', type=click.Path(exists=True))
@click.argument('output', type=click.Path(exists=True))
def main(domain: str, problem: str, output: str):
    new_problem = ground(domain, problem)

    # COMPILE WITH COCOA
    # WIP
    ####################

    new_problem.name = "CompiledProblem"
    writer = PDDLWriter(new_problem, needs_requirements=False)
    writer.write_domain(Path(output) / 'compiled_dom.pddl')
    writer.write_problem(Path(output) / 'compiled_prob.pddl')


if __name__ == '__main__':
    main()