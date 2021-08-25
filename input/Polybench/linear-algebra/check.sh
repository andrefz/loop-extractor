#!/bin/bash

for opt in -loop-simplify loop-rotate loop-unswitch loop-idiom loop-deletion loop-unroll loop-distribute loop-vectorize loop-load-elim loop-sink
do
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output 2mm.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output 3mm.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output atax.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output bicg.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output cholesky.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output doitgen.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output gemm.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output gemver.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output gesummv.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output mvt.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output polybench.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output symm.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output syr2k.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output syrk.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output trisolv.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output trmm.bc
done