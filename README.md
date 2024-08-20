# BitBlast


## Benchmarks

We included all benchmarks we used in our experiments in the folder `benchmark/`.

Note that the domains MPrime, Sugar and Pathways have been grounded beforehand to deal with
Undefined numeric variables in the initial state, which are not supported by Blast.

Also, note that some domains such as HPower originally contain rational numbers.
Variables and constants of these domains have been rescaled to integers when necessary.


## Installation

We suggest to start with a new Python environment.
We tested the compiler with Python 3.10.

Install the necessary dependencies

```pip install unified-planning click sympy --no-cache-dir```


Switch to the "BitBlast" directory and install the library.
```
cd BitBlast
pip install .
```


## How to use Blast, Blast_x and OneHot

The main entrypoint of the compiler is ```bin/compile.py```. 
To run the basic compilation run:

```
python ./bin/compile.py DOMAIN PROBLEM OUTPUT --bits k
```
Where:

- `DOMAIN` is the path to the pddl domain file.
- `PROBLEM` is the path to the pddl problem file.
- `OUTPUT` is the path to the output folder (that must exist).
- `k` is the number of bits to be used by the compilation.

To select the other compilations, use one of the following options:
```
--unitary
--axioms
```

Specifically, `--unitary` runs One-Hot, while `--axioms` runs Blast_x.

## Examples

To compile the first instance of Counters using Blast with 8 bits run

```
python ./bin/compile.py benchmark/Counters/instances/domain.pddl benchmark/Counters/instances/pfile1.pddl . --bits 8
```

To compile the same instance with Blast_x run

```
python ./bin/compile.py benchmark/Counters/instances/domain.pddl benchmark/Counters/instances/pfile1.pddl . --bits 8 --axioms
```

To use OneHot with the numeric domain D = [-128, 127] run

```
python ./bin/compile.py benchmark/Counters/instances/domain.pddl benchmark/Counters/instances/pfile1.pddl . --bits 8 --unitary
```