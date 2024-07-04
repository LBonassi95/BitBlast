from bitblast.axioms_compilation import *
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
def main(domain, problem, output, bits):
    reader = PDDLReader()
    problem = reader.parse_problem(domain, problem)
    problem, metric, metric_map = normalize(problem)

    compiler = AxiomsCompiler(problem=problem, nbits=bits) 
    new_problem, axioms = compiler.get_compiled_problem()
    new_problem.name = "CompiledProblem"

    add_metric(problem=new_problem, metric=metric, metric_map=metric_map)
    
    ax_writer = ProblemAxiomWriter(new_problem, axioms)

    open(Path(output) / "compiled_dom.pddl", 'w').write(ax_writer.get_domain())
    open(Path(output) / "compiled_prob.pddl", 'w').write(ax_writer.get_problem())


if __name__ == '__main__':
    main()