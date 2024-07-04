from bitblast.base_compilation import *
from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.io.pddl_writer import PDDLWriter
from pathlib import Path
from bitblast.normalization import normalize, add_metric
import click

@click.command()
@click.argument('domain')
@click.argument('problem')
@click.argument('output')
@click.option('--bits', type=int, required=True)
@click.option('--optimized', is_flag=True, default=False)
def main(domain, problem, output, bits, optimized):
    reader = PDDLReader()
    problem = reader.parse_problem(domain, problem)
    problem, metric, metric_map = normalize(problem)

    compiler = BaseCompiler(problem=problem, nbits=bits, optimized=optimized) 
    new_problem = compiler.get_compiled_problem()
    new_problem.name = "CompiledProblem"

    add_metric(problem=new_problem, metric=metric, metric_map=metric_map)

    writer = PDDLWriter(new_problem, needs_requirements=False)
    writer.write_domain(Path(output) / 'compiled_dom.pddl')
    writer.write_problem(Path(output) / 'compiled_prob.pddl')


if __name__ == '__main__':
    main()