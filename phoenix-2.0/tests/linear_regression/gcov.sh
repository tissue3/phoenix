#!/bin/bash
fname=${PWD##*/}-seq
echo ${fname}
gcc -fprofile-arcs -ftest-coverage ${fname}.c
./a.out linear_regression_datafiles/key_file_50MB.txt 
gcov -b -c -f ${fname}.c | tee gcov.profiling
