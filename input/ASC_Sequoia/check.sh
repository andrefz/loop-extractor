#!/bin/bash

for opt in -loop-simplify loop-rotate loop-unswitch loop-idiom loop-deletion loop-unroll loop-distribute loop-vectorize loop-load-elim loop-sink
do
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output AMGmk/csr_matrix.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output AMGmk/csr_matvec.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output AMGmk/hypre_error.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output AMGmk/hypre_memory.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output AMGmk/laplace.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output AMGmk/main.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output AMGmk/relax.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output AMGmk/vector.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output CrystalMk/Crystal_Cholesky.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output CrystalMk/Crystal_div.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output CrystalMk/Crystal_pow.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output CrystalMk/init.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output CrystalMk/main.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output CrystalMk/SPEdriver.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output IRSmk/main.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output IRSmk/rmatmult3.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output IRSmk/utility.bc
done
