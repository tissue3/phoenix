; ModuleID = 'pca-pthread.ll'
source_filename = "pca-pthread.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct.mean_arg_t = type { i32, i32 }
%union.pthread_attr_t = type { i64, [48 x i8] }
%union.pthread_mutexattr_t = type { i32 }

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
@matrix = common dso_local global i32** null, align 8
@mean = common dso_local global i32* null, align 8
@row_lock = common dso_local global %union.pthread_mutex_t zeroinitializer, align 8
@next_row = common dso_local global i32 0, align 4
@cov = common dso_local global i32** null, align 8
@num_procs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [75 x i8] c"Error at line\0A\09(num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0\0ASystem Msg\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"((num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0) == 0\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"pca-pthread.c\00", align 1
@__PRETTY_FUNCTION__.pthread_mean = private unnamed_addr constant [20 x i8] c"void pthread_mean()\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"The number of processors is %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [100 x i8] c"Error at line\0A\09pthread_create(&tid[i], &attr, calc_mean, (void *)(&(mean_args[i]))) != 0\0ASystem Msg\00", align 1
@.str.13 = private unnamed_addr constant [81 x i8] c"(pthread_create(&tid[i], &attr, calc_mean, (void *)(&(mean_args[i]))) != 0) == 0\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"Error at line\0A\09pthread_join(tid[i], NULL) != 0\0ASystem Msg\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"(pthread_join(tid[i], ((void*)0)) != 0) == 0\00", align 1
@.str.16 = private unnamed_addr constant [78 x i8] c"Error at line\0A\09pthread_create(&tid[i], &attr, calc_cov, NULL) != 0\0ASystem Msg\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"(pthread_create(&tid[i], &attr, calc_cov, ((void*)0)) != 0) == 0\00", align 1
@__PRETTY_FUNCTION__.pthread_cov = private unnamed_addr constant [19 x i8] c"void pthread_cov()\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"./stddefines.h\00", align 1
@__PRETTY_FUNCTION__.MALLOC = private unnamed_addr constant [21 x i8] c"void *MALLOC(size_t)\00", align 1
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
@pthread_mutex_lock.glob = common global i64 0
@pthread_mutex_unlock.glob = common global i64 0
@pthread_mean.glob = common global i64 0
@sysconf.glob = common global i64 0
@perror.glob = common global i64 0
@__assert_fail.glob = common global i64 0
@MALLOC.glob = common global i64 0
@malloc.glob = common global i64 0
@pthread_attr_init.glob = common global i64 0
@pthread_attr_setscope.glob = common global i64 0
@pthread_create.glob = common global i64 0
@pthread_join.glob = common global i64 0
@free.glob = common global i64 0
@pthread_cov.glob = common global i64 0
@pthread_mutex_init.glob = common global i64 0
@main.glob = common global i64 0
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
@formatLong.16 = private unnamed_addr constant [25 x i8] c"pthread_mutex_lock: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [27 x i8] c"pthread_mutex_unlock: %ld\0A\00", align 1
@formatLong.18 = private unnamed_addr constant [19 x i8] c"pthread_mean: %ld\0A\00", align 1
@formatLong.19 = private unnamed_addr constant [14 x i8] c"sysconf: %ld\0A\00", align 1
@formatLong.20 = private unnamed_addr constant [13 x i8] c"perror: %ld\0A\00", align 1
@formatLong.21 = private unnamed_addr constant [20 x i8] c"__assert_fail: %ld\0A\00", align 1
@formatLong.22 = private unnamed_addr constant [13 x i8] c"MALLOC: %ld\0A\00", align 1
@formatLong.23 = private unnamed_addr constant [13 x i8] c"malloc: %ld\0A\00", align 1
@formatLong.24 = private unnamed_addr constant [24 x i8] c"pthread_attr_init: %ld\0A\00", align 1
@formatLong.25 = private unnamed_addr constant [28 x i8] c"pthread_attr_setscope: %ld\0A\00", align 1
@formatLong.26 = private unnamed_addr constant [21 x i8] c"pthread_create: %ld\0A\00", align 1
@formatLong.27 = private unnamed_addr constant [19 x i8] c"pthread_join: %ld\0A\00", align 1
@formatLong.28 = private unnamed_addr constant [11 x i8] c"free: %ld\0A\00", align 1
@formatLong.29 = private unnamed_addr constant [18 x i8] c"pthread_cov: %ld\0A\00", align 1
@formatLong.30 = private unnamed_addr constant [25 x i8] c"pthread_mutex_init: %ld\0A\00", align 1
@formatLong.31 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1

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
define dso_local i8* @calc_mean(i8*) #0 {
  %2 = atomicrmw add i64* @calc_mean.glob, i64 1 seq_cst
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mean_arg_t*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.mean_arg_t*
  store %struct.mean_arg_t* %9, %struct.mean_arg_t** %7, align 8
  %10 = load %struct.mean_arg_t*, %struct.mean_arg_t** %7, align 8
  %11 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %15 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br label %17

17:                                               ; preds = %75, %1
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.mean_arg_t*, %struct.mean_arg_t** %7, align 8
  %20 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %25 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %22, label %27, label %82

27:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %28 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %30 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %31 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %32

32:                                               ; preds = %56, %27
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @num_cols, align 4
  %35 = icmp slt i32 %33, %34
  %36 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %37 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %38 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %35, label %40, label %63

40:                                               ; preds = %32
  %41 = load i32**, i32*** @matrix, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %53 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %54 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %61 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %32

63:                                               ; preds = %32
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @num_cols, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32*, i32** @mean, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %73 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %75

75:                                               ; preds = %63
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  %78 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %79 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %80 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %81 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %17

82:                                               ; preds = %17
  %83 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @calc_cov(i8*) #0 {
  %2 = atomicrmw add i64* @calc_cov.glob, i64 1 seq_cst
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @row_lock) #5
  %9 = load i32, i32* @next_row, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @next_row, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @next_row, align 4
  %12 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @row_lock) #5
  %13 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 15 seq_cst
  %15 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %17

17:                                               ; preds = %130, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @num_rows, align 4
  %20 = icmp slt i32 %18, %19
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %23 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %20, label %25, label %140

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %5, align 4
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %29 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %31

31:                                               ; preds = %123, %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @num_rows, align 4
  %34 = icmp slt i32 %32, %33
  %35 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %37 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %34, label %39, label %130

39:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %40 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %42 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %44

44:                                               ; preds = %91, %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @num_cols, align 4
  %47 = icmp slt i32 %45, %46
  %48 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %50 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %51 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %47, label %52, label %98

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = load i32**, i32*** @matrix, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @mean, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %62, %67
  %69 = load i32**, i32*** @matrix, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** @mean, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %77, %82
  %84 = mul nsw i32 %68, %83
  %85 = add nsw i32 %53, %84
  store i32 %85, i32* %7, align 4
  %86 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %87 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 35 seq_cst
  %88 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %90 = atomicrmw add i64* @memOpAtomicCounter, i64 18 seq_cst
  br label %91

91:                                               ; preds = %52
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %95 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %96 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %97 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %44

98:                                               ; preds = %44
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @num_cols, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sdiv i32 %99, %101
  %103 = load i32**, i32*** @cov, align 8
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %102, i32* %110, align 4
  %111 = load i32**, i32*** @cov, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %102, i32* %118, align 4
  %119 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %120 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 23 seq_cst
  %121 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %122 = atomicrmw add i64* @memOpAtomicCounter, i64 12 seq_cst
  br label %123

123:                                              ; preds = %98
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  %126 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %127 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %128 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %129 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %31

130:                                              ; preds = %31
  %131 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @row_lock) #5
  %132 = load i32, i32* @next_row, align 4
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* @next_row, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @next_row, align 4
  %135 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @row_lock) #5
  %136 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %137 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %138 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %139 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %17

140:                                              ; preds = %17
  %141 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %142 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_mean() #0 {
  %1 = atomicrmw add i64* @pthread_mean.glob, i64 1 seq_cst
  %2 = alloca %union.pthread_attr_t, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mean_arg_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = call i64 @sysconf(i32 84) #5
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* @num_procs, align 4
  %11 = icmp sle i32 %10, 0
  %12 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %14 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %15 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %11, label %16, label %37

16:                                               ; preds = %0
  call void @perror(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  %17 = call i64 @sysconf(i32 84) #5
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @num_procs, align 4
  %19 = icmp sle i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = icmp eq i32 %20, 0
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %24 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %25 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %21, label %26, label %30

26:                                               ; preds = %16
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %33

30:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.pthread_mean, i64 0, i64 0)) #7
  %31 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

33:                                               ; preds = %26
  %34 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %35 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %37

37:                                               ; preds = %33, %0
  %38 = load i32, i32* @num_procs, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @num_procs, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = call i8* @MALLOC(i64 %42)
  %44 = bitcast i8* %43 to i64*
  store i64* %44, i64** %3, align 8
  %45 = load i32, i32* @num_procs, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 8
  %48 = call noalias i8* @malloc(i64 %47) #5
  %49 = bitcast i8* %48 to %struct.mean_arg_t*
  store %struct.mean_arg_t* %49, %struct.mean_arg_t** %5, align 8
  %50 = call i32 @pthread_attr_init(%union.pthread_attr_t* %2) #5
  %51 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* %2, i32 0) #5
  %52 = load i32, i32* @num_rows, align 4
  %53 = load i32, i32* @num_procs, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* @num_rows, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @num_procs, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sub nsw i32 %55, %58
  store i32 %59, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %4, align 4
  %60 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %61 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 29 seq_cst
  %62 = atomicrmw add i64* @mulAtomicCounter, i64 3 seq_cst
  %63 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @memOpAtomicCounter, i64 14 seq_cst
  br label %65

65:                                               ; preds = %163, %37
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @num_procs, align 4
  %68 = icmp slt i32 %66, %67
  %69 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %71 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %68, label %73, label %170

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.mean_arg_t*, %struct.mean_arg_t** %5, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %75, i64 %77
  %79 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %78, i32 0, i32 0
  store i32 %74, i32* %79, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.mean_arg_t*, %struct.mean_arg_t** %5, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %83, i64 %85
  %87 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %86, i32 0, i32 1
  store i32 %82, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %88, 0
  %90 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %91 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %92 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %93 = atomicrmw add i64* @memOpAtomicCounter, i64 10 seq_cst
  br i1 %89, label %94, label %108

94:                                               ; preds = %73
  %95 = load %struct.mean_arg_t*, %struct.mean_arg_t** %5, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %95, i64 %97
  %99 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %7, align 4
  %104 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %105 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %106 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %107 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %108

108:                                              ; preds = %94, %73
  %109 = load %struct.mean_arg_t*, %struct.mean_arg_t** %5, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %109, i64 %111
  %113 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %8, align 4
  %115 = load i64*, i64** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  %119 = load %struct.mean_arg_t*, %struct.mean_arg_t** %5, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %119, i64 %121
  %123 = bitcast %struct.mean_arg_t* %122 to i8*
  %124 = call i32 @pthread_create(i64* %118, %union.pthread_attr_t* %2, i8* (i8*)* @calc_mean, i8* %123) #5
  %125 = icmp ne i32 %124, 0
  %126 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %127 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %128 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %129 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br i1 %125, label %130, label %159

130:                                              ; preds = %108
  call void @perror(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.12, i64 0, i64 0))
  %131 = load i64*, i64** %3, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i64, i64* %131, i64 %133
  %135 = load %struct.mean_arg_t*, %struct.mean_arg_t** %5, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %135, i64 %137
  %139 = bitcast %struct.mean_arg_t* %138 to i8*
  %140 = call i32 @pthread_create(i64* %134, %union.pthread_attr_t* %2, i8* (i8*)* @calc_mean, i8* %139) #5
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = icmp eq i32 %142, 0
  %144 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %145 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 15 seq_cst
  %146 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %147 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %143, label %148, label %152

148:                                              ; preds = %130
  %149 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %150 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %151 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %155

152:                                              ; preds = %130
  call void @__assert_fail(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.pthread_mean, i64 0, i64 0)) #7
  %153 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %154 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

155:                                              ; preds = %148
  %156 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %157 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %158 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %159

159:                                              ; preds = %155, %108
  %160 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %161 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %162 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  %166 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %167 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %168 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %169 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %65

170:                                              ; preds = %65
  store i32 0, i32* %4, align 4
  %171 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %172 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %173 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %174 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %175

175:                                              ; preds = %224, %170
  %176 = load i32, i32* %4, align 4
  %177 = load i32, i32* @num_procs, align 4
  %178 = icmp slt i32 %176, %177
  %179 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %180 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %181 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %182 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %178, label %183, label %231

183:                                              ; preds = %175
  %184 = load i64*, i64** %3, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @pthread_join(i64 %188, i8** null)
  %190 = icmp ne i32 %189, 0
  %191 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %192 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %193 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %194 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %190, label %195, label %220

195:                                              ; preds = %183
  call void @perror(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  %196 = load i64*, i64** %3, align 8
  %197 = load i32, i32* %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @pthread_join(i64 %200, i8** null)
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = icmp eq i32 %203, 0
  %205 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %206 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %207 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %208 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %204, label %209, label %213

209:                                              ; preds = %195
  %210 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %211 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %212 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %216

213:                                              ; preds = %195
  call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.pthread_mean, i64 0, i64 0)) #7
  %214 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %215 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

216:                                              ; preds = %209
  %217 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %218 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %219 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %220

220:                                              ; preds = %216, %183
  %221 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %222 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %223 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %224

224:                                              ; preds = %220
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %4, align 4
  %227 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %228 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %229 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %230 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %175

231:                                              ; preds = %175
  %232 = load i64*, i64** %3, align 8
  %233 = bitcast i64* %232 to i8*
  call void @free(i8* %233) #5
  %234 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %235 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %236 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @sysconf(i32) #1

declare dso_local void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MALLOC(i64) #0 {
  %2 = atomicrmw add i64* @MALLOC.glob, i64 1 seq_cst
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call noalias i8* @malloc(i64 %5) #5
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  %9 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %11 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %12 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %8, label %13, label %17

13:                                               ; preds = %1
  %14 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %15 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %20

17:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.MALLOC, i64 0, i64 0)) #7
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i8* %21
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_init(%union.pthread_attr_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setscope(%union.pthread_attr_t*, i32) #1

; Function Attrs: nounwind
declare !callback !2 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #1

declare dso_local i32 @pthread_join(i64, i8**) #3

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_cov() #0 {
  %1 = atomicrmw add i64* @pthread_cov.glob, i64 1 seq_cst
  %2 = alloca i32, align 4
  %3 = alloca %union.pthread_attr_t, align 8
  %4 = alloca i64*, align 8
  %5 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @row_lock, %union.pthread_mutexattr_t* null) #5
  %6 = call i32 @pthread_attr_init(%union.pthread_attr_t* %3) #5
  %7 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* %3, i32 0) #5
  store i32 0, i32* @next_row, align 4
  %8 = load i32, i32* @num_procs, align 4
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 8
  %11 = call i8* @MALLOC(i64 %10)
  %12 = bitcast i8* %11 to i64*
  store i64* %12, i64** %4, align 8
  store i32 0, i32* %2, align 4
  %13 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %15 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %18

18:                                               ; preds = %65, %0
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @num_procs, align 4
  %21 = icmp slt i32 %19, %20
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %24 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %25 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %21, label %26, label %72

26:                                               ; preds = %18
  %27 = load i64*, i64** %4, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = call i32 @pthread_create(i64* %30, %union.pthread_attr_t* %3, i8* (i8*)* @calc_cov, i8* null) #5
  %32 = icmp ne i32 %31, 0
  %33 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %35 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %32, label %37, label %61

37:                                               ; preds = %26
  call void @perror(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i64 0, i64 0))
  %38 = load i64*, i64** %4, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = call i32 @pthread_create(i64* %41, %union.pthread_attr_t* %3, i8* (i8*)* @calc_cov, i8* null) #5
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = icmp eq i32 %44, 0
  %46 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %48 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %45, label %50, label %54

50:                                               ; preds = %37
  %51 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %53 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %57

54:                                               ; preds = %37
  call void @__assert_fail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.pthread_cov, i64 0, i64 0)) #7
  %55 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

57:                                               ; preds = %50
  %58 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %59 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %61

61:                                               ; preds = %57, %26
  %62 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %18

72:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  %73 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %75 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %77

77:                                               ; preds = %126, %72
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @num_procs, align 4
  %80 = icmp slt i32 %78, %79
  %81 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %83 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %80, label %85, label %133

85:                                               ; preds = %77
  %86 = load i64*, i64** %4, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @pthread_join(i64 %90, i8** null)
  %92 = icmp ne i32 %91, 0
  %93 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %94 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %95 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %96 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %92, label %97, label %122

97:                                               ; preds = %85
  call void @perror(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  %98 = load i64*, i64** %4, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @pthread_join(i64 %102, i8** null)
  %104 = icmp ne i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = icmp eq i32 %105, 0
  %107 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %108 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %109 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %110 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %106, label %111, label %115

111:                                              ; preds = %97
  %112 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %113 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %114 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %118

115:                                              ; preds = %97
  call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.pthread_cov, i64 0, i64 0)) #7
  %116 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %117 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

118:                                              ; preds = %111
  %119 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %120 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %121 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %122

122:                                              ; preds = %118, %85
  %123 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %125 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %2, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %2, align 4
  %129 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %130 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %131 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %132 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %77

133:                                              ; preds = %77
  %134 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %135 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8**, i8*** %6, align 8
  call void @parse_args(i32 %8, i8** %9)
  %10 = load i32, i32* @num_rows, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 8, %11
  %13 = call noalias i8* @malloc(i64 %12) #5
  %14 = bitcast i8* %13 to i32**
  store i32** %14, i32*** @matrix, align 8
  store i32 0, i32* %7, align 4
  %15 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %17 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %20

20:                                               ; preds = %43, %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @num_rows, align 4
  %23 = icmp slt i32 %21, %22
  %24 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %25 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %26 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %27 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %23, label %28, label %50

28:                                               ; preds = %20
  %29 = load i32, i32* @num_cols, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 4, %30
  %32 = call noalias i8* @malloc(i64 %31) #5
  %33 = bitcast i8* %32 to i32*
  %34 = load i32**, i32*** @matrix, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32*, i32** %34, i64 %36
  store i32* %33, i32** %37, align 8
  %38 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %40 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  %46 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %48 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %20

50:                                               ; preds = %20
  %51 = load i32**, i32*** @matrix, align 8
  %52 = load i32, i32* @num_rows, align 4
  %53 = load i32, i32* @num_cols, align 4
  call void @generate_points(i32** %51, i32 %52, i32 %53)
  %54 = load i32**, i32*** @matrix, align 8
  %55 = load i32, i32* @num_rows, align 4
  %56 = load i32, i32* @num_cols, align 4
  call void @dump_points(i32** %54, i32 %55, i32 %56)
  %57 = load i32, i32* @num_rows, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = call noalias i8* @malloc(i64 %59) #5
  %61 = bitcast i8* %60 to i32*
  store i32* %61, i32** @mean, align 8
  %62 = load i32, i32* @num_rows, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = call noalias i8* @malloc(i64 %64) #5
  %66 = bitcast i8* %65 to i32**
  store i32** %66, i32*** @cov, align 8
  store i32 0, i32* %7, align 4
  %67 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %68 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 22 seq_cst
  %69 = atomicrmw add i64* @mulAtomicCounter, i64 2 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 11 seq_cst
  br label %72

72:                                               ; preds = %95, %50
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @num_rows, align 4
  %75 = icmp slt i32 %73, %74
  %76 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %77 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %78 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %79 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %75, label %80, label %102

80:                                               ; preds = %72
  %81 = load i32, i32* @num_rows, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 4, %82
  %84 = call noalias i8* @malloc(i64 %83) #5
  %85 = bitcast i8* %84 to i32*
  %86 = load i32**, i32*** @cov, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  store i32* %85, i32** %89, align 8
  %90 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %91 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %92 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %93 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %94 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %95

95:                                               ; preds = %80
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  %98 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %99 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %100 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %101 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %72

102:                                              ; preds = %72
  call void @pthread_mean()
  call void @pthread_cov()
  %103 = load i32**, i32*** @cov, align 8
  %104 = load i32, i32* @num_rows, align 4
  %105 = load i32, i32* @num_rows, align 4
  call void @dump_points(i32** %103, i32 %104, i32 %105)
  store i32 0, i32* %7, align 4
  %106 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %107 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %108 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %109 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %110

110:                                              ; preds = %135, %102
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @num_rows, align 4
  %113 = icmp slt i32 %111, %112
  %114 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %115 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %116 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %117 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %113, label %118, label %142

118:                                              ; preds = %110
  %119 = load i32**, i32*** @cov, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to i8*
  call void @free(i8* %124) #5
  %125 = load i32**, i32*** @matrix, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %125, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = bitcast i32* %129 to i8*
  call void @free(i8* %130) #5
  %131 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %132 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 15 seq_cst
  %133 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %134 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %135

135:                                              ; preds = %118
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  %138 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %139 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %140 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %141 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %110

142:                                              ; preds = %110
  %143 = load i32*, i32** @mean, align 8
  %144 = bitcast i32* %143 to i8*
  call void @free(i8* %144) #5
  %145 = load i32**, i32*** @cov, align 8
  %146 = bitcast i32** %145 to i8*
  call void @free(i8* %146) #5
  %147 = load i32**, i32*** @matrix, align 8
  %148 = bitcast i32** %147 to i8*
  call void @free(i8* %148) #5
  %149 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %150 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %151 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
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
  %pthread_mutex_lock.val = load i64, i64* @pthread_mutex_lock.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @formatLong.16, i32 0, i32 0), i64 %pthread_mutex_lock.val)
  %pthread_mutex_unlock.val = load i64, i64* @pthread_mutex_unlock.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @formatLong.17, i32 0, i32 0), i64 %pthread_mutex_unlock.val)
  %pthread_mean.val = load i64, i64* @pthread_mean.glob
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @formatLong.18, i32 0, i32 0), i64 %pthread_mean.val)
  %sysconf.val = load i64, i64* @sysconf.glob
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.19, i32 0, i32 0), i64 %sysconf.val)
  %perror.val = load i64, i64* @perror.glob
  %printf20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.20, i32 0, i32 0), i64 %perror.val)
  %__assert_fail.val = load i64, i64* @__assert_fail.glob
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.21, i32 0, i32 0), i64 %__assert_fail.val)
  %MALLOC.val = load i64, i64* @MALLOC.glob
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.22, i32 0, i32 0), i64 %MALLOC.val)
  %malloc.val = load i64, i64* @malloc.glob
  %printf23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.23, i32 0, i32 0), i64 %malloc.val)
  %pthread_attr_init.val = load i64, i64* @pthread_attr_init.glob
  %printf24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @formatLong.24, i32 0, i32 0), i64 %pthread_attr_init.val)
  %pthread_attr_setscope.val = load i64, i64* @pthread_attr_setscope.glob
  %printf25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @formatLong.25, i32 0, i32 0), i64 %pthread_attr_setscope.val)
  %pthread_create.val = load i64, i64* @pthread_create.glob
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @formatLong.26, i32 0, i32 0), i64 %pthread_create.val)
  %pthread_join.val = load i64, i64* @pthread_join.glob
  %printf27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @formatLong.27, i32 0, i32 0), i64 %pthread_join.val)
  %free.val = load i64, i64* @free.glob
  %printf28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.28, i32 0, i32 0), i64 %free.val)
  %pthread_cov.val = load i64, i64* @pthread_cov.glob
  %printf29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.29, i32 0, i32 0), i64 %pthread_cov.val)
  %pthread_mutex_init.val = load i64, i64* @pthread_mutex_init.glob
  %printf30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @formatLong.30, i32 0, i32 0), i64 %pthread_mutex_init.val)
  %main.val = load i64, i64* @main.glob
  %printf31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.31, i32 0, i32 0), i64 %main.val)
  ret i32 0
}

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
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
