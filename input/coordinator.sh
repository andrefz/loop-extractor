#!/bin/bash

for dir in Angha ASCI_Purple ASC_Sequoia CoyoteBench Polybench
do
	cd $dir && ./check.sh
	cd ../
done
