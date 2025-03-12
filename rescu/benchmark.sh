#!/bin/bash

cmd_line="rescu -mc"	# By default, performs model-checking
nb_exp=3
example_dir="examples/benchmark"
list_examples=$(ls -r "$example_dir")

while getopts t:e:l:n:h flag
do
    case "${flag}" in
		t) cmd_line=${OPTARG};;
        e) example_dir="${OPTARG}"; list_examples=$(ls -r "$example_dir");;
        l) list_examples=${OPTARG};; # check if you want a particular list or not
        n) nb_exp=${OPTARG};;
		h) echo "Usage: benchmark.sh [-t tool_cmdline] [-e examples_directory] [-l examples_list] [-n number_of_experiments] [-h]"; exit 0;;
		*) echo "Wrong arguments."; exit 1;;
    esac
done

for e in $list_examples; do
	echo "$e"

	total_time=0

	for i in $(seq 1 "$nb_exp")
	do
		echo -n "test $i: " 1>&2
		t_0=$(date +%s%N)
		$cmd_line "$example_dir/$e" 1>&2
		t_1=$(date +%s%N)
		dt=$((t_1 - t_0))

		total_time=$((total_time + dt))
	done

	average=$((total_time / nb_exp))
	echo "average time: $((average / 1000000))ms"
done
