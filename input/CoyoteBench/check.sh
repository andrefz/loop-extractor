#!/bin/bash

for opt in -loop-simplify loop-rotate loop-unswitch loop-idiom loop-deletion loop-unroll loop-distribute loop-vectorize loop-load-elim loop-sink
do	
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output ~/dev/Benchmarks/Benchmarks/CoyoteBench/almabench/almabench.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output fftbench/fftbench.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output huffbench/huffbench.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output lpbench/lpbench.bc
done
