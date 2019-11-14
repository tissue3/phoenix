#!bash/bin
dname=${PWD##*/}
fname=${dname}-seq
cp ../../include/* .
cp ../../lib/* .
echo ${fname}.c
clang -S -emit-llvm -Xclang -I -disable-O0-optnone ${fname}.c
opt -load ~/Desktop/llvm_profiling/build/skeleton/libSkeletonPass.* -skeleton -S ${fname}.ll >  ${fname}2.ll
clang ${fname}2.ll
echo "${fname}_datafiles/word_10MB.txt"
./a.out ${dname}_datafiles/word_10MB.txt | tee llvm.profiling

