from bitblast.base_compilation import *
from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.io.pddl_writer import PDDLWriter
from pathlib import Path
from bitblast.normalization import normalize
import click

@click.command()
@click.argument('domain')
@click.argument('problem')
@click.argument('output')
def main(domain, problem, output):
    reader = PDDLReader()
    problem = reader.parse_problem(domain, problem)
    problem = normalize(problem)
    writer = PDDLWriter(problem, needs_requirements=False)
    writer.write_domain(Path(output) / 'normalized_dom.pddl')
    writer.write_problem(Path(output) / 'normalized_prob.pddl')


if __name__ == '__main__':
    main()