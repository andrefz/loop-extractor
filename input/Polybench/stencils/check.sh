#!/bin/bash

for opt in -loop-simplify loop-rotate loop-unswitch loop-idiom loop-deletion loop-unroll loop-distribute loop-vectorize loop-load-elim loop-sink
do
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output adi.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output fdtd-2d.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output fdtd-apml.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output jacobi-1d-imper.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output jacobi-2d-imper.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output seidel-2d.bc
done