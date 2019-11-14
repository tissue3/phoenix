#!/bin/bash
dname=${PWD##*/}
fname=${dname}-pthread
echo ${fname}
gcc -fprofile-arcs -pthread -ftest-coverage ${fname}.c
./a.out 
gcov -b -c -f ${fname}.c | tee gcov_pthread.profiling
