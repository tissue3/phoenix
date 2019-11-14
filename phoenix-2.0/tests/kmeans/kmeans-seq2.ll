; ModuleID = 'kmeans-seq.ll'
source_filename = "kmeans-seq.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@num_points = common dso_local global i32 0, align 4
@num_means = common dso_local global i32 0, align 4
@dim = common dso_local global i32 0, align 4
@grid_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"d:c:p:s:\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [82 x i8] c"Usage: %s -d <vector dimension> -c <num clusters> -p <num points> -s <grid size>\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Illegal argument value. All values must be numeric and greater than 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Dimension = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Number of clusters = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Number of points = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Size of each dimension = %d\0A\00", align 1
@modified = common dso_local global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"Generating points\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Generating means\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"\0A\0AStarting iterative algorithm\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"\0A\0AFinal Means:\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Cleaning up\0A\00", align 1
@llvmInstrAtomicCounter = common global i64 0
@basicBlockAtomicCounter = common global i64 0
@mulAtomicCounter = common global i64 0
@memOpAtomicCounter = common global i64 0
@branchAtomicCounter = common global i64 0
@parse_args.glob = common global i64 0
@getopt.glob = common global i64 0
@atoi.glob = common global i64 0
@printf.glob = common global i64 0
@exit.glob = common global i64 0
@generate_points.glob = common global i64 0
@rand.glob = common global i64 0
@add_to_sum.glob = common global i64 0
@find_clusters.glob = common global i64 0
@get_sq_dist.glob = common global i64 0
@calc_means.glob = common global i64 0
@malloc.glob = common global i64 0
@llvm.memset.p0i8.i64.glob = common global i64 0
@dump_matrix.glob = common global i64 0
@fprintf.glob = common global i64 0
@main.glob = common global i64 0
@free.glob = common global i64 0
@formatLong = private unnamed_addr constant [31 x i8] c"\0A\0AllvmInstrAtomicCounter: %ld\0A\00", align 1
@formatLong.1 = private unnamed_addr constant [30 x i8] c"basicBlockAtomicCounter: %ld\0A\00", align 1
@formatLong.2 = private unnamed_addr constant [23 x i8] c"mulAtomicCounter: %ld\0A\00", align 1
@formatLong.3 = private unnamed_addr constant [25 x i8] c"memOpAtomicCounter: %ld\0A\00", align 1
@formatLong.4 = private unnamed_addr constant [26 x i8] c"branchAtomicCounter: %ld\0A\00", align 1
@formatLong.5 = private unnamed_addr constant [17 x i8] c"parse_args: %ld\0A\00", align 1
@formatLong.6 = private unnamed_addr constant [13 x i8] c"getopt: %ld\0A\00", align 1
@formatLong.7 = private unnamed_addr constant [11 x i8] c"atoi: %ld\0A\00", align 1
@formatLong.8 = private unnamed_addr constant [13 x i8] c"printf: %ld\0A\00", align 1
@formatLong.9 = private unnamed_addr constant [11 x i8] c"exit: %ld\0A\00", align 1
@formatLong.10 = private unnamed_addr constant [22 x i8] c"generate_points: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [11 x i8] c"rand: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [17 x i8] c"add_to_sum: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [20 x i8] c"find_clusters: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [18 x i8] c"get_sq_dist: %ld\0A\00", align 1
@formatLong.15 = private unnamed_addr constant [17 x i8] c"calc_means: %ld\0A\00", align 1
@formatLong.16 = private unnamed_addr constant [13 x i8] c"malloc: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [27 x i8] c"llvm.memset.p0i8.i64: %ld\0A\00", align 1
@formatLong.18 = private unnamed_addr constant [18 x i8] c"dump_matrix: %ld\0A\00", align 1
@formatLong.19 = private unnamed_addr constant [14 x i8] c"fprintf: %ld\0A\00", align 1
@formatLong.20 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.21 = private unnamed_addr constant [11 x i8] c"free: %ld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_args(i32, i8**) #0 {
  %3 = atomicrmw add i64* @parse_args.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 1000, i32* @num_points, align 4
  store i32 10, i32* @num_means, align 4
  store i32 3, i32* @dim, align 4
  store i32 100, i32* @grid_size, align 4
  %7 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %8 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %9 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %11

11:                                               ; preds = %61, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #6
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %15, label %20, label %65

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  switch i32 %21, label %61 [
    i32 100, label %25
    i32 99, label %32
    i32 112, label %39
    i32 115, label %46
    i32 63, label %53
  ]

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @atoi(i8* %26) #7
  store i32 %27, i32* @dim, align 4
  %28 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %30 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %31 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %61

32:                                               ; preds = %20
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @atoi(i8* %33) #7
  store i32 %34, i32* @num_means, align 4
  %35 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %37 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %61

39:                                               ; preds = %20
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @atoi(i8* %40) #7
  store i32 %41, i32* @num_points, align 4
  %42 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %44 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %61

46:                                               ; preds = %20
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @atoi(i8* %47) #7
  store i32 %48, i32* @grid_size, align 4
  %49 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %51 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %61

53:                                               ; preds = %20
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  call void @exit(i32 1) #8
  %58 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %59 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %60 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  unreachable

61:                                               ; preds = %46, %39, %32, %25, %20
  %62 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %11

65:                                               ; preds = %11
  %66 = load i32, i32* @dim, align 4
  %67 = icmp sle i32 %66, 0
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %67, label %93, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @num_means, align 4
  %74 = icmp sle i32 %73, 0
  %75 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %77 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %74, label %93, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @num_points, align 4
  %81 = icmp sle i32 %80, 0
  %82 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %84 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %85 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %81, label %93, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @grid_size, align 4
  %88 = icmp sle i32 %87, 0
  %89 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %90 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %91 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %88, label %93, label %97

93:                                               ; preds = %86, %79, %72, %65
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #8
  %95 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %96 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  unreachable

97:                                               ; preds = %86
  %98 = load i32, i32* @dim, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @num_means, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @num_points, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @grid_size, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %107 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %108 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_points(i32**, i32) #0 {
  %3 = atomicrmw add i64* @generate_points.glob, i64 1 seq_cst
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %9 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %10 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %12

12:                                               ; preds = %60, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %15, label %20, label %67

20:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %23 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %25

25:                                               ; preds = %49, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @dim, align 4
  %28 = icmp slt i32 %26, %27
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %31 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %28, label %33, label %56

33:                                               ; preds = %25
  %34 = call i32 @rand() #6
  %35 = load i32, i32* @grid_size, align 4
  %36 = srem i32 %34, %35
  %37 = load i32**, i32*** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %36, i32* %44, align 4
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %47 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %53 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %54 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %25

56:                                               ; preds = %25
  %57 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %58 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %59 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %65 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %66 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %12

67:                                               ; preds = %12
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_to_sum(i32*, i32*) #0 {
  %3 = atomicrmw add i64* @add_to_sum.glob, i64 1 seq_cst
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %8 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %9 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @dim, align 4
  %14 = icmp slt i32 %12, %13
  %15 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %17 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %14, label %19, label %42

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %33 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %40 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %11

42:                                               ; preds = %11
  %43 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_clusters(i32**, i32**, i32*) #0 {
  %4 = atomicrmw add i64* @find_clusters.glob, i64 1 seq_cst
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %15 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %17

17:                                               ; preds = %110, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @num_points, align 4
  %20 = icmp slt i32 %18, %19
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %23 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %20, label %25, label %117

25:                                               ; preds = %17
  %26 = load i32**, i32*** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32*, i32** %26, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32**, i32*** %6, align 8
  %32 = getelementptr inbounds i32*, i32** %31, i64 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @get_sq_dist(i32* %30, i32* %33)
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %9, align 4
  %35 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %37 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %39

39:                                               ; preds = %77, %25
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @num_means, align 4
  %42 = icmp slt i32 %40, %41
  %43 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %45 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %42, label %47, label %84

47:                                               ; preds = %39
  %48 = load i32**, i32*** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32**, i32*** %6, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @get_sq_dist(i32* %52, i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ult i32 %59, %60
  %62 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %64 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %65 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br i1 %61, label %66, label %73

66:                                               ; preds = %47
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %12, align 4
  %69 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %71 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %73

73:                                               ; preds = %66, %47
  %74 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %81 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %82 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %39

84:                                               ; preds = %39
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %89, %90
  %92 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %93 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %94 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %95 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %91, label %96, label %106

96:                                               ; preds = %84
  %97 = load i32, i32* %12, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %97, i32* %101, align 4
  store i32 1, i32* @modified, align 4
  %102 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %103 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %104 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %105 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %106

106:                                              ; preds = %96, %84
  %107 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %108 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %109 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  %113 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %114 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %115 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %116 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %17

117:                                              ; preds = %17
  %118 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %119 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_sq_dist(i32*, i32*) #0 {
  %3 = atomicrmw add i64* @get_sq_dist.glob, i64 1 seq_cst
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %8 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %9 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %10 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %12

12:                                               ; preds = %51, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @dim, align 4
  %15 = icmp slt i32 %13, %14
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %15, label %20, label %58

20:                                               ; preds = %12
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %25, %30
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %36, %41
  %43 = mul nsw i32 %31, %42
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 27 seq_cst
  %48 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @memOpAtomicCounter, i64 14 seq_cst
  br label %51

51:                                               ; preds = %20
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  %54 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %56 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %57 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %12

58:                                               ; preds = %12
  %59 = load i32, i32* %7, align 4
  %60 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %61 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %62 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i32 %59
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @calc_means(i32**, i32**, i32*) #0 {
  %4 = atomicrmw add i64* @calc_means.glob, i64 1 seq_cst
  %5 = alloca i32**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @dim, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = call noalias i8* @malloc(i64 %14) #6
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %11, align 8
  store i32 0, i32* %8, align 4
  %17 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %19 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %22

22:                                               ; preds = %140, %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @num_means, align 4
  %25 = icmp slt i32 %23, %24
  %26 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %27 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %28 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %25, label %30, label %147

30:                                               ; preds = %22
  %31 = load i32*, i32** %11, align 8
  %32 = bitcast i32* %31 to i8*
  %33 = load i32, i32* @dim, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 %35, i1 false)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %36 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %37 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %38 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %40 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %41

41:                                               ; preds = %78, %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @num_points, align 4
  %44 = icmp slt i32 %42, %43
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %47 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %44, label %49, label %85

49:                                               ; preds = %41
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %54, %55
  %57 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %58 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %59 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %56, label %61, label %74

61:                                               ; preds = %49
  %62 = load i32*, i32** %11, align 8
  %63 = load i32**, i32*** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  call void @add_to_sum(i32* %62, i32* %67)
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %72 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %74

74:                                               ; preds = %61, %49
  %75 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %77 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %83 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %41

85:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  %86 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %87 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %88 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %90

90:                                               ; preds = %129, %85
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @dim, align 4
  %93 = icmp slt i32 %91, %92
  %94 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %95 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %96 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %97 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %93, label %98, label %136

98:                                               ; preds = %90
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  %101 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %102 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %103 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %104 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %100, label %105, label %125

105:                                              ; preds = %98
  %106 = load i32*, i32** %11, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = sdiv i32 %110, %111
  %113 = load i32**, i32*** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %112, i32* %120, align 4
  %121 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %122 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 17 seq_cst
  %123 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br label %125

125:                                              ; preds = %105, %98
  %126 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %127 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %128 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  %132 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %133 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %134 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %135 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %90

136:                                              ; preds = %90
  %137 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %138 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %139 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %8, align 4
  %143 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %144 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %145 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %146 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %22

147:                                              ; preds = %22
  %148 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %149 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_matrix(i32**, i32, i32) #0 {
  %4 = atomicrmw add i64* @dump_matrix.glob, i64 1 seq_cst
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %12 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %14

14:                                               ; preds = %65, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %17, label %22, label %72

22:                                               ; preds = %14
  store i32 0, i32* %9, align 4
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %25 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %27

27:                                               ; preds = %51, %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  %31 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %33 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %30, label %35, label %58

35:                                               ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %37 = load i32**, i32*** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %45)
  %47 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %49 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %51

51:                                               ; preds = %35
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %56 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %57 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %27

58:                                               ; preds = %27
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %61 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %63 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %14

72:                                               ; preds = %14
  %73 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i8**, i8*** %6, align 8
  call void @parse_args(i32 %11, i8** %12)
  %13 = load i32, i32* @num_points, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = call noalias i8* @malloc(i64 %15) #6
  %17 = bitcast i8* %16 to i32**
  store i32** %17, i32*** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 22 seq_cst
  %20 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %23

23:                                               ; preds = %46, %2
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @num_points, align 4
  %26 = icmp slt i32 %24, %25
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %29 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %26, label %31, label %53

31:                                               ; preds = %23
  %32 = load i32, i32* @dim, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = call noalias i8* @malloc(i64 %34) #6
  %36 = bitcast i8* %35 to i32*
  %37 = load i32**, i32*** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  store i32* %36, i32** %40, align 8
  %41 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %43 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %51 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %23

53:                                               ; preds = %23
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %56 = load i32**, i32*** %7, align 8
  %57 = load i32, i32* @num_points, align 4
  call void @generate_points(i32** %56, i32 %57)
  %58 = load i32, i32* @num_means, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 8, %59
  %61 = call noalias i8* @malloc(i64 %60) #6
  %62 = bitcast i8* %61 to i32**
  store i32** %62, i32*** %8, align 8
  store i32 0, i32* %10, align 4
  %63 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %65 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %66 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %67 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %68

68:                                               ; preds = %91, %53
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @num_means, align 4
  %71 = icmp slt i32 %69, %70
  %72 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %74 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %71, label %76, label %98

76:                                               ; preds = %68
  %77 = load i32, i32* @dim, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 4, %78
  %80 = call noalias i8* @malloc(i64 %79) #6
  %81 = bitcast i8* %80 to i32*
  %82 = load i32**, i32*** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  store i32* %81, i32** %85, align 8
  %86 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %87 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %88 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %90 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %91

91:                                               ; preds = %76
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %95 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %96 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %97 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %68

98:                                               ; preds = %68
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %101 = load i32**, i32*** %8, align 8
  %102 = load i32, i32* @num_means, align 4
  call void @generate_points(i32** %101, i32 %102)
  %103 = load i32, i32* @num_points, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 4, %104
  %106 = call noalias i8* @malloc(i64 %105) #6
  %107 = bitcast i8* %106 to i32*
  store i32* %107, i32** %9, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = bitcast i32* %108 to i8*
  %110 = load i32, i32* @num_points, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 4, %111
  call void @llvm.memset.p0i8.i64(i8* align 4 %109, i8 -1, i64 %112, i1 false)
  store i32 1, i32* @modified, align 4
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %115 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %116 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 21 seq_cst
  %117 = atomicrmw add i64* @mulAtomicCounter, i64 2 seq_cst
  %118 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %119 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br label %120

120:                                              ; preds = %127, %98
  %121 = load i32, i32* @modified, align 4
  %122 = icmp ne i32 %121, 0
  %123 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %125 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %126 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %122, label %127, label %140

127:                                              ; preds = %120
  store i32 0, i32* @modified, align 4
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %130 = load i32**, i32*** %7, align 8
  %131 = load i32**, i32*** %8, align 8
  %132 = load i32*, i32** %9, align 8
  call void @find_clusters(i32** %130, i32** %131, i32* %132)
  %133 = load i32**, i32*** %7, align 8
  %134 = load i32**, i32*** %8, align 8
  %135 = load i32*, i32** %9, align 8
  call void @calc_means(i32** %133, i32** %134, i32* %135)
  %136 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %137 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %138 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %139 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %120

140:                                              ; preds = %120
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %143 = load i32**, i32*** %8, align 8
  %144 = load i32, i32* @num_means, align 4
  %145 = load i32, i32* @dim, align 4
  call void @dump_matrix(i32** %143, i32 %144, i32 %145)
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  %148 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %149 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %150 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %151 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %152

152:                                              ; preds = %171, %140
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @num_means, align 4
  %155 = icmp slt i32 %153, %154
  %156 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %157 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %158 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %159 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %155, label %160, label %178

160:                                              ; preds = %152
  %161 = load i32**, i32*** %8, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = bitcast i32* %165 to i8*
  call void @free(i8* %166) #6
  %167 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %168 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %169 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %170 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %171

171:                                              ; preds = %160
  %172 = load i32, i32* %10, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %10, align 4
  %174 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %175 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %176 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %177 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %152

178:                                              ; preds = %152
  %179 = load i32**, i32*** %8, align 8
  %180 = bitcast i32** %179 to i8*
  call void @free(i8* %180) #6
  store i32 0, i32* %10, align 4
  %181 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %182 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %183 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %184 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %185

185:                                              ; preds = %204, %178
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @num_points, align 4
  %188 = icmp slt i32 %186, %187
  %189 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %190 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %191 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %192 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %188, label %193, label %211

193:                                              ; preds = %185
  %194 = load i32**, i32*** %7, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = bitcast i32* %198 to i8*
  call void @free(i8* %199) #6
  %200 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %201 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %202 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %203 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %204

204:                                              ; preds = %193
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  %207 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %208 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %209 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %210 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %185

211:                                              ; preds = %185
  %212 = load i32**, i32*** %7, align 8
  %213 = bitcast i32** %212 to i8*
  call void @free(i8* %213) #6
  %214 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %215 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %216 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
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
  %parse_args.val = load i64, i64* @parse_args.glob
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.5, i32 0, i32 0), i64 %parse_args.val)
  %getopt.val = load i64, i64* @getopt.glob
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.6, i32 0, i32 0), i64 %getopt.val)
  %atoi.val = load i64, i64* @atoi.glob
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.7, i32 0, i32 0), i64 %atoi.val)
  %printf.val = load i64, i64* @printf.glob
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.8, i32 0, i32 0), i64 %printf.val)
  %exit.val = load i64, i64* @exit.glob
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.9, i32 0, i32 0), i64 %exit.val)
  %generate_points.val = load i64, i64* @generate_points.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @formatLong.10, i32 0, i32 0), i64 %generate_points.val)
  %rand.val = load i64, i64* @rand.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.11, i32 0, i32 0), i64 %rand.val)
  %add_to_sum.val = load i64, i64* @add_to_sum.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.12, i32 0, i32 0), i64 %add_to_sum.val)
  %find_clusters.val = load i64, i64* @find_clusters.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.13, i32 0, i32 0), i64 %find_clusters.val)
  %get_sq_dist.val = load i64, i64* @get_sq_dist.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.14, i32 0, i32 0), i64 %get_sq_dist.val)
  %calc_means.val = load i64, i64* @calc_means.glob
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.15, i32 0, i32 0), i64 %calc_means.val)
  %malloc.val = load i64, i64* @malloc.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.16, i32 0, i32 0), i64 %malloc.val)
  %llvm.memset.p0i8.i64.val = load i64, i64* @llvm.memset.p0i8.i64.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @formatLong.17, i32 0, i32 0), i64 %llvm.memset.p0i8.i64.val)
  %dump_matrix.val = load i64, i64* @dump_matrix.glob
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.18, i32 0, i32 0), i64 %dump_matrix.val)
  %fprintf.val = load i64, i64* @fprintf.glob
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.19, i32 0, i32 0), i64 %fprintf.val)
  %main.val = load i64, i64* @main.glob
  %printf20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.20, i32 0, i32 0), i64 %main.val)
  %free.val = load i64, i64* @free.glob
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.21, i32 0, i32 0), i64 %free.val)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
