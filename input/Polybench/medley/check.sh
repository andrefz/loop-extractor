#!/bin/bash

for opt in -loop-simplify loop-rotate loop-unswitch loop-idiom loop-deletion loop-unroll loop-distribute loop-vectorize loop-load-elim loop-sink
do
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output floyd-warshall.bc
	opt -load=../../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output reg_detect.bc
done