from bitblast.base_compilation import *
from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.io.pddl_writer import PDDLWriter
from pathlib import Path
from bitblast.normalization import normalize
import click

@click.command()
@click.argument('domain')
@click.argument('problem')
def main(domain, problem):
    reader = PDDLReader()
    problem = reader.parse_problem(domain, problem)
    problem, _, _ = normalize(problem, verbose=True)


if __name__ == '__main__':
    main()