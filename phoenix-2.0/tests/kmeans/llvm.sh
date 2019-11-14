#!bash/bin
dname=${PWD##*/}
fname=${dname}-seq
echo ${fname}
clang -S -emit-llvm -Xclang -disable-O0-optnone ${fname}.c
opt -load ~/Desktop/llvm_profiling/build/skeleton/libSkeletonPass.* -skeleton -S ${fname}.ll >  ${fname}2.ll
clang ${fname}2.ll
./a.out | tee llvm.profiling

