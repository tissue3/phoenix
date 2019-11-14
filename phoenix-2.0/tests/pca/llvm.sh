#!bash/bin
dname=${PWD##*/}
fname=${dname}-pthread
echo ${fname}.c
clang -pthread -S -emit-llvm -Xclang -I -disable-O0-optnone ${fname}.c
opt -load ~/Desktop/llvm_profiling/build/skeleton/libSkeletonPass.* -skeleton -S ${fname}.ll >  ${fname}2.ll
clang -pthread ${fname}2.ll
./a.out | tee llvm.profiling

