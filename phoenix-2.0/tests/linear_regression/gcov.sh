#!/bin/bash
fname=${PWD##*/}-seq
echo ${fname}
gcc -fprofile-arcs -ftest-coverage ${fname}.c
gcov -b -c -f ${fname}.c | tee gcov.profiling
