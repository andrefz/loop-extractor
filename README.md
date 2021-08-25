# `loop-extractor`

* WORK IN PROGRESS

**This software is a experimental LLVM Pass to collect information about loops.**

### Setting up

```
git clone https://gitlab.com/andrefz/loop-extractor
cd loop-extractor
git submodule update --init --recursive
mkdir build && cd build
CC=clang CXX=clang++ cmake .. && make
```

### Running

`opt -load=lib/libLoopFeatures.so -loop-features -disable-output <path/to/file.bc>`

### Computed features

- f01_loopWithWR: Loops with memory accesses (load/store).
- f02_loopWRarray: Loops with array read/writes.
- f03_loopWRarrayDisj: Loops with disjoint set of array reads/writes.
- f04_loopWRarraySame: Loops with array read/writes to same array.
- f05_isFlowDep: Number of carried dependencies in loops read-write.
- f06_isAntiDep: Number of carried dependencies in loops write-read.
- f07_isInputDep: Number of carried dependencies in loops read-read.
- f08_isOutputDep: Number of carried dependencies in loops write-write.
- f09_simpleLoop: Simple nested loops.
- f10_complexLoop: Complex nested loops.
- f11_loopRAW: Loops with data dependencies RAW.
- f12_loopWAR: Loops with data dependencies WAR.
- f13_loopWAW: Loops with data dependencies WAW.
- f14_loopRAR: Loops with data dependencies RAR.
- f15_indepLoopDep: Loops with dependencies between independent loops.
- f16_loopSelfDep: Loops with dependencies in the same statement (self).
- f17_numOfLoops: Total number of loops.

### License & copyright

Licensed under the [MIT License](LICENSE).
