# Makefile to simplify installation and setup

clean:
	dune clean

setup:
	opam switch create . --deps-only --with-doc --packages=ocaml-base-compiler
	eval $(opam env)

run:
	dune exec -- bin/main.exe -isrsc -mc -counter examples/papers/client_server_database.scm

install:
	opam install .
	eval $(opam env)