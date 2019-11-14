; ModuleID = 'word_count-seq.ll'
source_filename = "word_count-seq.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wc_count_t = type { i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.wc_data_t = type { i64, i8* }
%struct.map_args_t = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@words = common dso_local global %struct.wc_count_t* null, align 8
@length = common dso_local global i32 0, align 4
@use_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"word_count-seq.c\00", align 1
@__PRETTY_FUNCTION__.wordcount_getword = private unnamed_addr constant [31 x i8] c"void wordcount_getword(void *)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"USAGE: %s <filename> [Top # of results to display]\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Wordcount: Running...\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Error at line\0A\09(fd = open(fname, O_RDONLY)) < 0\0ASystem Msg\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"((fd = open(fname, 00)) < 0) == 0\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Error at line\0A\09fstat(fd, &finfo) < 0\0ASystem Msg\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"(fstat(fd, &finfo) < 0) == 0\00", align 1
@.str.9 = private unnamed_addr constant [115 x i8] c"Error at line\0A\09(fdata = mmap(0, finfo.st_size + 1, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == NULL\0ASystem Msg\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"((fdata = mmap(0, finfo.st_size + 1, 0x1 | 0x2, 0x02, fd, 0)) == ((void*)0)) == 0\00", align 1
@.str.11 = private unnamed_addr constant [107 x i8] c"Error at line\0A\09(disp_num = (disp_num_str == NULL) ? DEFAULT_DISP_NUM : atoi(disp_num_str)) <= 0\0ASystem Msg\00", align 1
@.str.12 = private unnamed_addr constant [80 x i8] c"((disp_num = (disp_num_str == ((void*)0)) ? 10 : atoi(disp_num_str)) <= 0) == 0\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Wordcount Serial: Running\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"Use len is %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"Error at line\0A\09munmap(fdata, finfo.st_size + 1) < 0\0ASystem Msg\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"(munmap(fdata, finfo.st_size + 1) < 0) == 0\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Error at line\0A\09close(fd) < 0\0ASystem Msg\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"(close(fd) < 0) == 0\00", align 1
@llvmInstrAtomicCounter = common global i64 0
@basicBlockAtomicCounter = common global i64 0
@mulAtomicCounter = common global i64 0
@memOpAtomicCounter = common global i64 0
@branchAtomicCounter = common global i64 0
@wordcount_cmp.glob = common global i64 0
@wordcount_splitter.glob = common global i64 0
@calloc.glob = common global i64 0
@malloc.glob = common global i64 0
@wordcount_getword.glob = common global i64 0
@free.glob = common global i64 0
@__assert_fail.glob = common global i64 0
@toupper.glob = common global i64 0
@wordcount_addword.glob = common global i64 0
@dobsearch.glob = common global i64 0
@strcmp.glob = common global i64 0
@llvm.memmove.p0i8.p0i8.i64.glob = common global i64 0
@realloc.glob = common global i64 0
@main.glob = common global i64 0
@printf.glob = common global i64 0
@exit.glob = common global i64 0
@open.glob = common global i64 0
@perror.glob = common global i64 0
@fstat.glob = common global i64 0
@mmap.glob = common global i64 0
@atoi.glob = common global i64 0
@qsort.glob = common global i64 0
@fprintf.glob = common global i64 0
@munmap.glob = common global i64 0
@close.glob = common global i64 0
@formatLong = private unnamed_addr constant [31 x i8] c"\0A\0AllvmInstrAtomicCounter: %ld\0A\00", align 1
@formatLong.1 = private unnamed_addr constant [30 x i8] c"basicBlockAtomicCounter: %ld\0A\00", align 1
@formatLong.2 = private unnamed_addr constant [23 x i8] c"mulAtomicCounter: %ld\0A\00", align 1
@formatLong.3 = private unnamed_addr constant [25 x i8] c"memOpAtomicCounter: %ld\0A\00", align 1
@formatLong.4 = private unnamed_addr constant [26 x i8] c"branchAtomicCounter: %ld\0A\00", align 1
@formatLong.5 = private unnamed_addr constant [20 x i8] c"wordcount_cmp: %ld\0A\00", align 1
@formatLong.6 = private unnamed_addr constant [25 x i8] c"wordcount_splitter: %ld\0A\00", align 1
@formatLong.7 = private unnamed_addr constant [13 x i8] c"calloc: %ld\0A\00", align 1
@formatLong.8 = private unnamed_addr constant [13 x i8] c"malloc: %ld\0A\00", align 1
@formatLong.9 = private unnamed_addr constant [24 x i8] c"wordcount_getword: %ld\0A\00", align 1
@formatLong.10 = private unnamed_addr constant [11 x i8] c"free: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [20 x i8] c"__assert_fail: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [14 x i8] c"toupper: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [24 x i8] c"wordcount_addword: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [16 x i8] c"dobsearch: %ld\0A\00", align 1
@formatLong.15 = private unnamed_addr constant [13 x i8] c"strcmp: %ld\0A\00", align 1
@formatLong.16 = private unnamed_addr constant [33 x i8] c"llvm.memmove.p0i8.p0i8.i64: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [14 x i8] c"realloc: %ld\0A\00", align 1
@formatLong.18 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.19 = private unnamed_addr constant [13 x i8] c"printf: %ld\0A\00", align 1
@formatLong.20 = private unnamed_addr constant [11 x i8] c"exit: %ld\0A\00", align 1
@formatLong.21 = private unnamed_addr constant [11 x i8] c"open: %ld\0A\00", align 1
@formatLong.22 = private unnamed_addr constant [13 x i8] c"perror: %ld\0A\00", align 1
@formatLong.23 = private unnamed_addr constant [12 x i8] c"fstat: %ld\0A\00", align 1
@formatLong.24 = private unnamed_addr constant [11 x i8] c"mmap: %ld\0A\00", align 1
@formatLong.25 = private unnamed_addr constant [11 x i8] c"atoi: %ld\0A\00", align 1
@formatLong.26 = private unnamed_addr constant [12 x i8] c"qsort: %ld\0A\00", align 1
@formatLong.27 = private unnamed_addr constant [14 x i8] c"fprintf: %ld\0A\00", align 1
@formatLong.28 = private unnamed_addr constant [13 x i8] c"munmap: %ld\0A\00", align 1
@formatLong.29 = private unnamed_addr constant [12 x i8] c"close: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wordcount_cmp(i8*, i8*) #0 {
  %3 = atomicrmw add i64* @wordcount_cmp.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wc_count_t*, align 8
  %8 = alloca %struct.wc_count_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.wc_count_t*
  store %struct.wc_count_t* %12, %struct.wc_count_t** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.wc_count_t*
  store %struct.wc_count_t* %14, %struct.wc_count_t** %8, align 8
  %15 = load %struct.wc_count_t*, %struct.wc_count_t** %7, align 8
  %16 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.wc_count_t*, %struct.wc_count_t** %8, align 8
  %19 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  %24 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %25 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 28 seq_cst
  %26 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %27 = atomicrmw add i64* @memOpAtomicCounter, i64 14 seq_cst
  br i1 %23, label %28, label %33

28:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %31 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %51

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp sgt i32 %34, %35
  %37 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %39 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %40 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %36, label %41, label %46

41:                                               ; preds = %33
  store i32 -1, i32* %4, align 4
  %42 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %44 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %51

46:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  %47 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %49 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %51

51:                                               ; preds = %46, %41, %28
  %52 = load i32, i32* %4, align 4
  %53 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %55 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wordcount_splitter(i8*) #0 {
  %2 = atomicrmw add i64* @wordcount_splitter.glob, i64 1 seq_cst
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wc_data_t*, align 8
  %6 = alloca %struct.map_args_t*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.wc_data_t*
  store %struct.wc_data_t* %8, %struct.wc_data_t** %5, align 8
  %9 = call noalias i8* @calloc(i64 2000, i64 16) #6
  %10 = bitcast i8* %9 to %struct.wc_count_t*
  store %struct.wc_count_t* %10, %struct.wc_count_t** @words, align 8
  store i32 2000, i32* @length, align 4
  store i32 0, i32* @use_len, align 4
  store i32 0, i32* %4, align 4
  %11 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %12 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %13 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 2000
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %17, label %22, label %39

22:                                               ; preds = %15
  %23 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %23, i64 %25
  %27 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  %28 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %30 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %31 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %37 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %15

39:                                               ; preds = %15
  %40 = call noalias i8* @malloc(i64 16) #6
  %41 = bitcast i8* %40 to %struct.map_args_t*
  store %struct.map_args_t* %41, %struct.map_args_t** %6, align 8
  %42 = load %struct.wc_data_t*, %struct.wc_data_t** %5, align 8
  %43 = getelementptr inbounds %struct.wc_data_t, %struct.wc_data_t* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.map_args_t*, %struct.map_args_t** %6, align 8
  %46 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load %struct.wc_data_t*, %struct.wc_data_t** %5, align 8
  %48 = getelementptr inbounds %struct.wc_data_t, %struct.wc_data_t* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.map_args_t*, %struct.map_args_t** %6, align 8
  %51 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.map_args_t*, %struct.map_args_t** %6, align 8
  %53 = bitcast %struct.map_args_t* %52 to i8*
  call void @wordcount_getword(i8* %53)
  %54 = load %struct.map_args_t*, %struct.map_args_t** %6, align 8
  %55 = bitcast %struct.map_args_t* %54 to i8*
  call void @free(i8* %55) #6
  %56 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %57 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 22 seq_cst
  %58 = atomicrmw add i64* @memOpAtomicCounter, i64 11 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wordcount_getword(i8*) #0 {
  %2 = atomicrmw add i64* @wordcount_getword.glob, i64 1 seq_cst
  %3 = alloca i8*, align 8
  %4 = alloca %struct.map_args_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.map_args_t*
  store %struct.map_args_t* %11, %struct.map_args_t** %4, align 8
  store i32 1, i32* %7, align 4
  %12 = load %struct.map_args_t*, %struct.map_args_t** %4, align 8
  %13 = icmp ne %struct.map_args_t* %12, null
  %14 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %15 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %16 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %13, label %18, label %22

18:                                               ; preds = %1
  %19 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %25

22:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.wordcount_getword, i64 0, i64 0)) #7
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

25:                                               ; preds = %18
  %26 = load %struct.map_args_t*, %struct.map_args_t** %4, align 8
  %27 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  %32 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %33 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %34 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %35 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br i1 %31, label %36, label %40

36:                                               ; preds = %25
  %37 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %43

40:                                               ; preds = %25
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.wordcount_getword, i64 0, i64 0)) #7
  %41 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

43:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %44 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %46 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %48

48:                                               ; preds = %167, %43
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.map_args_t*, %struct.map_args_t** %4, align 8
  %52 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %50, %53
  %55 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %57 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %58 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %54, label %59, label %174

59:                                               ; preds = %48
  %60 = load i8*, i8** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 @toupper(i32 %65) #8
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %6, align 1
  %68 = load i32, i32* %7, align 4
  %69 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  switch i32 %68, label %125 [
    i32 0, label %72
    i32 1, label %129
  ]

72:                                               ; preds = %59
  %73 = load i8, i8* %6, align 1
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 %73, i8* %77, align 1
  %78 = load i8, i8* %6, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp slt i32 %79, 65
  %81 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %83 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %80, label %93, label %85

85:                                               ; preds = %72
  %86 = load i8, i8* %6, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp sgt i32 %87, 90
  %89 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %90 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %91 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %88, label %93, label %121

93:                                               ; preds = %85, %72
  %94 = load i8, i8* %6, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 39
  %97 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %98 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %99 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %100 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %96, label %101, label %121

101:                                              ; preds = %93
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %5, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8*, i8** %5, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = add nsw i64 %114, 1
  %116 = trunc i64 %115 to i32
  call void @wordcount_addword(i8* %106, i32 %116)
  store i32 1, i32* %7, align 4
  %117 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %118 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %119 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %120 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %121

121:                                              ; preds = %101, %93, %85
  %122 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %123 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %163

125:                                              ; preds = %59
  %126 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %127 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %128 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %129

129:                                              ; preds = %125, %59
  %130 = load i8, i8* %6, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sge i32 %131, 65
  %133 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %134 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %135 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %136 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %132, label %137, label %159

137:                                              ; preds = %129
  %138 = load i8, i8* %6, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp sle i32 %139, 90
  %141 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %142 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %143 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %144 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %140, label %145, label %159

145:                                              ; preds = %137
  %146 = load i8*, i8** %9, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  store i8* %149, i8** %5, align 8
  %150 = load i8, i8* %6, align 1
  %151 = load i8*, i8** %9, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  store i8 %150, i8* %154, align 1
  store i32 0, i32* %7, align 4
  %155 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %156 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %157 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %158 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %159

159:                                              ; preds = %145, %137, %129
  %160 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %161 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %162 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %163

163:                                              ; preds = %159, %121
  %164 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %165 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %166 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  %170 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %171 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %172 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %173 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %48

174:                                              ; preds = %48
  %175 = load i32, i32* %7, align 4
  %176 = icmp eq i32 %175, 0
  %177 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %178 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %179 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %180 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %176, label %181, label %202

181:                                              ; preds = %174
  %182 = load i8*, i8** %9, align 8
  %183 = load %struct.map_args_t*, %struct.map_args_t** %4, align 8
  %184 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  store i8 0, i8* %186, align 1
  %187 = load i8*, i8** %5, align 8
  %188 = load i8*, i8** %9, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8*, i8** %5, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = add nsw i64 %195, 1
  %197 = trunc i64 %196 to i32
  call void @wordcount_addword(i8* %187, i32 %197)
  %198 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %199 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %200 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %201 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %202

202:                                              ; preds = %181, %174
  %203 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %204 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wordcount_addword(i8*, i32) #0 {
  %3 = atomicrmw add i64* @wordcount_addword.glob, i64 1 seq_cst
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @dobsearch(i8* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @use_len, align 4
  %11 = icmp sge i32 %9, %10
  %12 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %14 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %15 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br i1 %11, label %16, label %34

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %19 = load i32, i32* @use_len, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %18, i64 %20
  %22 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %21, i32 0, i32 0
  store i8* %17, i8** %22, align 8
  %23 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %24 = load i32, i32* @use_len, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %23, i64 %25
  %27 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* @use_len, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @use_len, align 4
  %30 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %31 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 17 seq_cst
  %32 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %33 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br label %133

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  %37 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %39 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %40 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %36, label %41, label %64

41:                                               ; preds = %34
  %42 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %43 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %42, i64 1
  %44 = bitcast %struct.wc_count_t* %43 to i8*
  %45 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %46 = bitcast %struct.wc_count_t* %45 to i8*
  %47 = load i32, i32* @use_len, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 16
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %46, i64 %49, i1 false)
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %52 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %51, i64 0
  %53 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %55 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %54, i64 0
  %56 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %55, i32 0, i32 1
  store i32 1, i32* %56, align 8
  %57 = load i32, i32* @use_len, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* @use_len, align 4
  %59 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 22 seq_cst
  %61 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @memOpAtomicCounter, i64 10 seq_cst
  br label %129

64:                                               ; preds = %34
  %65 = load i8*, i8** %4, align 8
  %66 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %66, i64 %68
  %70 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @strcmp(i8* %65, i8* %71) #8
  %73 = icmp eq i32 %72, 0
  %74 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %76 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %77 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %73, label %78, label %90

78:                                               ; preds = %64
  %79 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %79, i64 %81
  %83 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %87 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %88 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %125

90:                                               ; preds = %64
  %91 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %91, i64 %94
  %96 = bitcast %struct.wc_count_t* %95 to i8*
  %97 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %97, i64 %99
  %101 = bitcast %struct.wc_count_t* %100 to i8*
  %102 = load i32, i32* @use_len, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 16
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %96, i8* align 8 %101, i64 %106, i1 false)
  %107 = load i8*, i8** %4, align 8
  %108 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %108, i64 %110
  %112 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %111, i32 0, i32 0
  store i8* %107, i8** %112, align 8
  %113 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %113, i64 %115
  %117 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %116, i32 0, i32 1
  store i32 1, i32* %117, align 8
  %118 = load i32, i32* @use_len, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* @use_len, align 4
  %120 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %121 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 34 seq_cst
  %122 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %123 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @memOpAtomicCounter, i64 15 seq_cst
  br label %125

125:                                              ; preds = %90, %78
  %126 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %127 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %128 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %129

129:                                              ; preds = %125, %41
  %130 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %131 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %132 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %133

133:                                              ; preds = %129, %16
  %134 = load i32, i32* @use_len, align 4
  %135 = load i32, i32* @length, align 4
  %136 = icmp eq i32 %134, %135
  %137 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %138 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %139 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %140 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %136, label %141, label %156

141:                                              ; preds = %133
  %142 = load i32, i32* @length, align 4
  %143 = mul nsw i32 %142, 2
  store i32 %143, i32* @length, align 4
  %144 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %145 = bitcast %struct.wc_count_t* %144 to i8*
  %146 = load i32, i32* @length, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 16
  %149 = call i8* @realloc(i8* %145, i64 %148) #6
  %150 = bitcast i8* %149 to %struct.wc_count_t*
  store %struct.wc_count_t* %150, %struct.wc_count_t** @words, align 8
  %151 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %152 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %153 = atomicrmw add i64* @mulAtomicCounter, i64 2 seq_cst
  %154 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %155 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %156

156:                                              ; preds = %141, %133
  %157 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %158 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dobsearch(i8*) #0 {
  %2 = atomicrmw add i64* @dobsearch.glob, i64 1 seq_cst
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  %9 = load i32, i32* @use_len, align 4
  store i32 %9, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %10 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %12 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %14

14:                                               ; preds = %71, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %15, %16
  %18 = icmp sgt i32 %17, 1
  %19 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %21 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %18, label %23, label %75

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = sdiv i32 %26, 2
  store i32 %27, i32* %8, align 4
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %29, i64 %31
  %33 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %28, i8* %34) #8
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 0
  %38 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 17 seq_cst
  %40 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br i1 %37, label %42, label %48

42:                                               ; preds = %23
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %3, align 4
  %44 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %46 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %81

48:                                               ; preds = %23
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 0
  %51 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %53 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %50, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %6, align 4
  %57 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %58 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %59 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %67

61:                                               ; preds = %48
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %7, align 4
  %63 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %65 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %66 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %67

67:                                               ; preds = %61, %55
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %71

71:                                               ; preds = %67
  %72 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %14

75:                                               ; preds = %14
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  %77 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %79 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %81

81:                                               ; preds = %75, %42
  %82 = load i32, i32* %3, align 4
  %83 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %85 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i32 %82
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.stat, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wc_data_t, align 8
  %15 = alloca %struct.wc_count_t*, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  %20 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 21 seq_cst
  %22 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %19, label %24, label %32

24:                                               ; preds = %2
  %25 = load i8**, i8*** %6, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  call void @exit(i32 1) #7
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %31 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  unreachable

32:                                               ; preds = %2
  %33 = load i8**, i8*** %6, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %12, align 8
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 2
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %13, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 (i8*, i32, ...) @open(i8* %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  %43 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %45 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br i1 %42, label %47, label %68

47:                                               ; preds = %32
  call void @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 (i8*, i32, ...) @open(i8* %48, i32 0)
  store i32 %49, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = icmp eq i32 %51, 0
  %53 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %55 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %52, label %57, label %61

57:                                               ; preds = %47
  %58 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %59 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %64

61:                                               ; preds = %47
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %62 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

64:                                               ; preds = %57
  %65 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %66 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %67 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %68

68:                                               ; preds = %64, %32
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @fstat(i32 %69, %struct.stat* %11) #6
  %71 = icmp slt i32 %70, 0
  %72 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %74 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %71, label %76, label %97

76:                                               ; preds = %68
  call void @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @fstat(i32 %77, %struct.stat* %11) #6
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = icmp eq i32 %80, 0
  %82 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %84 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %85 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %81, label %86, label %90

86:                                               ; preds = %76
  %87 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %88 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %93

90:                                               ; preds = %76
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 252, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %91 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

93:                                               ; preds = %86
  %94 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %95 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %96 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %97

97:                                               ; preds = %93, %68
  %98 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  %101 = load i32, i32* %8, align 4
  %102 = call i8* @mmap(i8* null, i64 %100, i32 3, i32 2, i32 %101, i64 0) #6
  store i8* %102, i8** %9, align 8
  %103 = icmp eq i8* %102, null
  %104 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %105 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %106 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %107 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %103, label %108, label %132

108:                                              ; preds = %97
  call void @perror(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.9, i64 0, i64 0))
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, 1
  %112 = load i32, i32* %8, align 4
  %113 = call i8* @mmap(i8* null, i64 %111, i32 3, i32 2, i32 %112, i64 0) #6
  store i8* %113, i8** %9, align 8
  %114 = icmp eq i8* %113, null
  %115 = zext i1 %114 to i32
  %116 = icmp eq i32 %115, 0
  %117 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %118 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %119 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %120 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %116, label %121, label %125

121:                                              ; preds = %108
  %122 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %123 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %128

125:                                              ; preds = %108
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %126 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %127 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

128:                                              ; preds = %121
  %129 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %130 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %131 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %132

132:                                              ; preds = %128, %97
  %133 = load i8*, i8** %13, align 8
  %134 = icmp eq i8* %133, null
  %135 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %136 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %137 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %138 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %134, label %139, label %143

139:                                              ; preds = %132
  %140 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %141 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %142 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %150

143:                                              ; preds = %132
  %144 = load i8*, i8** %13, align 8
  %145 = call i32 @atoi(i8* %144) #8
  %146 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %147 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %148 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %149 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %150

150:                                              ; preds = %143, %139
  %151 = phi i32 [ 10, %139 ], [ %145, %143 ]
  store i32 %151, i32* %10, align 4
  %152 = icmp sle i32 %151, 0
  %153 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %154 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %155 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %156 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %152, label %157, label %195

157:                                              ; preds = %150
  call void @perror(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.11, i64 0, i64 0))
  %158 = load i8*, i8** %13, align 8
  %159 = icmp eq i8* %158, null
  %160 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %161 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %162 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %163 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %159, label %164, label %168

164:                                              ; preds = %157
  %165 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %166 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %167 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %175

168:                                              ; preds = %157
  %169 = load i8*, i8** %13, align 8
  %170 = call i32 @atoi(i8* %169) #8
  %171 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %172 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %173 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %174 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %175

175:                                              ; preds = %168, %164
  %176 = phi i32 [ 10, %164 ], [ %170, %168 ]
  store i32 %176, i32* %10, align 4
  %177 = icmp sle i32 %176, 0
  %178 = zext i1 %177 to i32
  %179 = icmp eq i32 %178, 0
  %180 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %181 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %182 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %183 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %179, label %184, label %188

184:                                              ; preds = %175
  %185 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %186 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %187 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %191

188:                                              ; preds = %175
  call void @__assert_fail(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %189 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %190 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

191:                                              ; preds = %184
  %192 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %193 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %194 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %195

195:                                              ; preds = %191, %150
  %196 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds %struct.wc_data_t, %struct.wc_data_t* %14, i32 0, i32 0
  store i64 %197, i64* %198, align 8
  %199 = load i8*, i8** %9, align 8
  %200 = getelementptr inbounds %struct.wc_data_t, %struct.wc_data_t* %14, i32 0, i32 1
  store i8* %199, i8** %200, align 8
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %202 = bitcast %struct.wc_data_t* %14 to i8*
  call void @wordcount_splitter(i8* %202)
  %203 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %204 = bitcast %struct.wc_count_t* %203 to i8*
  %205 = load i32, i32* @use_len, align 4
  %206 = sext i32 %205 to i64
  call void @qsort(i8* %204, i64 %206, i64 16, i32 (i8*, i8*)* @wordcount_cmp)
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %208 = load i32, i32* @use_len, align 4
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %208)
  store i32 0, i32* %7, align 4
  %210 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %211 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 20 seq_cst
  %212 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %213 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br label %214

214:                                              ; preds = %252, %195
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %215, %216
  %218 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %219 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %220 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %221 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %217, label %222, label %230

222:                                              ; preds = %214
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* @use_len, align 4
  %225 = icmp slt i32 %223, %224
  %226 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %227 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %228 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %229 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %230

230:                                              ; preds = %222, %214
  %231 = phi i1 [ false, %214 ], [ %225, %222 ]
  %232 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %233 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %234 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %231, label %235, label %259

235:                                              ; preds = %230
  %236 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %236, i64 %238
  store %struct.wc_count_t* %239, %struct.wc_count_t** %15, align 8
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %241 = load %struct.wc_count_t*, %struct.wc_count_t** %15, align 8
  %242 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = load %struct.wc_count_t*, %struct.wc_count_t** %15, align 8
  %245 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %240, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %243, i32 %246)
  %248 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %249 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %250 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %251 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %252

252:                                              ; preds = %235
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %7, align 4
  %255 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %256 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %257 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %258 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %214

259:                                              ; preds = %230
  %260 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %261 = bitcast %struct.wc_count_t* %260 to i8*
  call void @free(i8* %261) #6
  %262 = load i8*, i8** %9, align 8
  %263 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 1
  %266 = call i32 @munmap(i8* %262, i64 %265) #6
  %267 = icmp slt i32 %266, 0
  %268 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %269 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %270 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %271 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %267, label %272, label %296

272:                                              ; preds = %259
  call void @perror(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0))
  %273 = load i8*, i8** %9, align 8
  %274 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %275, 1
  %277 = call i32 @munmap(i8* %273, i64 %276) #6
  %278 = icmp slt i32 %277, 0
  %279 = zext i1 %278 to i32
  %280 = icmp eq i32 %279, 0
  %281 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %282 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %283 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %284 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %280, label %285, label %289

285:                                              ; preds = %272
  %286 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %287 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %288 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %292

289:                                              ; preds = %272
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 282, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %290 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %291 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

292:                                              ; preds = %285
  %293 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %294 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %295 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %296

296:                                              ; preds = %292, %259
  %297 = load i32, i32* %8, align 4
  %298 = call i32 @close(i32 %297)
  %299 = icmp slt i32 %298, 0
  %300 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %301 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %302 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %303 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %299, label %304, label %325

304:                                              ; preds = %296
  call void @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %305 = load i32, i32* %8, align 4
  %306 = call i32 @close(i32 %305)
  %307 = icmp slt i32 %306, 0
  %308 = zext i1 %307 to i32
  %309 = icmp eq i32 %308, 0
  %310 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %311 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %312 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %313 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %309, label %314, label %318

314:                                              ; preds = %304
  %315 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %316 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %317 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %321

318:                                              ; preds = %304
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %319 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %320 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

321:                                              ; preds = %314
  %322 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %323 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %324 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %325

325:                                              ; preds = %321, %296
  %326 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %327 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %llvmInstrAtomicCounter.val = load i64, i64* @llvmInstrAtomicCounter
  %printf = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @formatLong, i32 0, i32 0), i64 %llvmInstrAtomicCounter.val)
  %basicBlockAtomicCounter.val = load i64, i64* @basicBlockAtomicCounter
  %printf1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @formatLong.1, i32 0, i32 0), i64 %basicBlockAtomicCounter.val)
  %mulAtomicCounter.val = load i64, i64* @mulAtomicCounter
  %printf2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @formatLong.2, i32 0, i32 0), i64 %mulAtomicCounter.val)
  %memOpAtomicCounter.val = load i64, i64* @memOpAtomicCounter
  %printf3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @formatLong.3, i32 0, i32 0), i64 %memOpAtomicCounter.val)
  %branchAtomicCounter.val = load i64, i64* @branchAtomicCounter
  %printf4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @formatLong.4, i32 0, i32 0), i64 %branchAtomicCounter.val)
  %wordcount_cmp.val = load i64, i64* @wordcount_cmp.glob
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.5, i32 0, i32 0), i64 %wordcount_cmp.val)
  %wordcount_splitter.val = load i64, i64* @wordcount_splitter.glob
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @formatLong.6, i32 0, i32 0), i64 %wordcount_splitter.val)
  %calloc.val = load i64, i64* @calloc.glob
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.7, i32 0, i32 0), i64 %calloc.val)
  %malloc.val = load i64, i64* @malloc.glob
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.8, i32 0, i32 0), i64 %malloc.val)
  %wordcount_getword.val = load i64, i64* @wordcount_getword.glob
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @formatLong.9, i32 0, i32 0), i64 %wordcount_getword.val)
  %free.val = load i64, i64* @free.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.10, i32 0, i32 0), i64 %free.val)
  %__assert_fail.val = load i64, i64* @__assert_fail.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.11, i32 0, i32 0), i64 %__assert_fail.val)
  %toupper.val = load i64, i64* @toupper.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.12, i32 0, i32 0), i64 %toupper.val)
  %wordcount_addword.val = load i64, i64* @wordcount_addword.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @formatLong.13, i32 0, i32 0), i64 %wordcount_addword.val)
  %dobsearch.val = load i64, i64* @dobsearch.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @formatLong.14, i32 0, i32 0), i64 %dobsearch.val)
  %strcmp.val = load i64, i64* @strcmp.glob
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.15, i32 0, i32 0), i64 %strcmp.val)
  %llvm.memmove.p0i8.p0i8.i64.val = load i64, i64* @llvm.memmove.p0i8.p0i8.i64.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @formatLong.16, i32 0, i32 0), i64 %llvm.memmove.p0i8.p0i8.i64.val)
  %realloc.val = load i64, i64* @realloc.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.17, i32 0, i32 0), i64 %realloc.val)
  %main.val = load i64, i64* @main.glob
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.18, i32 0, i32 0), i64 %main.val)
  %printf.val = load i64, i64* @printf.glob
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.19, i32 0, i32 0), i64 %printf.val)
  %exit.val = load i64, i64* @exit.glob
  %printf20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.20, i32 0, i32 0), i64 %exit.val)
  %open.val = load i64, i64* @open.glob
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.21, i32 0, i32 0), i64 %open.val)
  %perror.val = load i64, i64* @perror.glob
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.22, i32 0, i32 0), i64 %perror.val)
  %fstat.val = load i64, i64* @fstat.glob
  %printf23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.23, i32 0, i32 0), i64 %fstat.val)
  %mmap.val = load i64, i64* @mmap.glob
  %printf24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.24, i32 0, i32 0), i64 %mmap.val)
  %atoi.val = load i64, i64* @atoi.glob
  %printf25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.25, i32 0, i32 0), i64 %atoi.val)
  %qsort.val = load i64, i64* @qsort.glob
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.26, i32 0, i32 0), i64 %qsort.val)
  %fprintf.val = load i64, i64* @fprintf.glob
  %printf27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.27, i32 0, i32 0), i64 %fprintf.val)
  %munmap.val = load i64, i64* @munmap.glob
  %printf28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.28, i32 0, i32 0), i64 %munmap.val)
  %close.val = load i64, i64* @close.glob
  %printf29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.29, i32 0, i32 0), i64 %close.val)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i32 @open(i8*, i32, ...) #5

declare dso_local void @perror(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: nounwind
declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #5

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind
declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
