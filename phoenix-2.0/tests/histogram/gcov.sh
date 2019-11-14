#!/bin/bash
dname=${PWD##*/}
fname=${dname}-seq
echo ${fname}
gcc -fprofile-arcs -ftest-coverage ${fname}.c
./a.out ${dname}_datafiles/small.bmp 
gcov -b -c -f ${fname}.c | tee gcov.profiling
