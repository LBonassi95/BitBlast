from bitblast.base_compilation import BaseCompiler
from bitblast.sequence_compilation import SequenceCompiler
from bitblast.axioms_compilation import AxiomsCompiler, ProblemAxiomWriter
from bitblast.unitary_compilation import UnitaryCompiler
from unified_planning.io.pddl_reader import PDDLReader
from unified_planning.io.pddl_writer import PDDLWriter
from pathlib import Path
from bitblast.normalization import normalize, add_metric
import click
from line_profiler import *

BASE = 0
SEQUENCE = 1
AXIOMS = 2
UNITARY = 3

compilations = {
    BASE: BaseCompiler,
    SEQUENCE: SequenceCompiler,
    AXIOMS: AxiomsCompiler,
    UNITARY: UnitaryCompiler

}
    
@click.command()
@click.argument('domain')
@click.argument('problem')
@click.argument('output')
@click.option('--bits', type=int, required=True)
@click.option('--base', 'mode', flag_value=BASE, default=True)
@click.option('--sequence', 'mode', flag_value=SEQUENCE)
@click.option('--axioms', 'mode', flag_value=AXIOMS)
@click.option('--unitary', 'mode', flag_value=UNITARY)
@profile
def main(domain, problem, output, bits, mode):
    reader = PDDLReader()
    problem = reader.parse_problem(domain, problem)
    problem, metric, metric_map = normalize(problem)

    compiler = compilations[mode](problem=problem, nbits=bits)
    # print ('DEBUG')
    if isinstance(compiler, SequenceCompiler):
        compiler.set_has_metric(metric is None)

    # TODO: create a superclass
    if isinstance(compiler, BaseCompiler) or isinstance(compiler, SequenceCompiler) or isinstance(compiler, UnitaryCompiler):
        new_problem = compiler.get_compiled_problem()
    else:
        assert isinstance(compiler, AxiomsCompiler)
        new_problem, axioms = compiler.get_compiled_problem()

    new_problem.name = "CompiledProblem"

    if metric is not None:
        add_metric(problem=new_problem, metric=metric, metric_map=metric_map)

    if mode == AXIOMS:
        ax_writer = ProblemAxiomWriter(new_problem, axioms)
        open(Path(output) / "compiled_dom.pddl", 'w').write(ax_writer.get_domain())
        open(Path(output) / "compiled_prob.pddl", 'w').write(ax_writer.get_problem())
    
    else:
        writer = PDDLWriter(new_problem, needs_requirements=False)
        writer.write_domain(Path(output) / 'compiled_dom.pddl')
        writer.write_problem(Path(output) / 'compiled_prob.pddl')


if __name__ == '__main__':
    main()