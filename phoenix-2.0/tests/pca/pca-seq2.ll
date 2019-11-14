; ModuleID = 'pca-seq.ll'
source_filename = "pca-seq.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@num_rows = common dso_local global i32 0, align 4
@num_cols = common dso_local global i32 0, align 4
@grid_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"r:c:s:\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"Usage: %s -r <num_rows> -c <num_cols> -s <max value>\0A\00", align 1
@.str.2 = private unnamed_addr constant [71 x i8] c"Illegal argument value. All values must be numeric and greater than 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Number of rows = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Number of cols = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Max value for each element = %d\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
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
@dump_points.glob = common global i64 0
@fprintf.glob = common global i64 0
@generate_points.glob = common global i64 0
@rand.glob = common global i64 0
@calc_mean.glob = common global i64 0
@calc_cov.glob = common global i64 0
@main.glob = common global i64 0
@malloc.glob = common global i64 0
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
@formatLong.10 = private unnamed_addr constant [18 x i8] c"dump_points: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [14 x i8] c"fprintf: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [22 x i8] c"generate_points: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [11 x i8] c"rand: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [16 x i8] c"calc_mean: %ld\0A\00", align 1
@formatLong.15 = private unnamed_addr constant [15 x i8] c"calc_cov: %ld\0A\00", align 1
@formatLong.16 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [13 x i8] c"malloc: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_args(i32, i8**) #0 {
  %3 = atomicrmw add i64* @parse_args.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 10, i32* @num_rows, align 4
  store i32 10, i32* @num_cols, align 4
  store i32 100, i32* @grid_size, align 4
  %7 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %8 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %9 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %11

11:                                               ; preds = %54, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #5
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %15, label %20, label %58

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  switch i32 %21, label %54 [
    i32 114, label %25
    i32 99, label %32
    i32 115, label %39
    i32 63, label %46
  ]

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @atoi(i8* %26) #6
  store i32 %27, i32* @num_rows, align 4
  %28 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %30 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %31 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %54

32:                                               ; preds = %20
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @atoi(i8* %33) #6
  store i32 %34, i32* @num_cols, align 4
  %35 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %37 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %54

39:                                               ; preds = %20
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @atoi(i8* %40) #6
  store i32 %41, i32* @grid_size, align 4
  %42 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %44 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %54

46:                                               ; preds = %20
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  call void @exit(i32 1) #7
  %51 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %53 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  unreachable

54:                                               ; preds = %39, %32, %25, %20
  %55 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %57 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* @num_rows, align 4
  %60 = icmp sle i32 %59, 0
  %61 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %63 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %60, label %79, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @num_cols, align 4
  %67 = icmp sle i32 %66, 0
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %67, label %79, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @grid_size, align 4
  %74 = icmp sle i32 %73, 0
  %75 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %77 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %74, label %79, label %83

79:                                               ; preds = %72, %65, %58
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #7
  %81 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  unreachable

83:                                               ; preds = %72
  %84 = load i32, i32* @num_rows, align 4
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @num_cols, align 4
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @grid_size, align 4
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  %90 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %91 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %92 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_points(i32**, i32, i32) #0 {
  %4 = atomicrmw add i64* @dump_points.glob, i64 1 seq_cst
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
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %45)
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
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_points(i32**, i32, i32) #0 {
  %4 = atomicrmw add i64* @generate_points.glob, i64 1 seq_cst
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

14:                                               ; preds = %62, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %17, label %22, label %69

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
  %36 = call i32 @rand() #5
  %37 = load i32, i32* @grid_size, align 4
  %38 = srem i32 %36, %37
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %38, i32* %46, align 4
  %47 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
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
  %59 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %61 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  %65 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %66 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %67 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %68 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %14

69:                                               ; preds = %14
  %70 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_mean(i32**, i32*) #0 {
  %3 = atomicrmw add i64* @calc_mean.glob, i64 1 seq_cst
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %9 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %11 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %12 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %13

13:                                               ; preds = %69, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @num_rows, align 4
  %16 = icmp slt i32 %14, %15
  %17 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %19 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %16, label %21, label %76

21:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %24 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %25 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %26

26:                                               ; preds = %50, %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @num_cols, align 4
  %29 = icmp slt i32 %27, %28
  %30 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %31 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %32 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %33 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %29, label %34, label %57

34:                                               ; preds = %26
  %35 = load i32**, i32*** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %48 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %55 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %26

57:                                               ; preds = %26
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @num_cols, align 4
  %60 = sdiv i32 %58, %59
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %60, i32* %64, align 4
  %65 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %66 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %67 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %68 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  %72 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %74 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %13

76:                                               ; preds = %13
  %77 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_cov(i32**, i32*, i32**) #0 {
  %4 = atomicrmw add i64* @calc_cov.glob, i64 1 seq_cst
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %14 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %15 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %16

16:                                               ; preds = %133, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @num_rows, align 4
  %19 = icmp slt i32 %17, %18
  %20 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %22 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %19, label %24, label %140

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %9, align 4
  %26 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %27 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %28 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %30

30:                                               ; preds = %122, %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @num_rows, align 4
  %33 = icmp slt i32 %31, %32
  %34 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %35 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %36 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %37 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %33, label %38, label %129

38:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %39 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %40 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %41 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %43

43:                                               ; preds = %90, %38
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @num_cols, align 4
  %46 = icmp slt i32 %44, %45
  %47 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %49 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %46, label %51, label %97

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %61, %66
  %68 = load i32**, i32*** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %76, %81
  %83 = mul nsw i32 %67, %82
  %84 = add nsw i32 %52, %83
  store i32 %84, i32* %11, align 4
  %85 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %86 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 35 seq_cst
  %87 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %88 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @memOpAtomicCounter, i64 18 seq_cst
  br label %90

90:                                               ; preds = %51
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %94 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %95 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %96 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %43

97:                                               ; preds = %43
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @num_cols, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sdiv i32 %98, %100
  %102 = load i32**, i32*** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %101, i32* %109, align 4
  %110 = load i32**, i32*** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32*, i32** %110, i64 %112
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %101, i32* %117, align 4
  %118 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %119 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 23 seq_cst
  %120 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %121 = atomicrmw add i64* @memOpAtomicCounter, i64 12 seq_cst
  br label %122

122:                                              ; preds = %97
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %126 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %127 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %128 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %30

129:                                              ; preds = %30
  %130 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %131 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %132 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %133

133:                                              ; preds = %129
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  %136 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %137 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %138 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %139 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %16

140:                                              ; preds = %16
  %141 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %142 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i8**, i8*** %6, align 8
  call void @parse_args(i32 %11, i8** %12)
  %13 = load i32, i32* @num_rows, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 8, %14
  %16 = call noalias i8* @malloc(i64 %15) #5
  %17 = bitcast i8* %16 to i32**
  store i32** %17, i32*** %8, align 8
  store i32 0, i32* %7, align 4
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 22 seq_cst
  %20 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %23

23:                                               ; preds = %46, %2
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @num_rows, align 4
  %26 = icmp slt i32 %24, %25
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %29 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %26, label %31, label %53

31:                                               ; preds = %23
  %32 = load i32, i32* @num_cols, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = call noalias i8* @malloc(i64 %34) #5
  %36 = bitcast i8* %35 to i32*
  %37 = load i32**, i32*** %8, align 8
  %38 = load i32, i32* %7, align 4
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
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %51 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %23

53:                                               ; preds = %23
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32, i32* @num_rows, align 4
  %56 = load i32, i32* @num_cols, align 4
  call void @generate_points(i32** %54, i32 %55, i32 %56)
  %57 = load i32**, i32*** %8, align 8
  %58 = load i32, i32* @num_rows, align 4
  %59 = load i32, i32* @num_cols, align 4
  call void @dump_points(i32** %57, i32 %58, i32 %59)
  %60 = load i32, i32* @num_rows, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = call noalias i8* @malloc(i64 %62) #5
  %64 = bitcast i8* %63 to i32*
  store i32* %64, i32** %10, align 8
  %65 = load i32, i32* @num_rows, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = call noalias i8* @malloc(i64 %67) #5
  %69 = bitcast i8* %68 to i32**
  store i32** %69, i32*** %9, align 8
  store i32 0, i32* %7, align 4
  %70 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 22 seq_cst
  %72 = atomicrmw add i64* @mulAtomicCounter, i64 2 seq_cst
  %73 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @memOpAtomicCounter, i64 11 seq_cst
  br label %75

75:                                               ; preds = %98, %53
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @num_rows, align 4
  %78 = icmp slt i32 %76, %77
  %79 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %81 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %78, label %83, label %105

83:                                               ; preds = %75
  %84 = load i32, i32* @num_rows, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = call noalias i8* @malloc(i64 %86) #5
  %88 = bitcast i8* %87 to i32*
  %89 = load i32**, i32*** %9, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32*, i32** %89, i64 %91
  store i32* %88, i32** %92, align 8
  %93 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %94 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %95 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %96 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %97 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  %101 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %102 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %103 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %104 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %75

105:                                              ; preds = %75
  %106 = load i32**, i32*** %8, align 8
  %107 = load i32*, i32** %10, align 8
  call void @calc_mean(i32** %106, i32* %107)
  %108 = load i32**, i32*** %8, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i32**, i32*** %9, align 8
  call void @calc_cov(i32** %108, i32* %109, i32** %110)
  %111 = load i32**, i32*** %9, align 8
  %112 = load i32, i32* @num_rows, align 4
  %113 = load i32, i32* @num_rows, align 4
  call void @dump_points(i32** %111, i32 %112, i32 %113)
  %114 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %115 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %116 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
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
  %dump_points.val = load i64, i64* @dump_points.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.10, i32 0, i32 0), i64 %dump_points.val)
  %fprintf.val = load i64, i64* @fprintf.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.11, i32 0, i32 0), i64 %fprintf.val)
  %generate_points.val = load i64, i64* @generate_points.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @formatLong.12, i32 0, i32 0), i64 %generate_points.val)
  %rand.val = load i64, i64* @rand.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.13, i32 0, i32 0), i64 %rand.val)
  %calc_mean.val = load i64, i64* @calc_mean.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @formatLong.14, i32 0, i32 0), i64 %calc_mean.val)
  %calc_cov.val = load i64, i64* @calc_cov.glob
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @formatLong.15, i32 0, i32 0), i64 %calc_cov.val)
  %main.val = load i64, i64* @main.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.16, i32 0, i32 0), i64 %main.val)
  %malloc.val = load i64, i64* @malloc.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.17, i32 0, i32 0), i64 %malloc.val)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
