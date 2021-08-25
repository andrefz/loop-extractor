#!/bin/bash

for opt in -loop-simplify loop-rotate loop-unswitch loop-idiom loop-deletion loop-unroll loop-distribute loop-vectorize loop-load-elim loop-sink
do
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output box_algebra.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output box_alloc.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output box.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output box_neighbors.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output coarsen.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output communication.bc 
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output communication_info.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output computation.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output cyclic_reduction.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output general.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output grow.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output HYPRE_pcg.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output HYPRE_struct_grid.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output HYPRE_struct_matrix.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output HYPRE_struct_pcg.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output HYPRE_struct_smg.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output HYPRE_struct_stencil.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output HYPRE_struct_vector.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output memory.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output mpistubs.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output pcg.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output pcg_struct.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output point_relax.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output project.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output random.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output semi_interp.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output semi_restrict.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg2000.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg2_setup_rap.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg3_setup_rap.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg_axpy.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg_relax.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg_residual.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg_setup.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg_setup_interp.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg_setup_rap.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg_setup_restrict.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output smg_solve.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_axpy.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_copy.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_grid.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_innerprod.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_io.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_matrix.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_matrix_mask.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_matvec.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_scale.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_stencil.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output struct_vector.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output threading.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output timer.bc
	opt -load=../../build/lib/libLoopExtractorPass.so -$opt -loop-features -disable-output timing.bc
done
