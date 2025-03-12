# ReSCu

ReSCu is a model-checking tool for systems of communicating automata,
relying on the properties of the class of RSC systems.
Theoretical background behind this tool may be found in [this paper](https://doi.org/10.1016/j.jlamp.2022.100843).

## Getting started

1. install `opam`
2. `git clone https://src.koda.cnrs.fr/loic.germerie.guizouarn/rescu` to retrieve the code
3. `cd rescu`
5. `make setup` to set up a local opam switch
6. `make install` to install ReSCu in the local switch
7. `rescu -isrsc -mc -counter examples/papers/client_server_database.scm` to confirm ReSCu is installed and working

If after completing all the steps, you get an error `rescu: command not found`, make sure your working directory is the directory
created at step 2., and run `eval $(opam env)` to set the `$PATH` variable according to opam's settings for your local switch.

## Detailed installation and compiling instructions

The quick start above explains how to install a local switch in the downloaded repository.
If you prefer to install ReSCu on a compatible global opam switch,
you may skip step 5 and run `make install` while the switch of your choice is active.
This method allows to use the command `rescu` from any directory,
and is quicker as it does not require to compile a new switch.
However, some issues may arise with the versions of the dependencies,
and cleaning up the installation might not be as straightforward as with the local switch.

To compile uncommitted local changes to the tool, use `dune build`, and run with `dune exec -- bin/main.exe [options] <scm_file>`.

If you want to compile ReSCu from its software heritage snapshot,
the targets `setup` and `install` of the Makefile will not be available.
You will need to create a switch manually, and to run `opam install . --deps-only` to install dependencies.
To compile and run, use the same commands as above: `dune build` and `dune exec -- bin/main.exe`.

To uninstall ReSCu, either remove the local switch with `opam remove .`, which will remove all the dependencies as well,
or run `opam remove rescu` if you installed it on a switch you want to keep.

## Using ReSCu

The synopsis for the command line utility is `rescu [options] <scm_file>` where `option` may be:

- `-isrsc` to check whether `scm_file` is RSC,
- `-mc` to perform model-checking, checks whether a configuration specified as bad in `scm_file` is reachable through an RSC execution,
- `-to_dot <filename>` to output a dot version of `scm_file` in the specified `filename`,
- `-bag` to ask the tool to consider all buffers as bags, that is to say messages may be received out of order (by default, all buffers are FIFO).

If none of the options `-isrsc`, `-mc`, or `-to_dot` is used, `rescu` will simply parse the provided SCM file,
and will not output anything unless there is a syntax error.

Systems to model-check are specified as `scm` files.
Use `man man/scm.5` for some information about their syntax.

When using the `-to_dot` command, a dot file representing the system will be written to `filename`.
To render the dot file, you will need to have [graphviz installed on your system](https://graphviz.org/download/).
Then, use `dot -T<type> -o<output_name> <filename>` where `type` might be `pdf`, `png`, `svg` and others.
Read to the manpage of `dot` for an exhaustive list.

## Directories
The source code for `rescu` is divided in the directories `bin/`
for the executable, and  `lib/` for the different libraries it uses.
The directory `lib/SCM` contains code we reused from the [McScM project](https://svn.labri.fr/repos/acs/www/redmine/projects/mcscm.1.html).
The OCaml documentation of the libraries is available [here](https://i3s.unice.fr/~lgermerie/rescu/rescu/index.html).

The directory `examples/` gathers examples of systems of communicating automata, coming from various sources.
The examples in `examples/mcscm/` come from the [McScM project](https://svn.labri.fr/repos/acs/www/redmine/projects/mcscm.1.html). The ones in `examples/kmc/` were ported from the tool [KMC](https://archive.softwareheritage.org/swh:1:dir:83ab4eefd26fe9073b4594dc7930d4442f2d67de).
We also ported examples from [STABC](https://convecs.inria.fr/people/Gwen.Salaun/Tools/index.html).
As those examples did not specify the buffers in which messages are sent, we ported them assuming both
a mailbox architecture (in `examples/stabc`) and a peer-to-peer architecture (in `examples/stabc-p2p`).
Examples in `examples/papers` are `scm` implementations of examples from our papers.
