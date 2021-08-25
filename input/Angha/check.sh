#!/bin/bash

for opt in -loop-simplify loop-rotate loop-unswitch loop-idiom loop-deletion loop-unroll loop-distribute loop-vectorize loop-load-elim loop-sink
do
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output extr_jcgimage.c_main.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output extr_jcgimage_main.rbc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output extr_jcgimage_main.ibc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output extr_union_vnops.c_unionfs_rename.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output extr_union_vnops_unionfs_rename.rbc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output extr_union_vnops_unionfs_rename.ibc
done