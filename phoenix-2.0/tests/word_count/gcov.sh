#!/bin/bash
dname=${PWD##*/}
fname=${dname}-seq
echo ${fname}
gcc -fprofile-arcs -ftest-coverage ${fname}.c
./a.out ${dname}_datafiles/word_10MB.txt 
gcov -b -c -f ${fname}.c | tee gcov.profiling
