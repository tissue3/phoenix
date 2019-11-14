#!bash/bin
fname=${PWD##*/}-seq
cp ../../include/* .
cp ../../lib/* .
echo ${fname}.c
clang -S -emit-llvm -Xclang -I -disable-O0-optnone ${fname}.c
opt -load ~/Desktop/llvm_profiling/build/skeleton/libSkeletonPass.* -skeleton -S ${fname}.ll >  ${fname}2.ll
clang ${fname}2.ll
./a.out linear_regression_datafiles/key_file_50MB.txt | tee llvm.profiling

