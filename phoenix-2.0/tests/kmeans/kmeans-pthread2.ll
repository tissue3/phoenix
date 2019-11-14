; ModuleID = 'kmeans-pthread.ll'
source_filename = "kmeans-pthread.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.thread_arg = type { i32, i32, i32* }
%union.pthread_attr_t = type { i64, [48 x i8] }

@num_pts = dso_local global i32 0, align 4
@dim = common dso_local global i32 0, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"%5d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@num_points = common dso_local global i32 0, align 4
@num_means = common dso_local global i32 0, align 4
@grid_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"d:c:p:s:\00", align 1
@optarg = external dso_local global i8*, align 8
@.str.3 = private unnamed_addr constant [82 x i8] c"Usage: %s -d <vector dimension> -c <num clusters> -p <num points> -s <grid size>\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Illegal argument value. All values must be numeric and greater than 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Dimension = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Number of clusters = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Number of points = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Size of each dimension = %d\0A\00", align 1
@points = common dso_local global i32** null, align 8
@means = common dso_local global i32** null, align 8
@clusters = common dso_local global i32* null, align 8
@modified = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [19 x i8] c"Generating points\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Generating means\0A\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"Error at line\0A\09(num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0\0ASystem Msg\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"((num_procs = sysconf(_SC_NPROCESSORS_ONLN)) <= 0) == 0\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"kmeans-pthread.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.14 = private unnamed_addr constant [93 x i8] c"Error at line\0A\09(pid = (pthread_t *)malloc(sizeof(pthread_t) * num_procs)) == NULL\0ASystem Msg\00", align 1
@.str.15 = private unnamed_addr constant [80 x i8] c"((pid = (pthread_t *)malloc(sizeof(pthread_t) * num_procs)) == ((void*)0)) == 0\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Starting iterative algorithm\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.18 = private unnamed_addr constant [83 x i8] c"Error at line\0A\09(arg = (thread_arg *)malloc(sizeof(thread_arg))) == NULL\0ASystem Msg\00", align 1
@.str.19 = private unnamed_addr constant [70 x i8] c"((arg = (thread_arg *)malloc(sizeof(thread_arg))) == ((void*)0)) == 0\00", align 1
@.str.20 = private unnamed_addr constant [108 x i8] c"Error at line\0A\09(pthread_create(&(pid[num_threads++]), &attr, find_clusters, (void *)(arg))) != 0\0ASystem Msg\00", align 1
@.str.21 = private unnamed_addr constant [89 x i8] c"((pthread_create(&(pid[num_threads++]), &attr, find_clusters, (void *)(arg))) != 0) == 0\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"num_threads == num_procs\00", align 1
@.str.23 = private unnamed_addr constant [105 x i8] c"Error at line\0A\09(pthread_create(&(pid[num_threads++]), &attr, calc_means, (void *)(arg))) != 0\0ASystem Msg\00", align 1
@.str.24 = private unnamed_addr constant [86 x i8] c"((pthread_create(&(pid[num_threads++]), &attr, calc_means, (void *)(arg))) != 0) == 0\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\0A\0AFinal means:\0A\00", align 1
@llvmInstrAtomicCounter = common global i64 0
@basicBlockAtomicCounter = common global i64 0
@mulAtomicCounter = common global i64 0
@memOpAtomicCounter = common global i64 0
@branchAtomicCounter = common global i64 0
@dump_points.glob = common global i64 0
@fprintf.glob = common global i64 0
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
@llvm.memset.p0i8.i64.glob = common global i64 0
@free.glob = common global i64 0
@main.glob = common global i64 0
@malloc.glob = common global i64 0
@pthread_attr_init.glob = common global i64 0
@pthread_attr_setscope.glob = common global i64 0
@sysconf.glob = common global i64 0
@perror.glob = common global i64 0
@__assert_fail.glob = common global i64 0
@pthread_create.glob = common global i64 0
@pthread_join.glob = common global i64 0
@formatLong = private unnamed_addr constant [31 x i8] c"\0A\0AllvmInstrAtomicCounter: %ld\0A\00", align 1
@formatLong.1 = private unnamed_addr constant [30 x i8] c"basicBlockAtomicCounter: %ld\0A\00", align 1
@formatLong.2 = private unnamed_addr constant [23 x i8] c"mulAtomicCounter: %ld\0A\00", align 1
@formatLong.3 = private unnamed_addr constant [25 x i8] c"memOpAtomicCounter: %ld\0A\00", align 1
@formatLong.4 = private unnamed_addr constant [26 x i8] c"branchAtomicCounter: %ld\0A\00", align 1
@formatLong.5 = private unnamed_addr constant [18 x i8] c"dump_points: %ld\0A\00", align 1
@formatLong.6 = private unnamed_addr constant [14 x i8] c"fprintf: %ld\0A\00", align 1
@formatLong.7 = private unnamed_addr constant [17 x i8] c"parse_args: %ld\0A\00", align 1
@formatLong.8 = private unnamed_addr constant [13 x i8] c"getopt: %ld\0A\00", align 1
@formatLong.9 = private unnamed_addr constant [11 x i8] c"atoi: %ld\0A\00", align 1
@formatLong.10 = private unnamed_addr constant [13 x i8] c"printf: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [11 x i8] c"exit: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [22 x i8] c"generate_points: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [11 x i8] c"rand: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [17 x i8] c"add_to_sum: %ld\0A\00", align 1
@formatLong.15 = private unnamed_addr constant [20 x i8] c"find_clusters: %ld\0A\00", align 1
@formatLong.16 = private unnamed_addr constant [18 x i8] c"get_sq_dist: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [17 x i8] c"calc_means: %ld\0A\00", align 1
@formatLong.18 = private unnamed_addr constant [27 x i8] c"llvm.memset.p0i8.i64: %ld\0A\00", align 1
@formatLong.19 = private unnamed_addr constant [11 x i8] c"free: %ld\0A\00", align 1
@formatLong.20 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.21 = private unnamed_addr constant [13 x i8] c"malloc: %ld\0A\00", align 1
@formatLong.22 = private unnamed_addr constant [24 x i8] c"pthread_attr_init: %ld\0A\00", align 1
@formatLong.23 = private unnamed_addr constant [28 x i8] c"pthread_attr_setscope: %ld\0A\00", align 1
@formatLong.24 = private unnamed_addr constant [14 x i8] c"sysconf: %ld\0A\00", align 1
@formatLong.25 = private unnamed_addr constant [13 x i8] c"perror: %ld\0A\00", align 1
@formatLong.26 = private unnamed_addr constant [20 x i8] c"__assert_fail: %ld\0A\00", align 1
@formatLong.27 = private unnamed_addr constant [21 x i8] c"pthread_create: %ld\0A\00", align 1
@formatLong.28 = private unnamed_addr constant [19 x i8] c"pthread_join: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_points(i32**, i32) #0 {
  %3 = atomicrmw add i64* @dump_points.glob, i64 1 seq_cst
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

12:                                               ; preds = %63, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %15, label %20, label %70

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
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = load i32**, i32*** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
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
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %59 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %61 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %67 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %68 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %12

70:                                               ; preds = %12
  %71 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
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
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6
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
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i8* %56)
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
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 1) #8
  %95 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %96 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  unreachable

97:                                               ; preds = %86
  %98 = load i32, i32* @dim, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @num_means, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @num_points, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @grid_size, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  %106 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %107 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %108 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
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
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_clusters(i8*) #0 {
  %2 = atomicrmw add i64* @find_clusters.glob, i64 1 seq_cst
  %3 = alloca i8*, align 8
  %4 = alloca %struct.thread_arg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.thread_arg*
  store %struct.thread_arg* %13, %struct.thread_arg** %4, align 8
  %14 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %15 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.thread_arg*, %struct.thread_arg** %4, align 8
  %19 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %5, align 4
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 27 seq_cst
  %25 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @memOpAtomicCounter, i64 12 seq_cst
  br label %27

27:                                               ; preds = %120, %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %28, %29
  %31 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %33 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %30, label %35, label %127

35:                                               ; preds = %27
  %36 = load i32**, i32*** @points, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = load i32**, i32*** @means, align 8
  %42 = getelementptr inbounds i32*, i32** %41, i64 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @get_sq_dist(i32* %40, i32* %43)
  store i32 %44, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %6, align 4
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %47 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %49

49:                                               ; preds = %87, %35
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @num_means, align 4
  %52 = icmp slt i32 %50, %51
  %53 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %55 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %52, label %57, label %94

57:                                               ; preds = %49
  %58 = load i32**, i32*** @points, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32**, i32*** @means, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @get_sq_dist(i32* %62, i32* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ult i32 %69, %70
  %72 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %74 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br i1 %71, label %76, label %83

76:                                               ; preds = %57
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %9, align 4
  %79 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %81 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %83

83:                                               ; preds = %76, %57
  %84 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %85 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %86 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %91 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %92 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %93 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %49

94:                                               ; preds = %49
  %95 = load i32*, i32** @clusters, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %99, %100
  %102 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %103 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %104 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %105 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %101, label %106, label %116

106:                                              ; preds = %94
  %107 = load i32, i32* %9, align 4
  %108 = load i32*, i32** @clusters, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  store i32 1, i32* @modified, align 4
  %112 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %113 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %114 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %115 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %116

116:                                              ; preds = %106, %94
  %117 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %118 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %119 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  %123 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %125 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %126 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %27

127:                                              ; preds = %27
  %128 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %129 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @calc_means(i8*) #0 {
  %2 = atomicrmw add i64* @calc_means.glob, i64 1 seq_cst
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.thread_arg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.thread_arg*
  store %struct.thread_arg* %12, %struct.thread_arg** %8, align 8
  %13 = load %struct.thread_arg*, %struct.thread_arg** %8, align 8
  %14 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.thread_arg*, %struct.thread_arg** %8, align 8
  %18 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.thread_arg*, %struct.thread_arg** %8, align 8
  %22 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  %25 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 30 seq_cst
  %27 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @memOpAtomicCounter, i64 15 seq_cst
  br label %29

29:                                               ; preds = %147, %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %30, %31
  %33 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %35 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %32, label %37, label %154

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  %39 = bitcast i32* %38 to i8*
  %40 = load i32, i32* @dim, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 %42, i1 false)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %43 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %45 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %48

48:                                               ; preds = %85, %37
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @num_points, align 4
  %51 = icmp slt i32 %49, %50
  %52 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %53 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %54 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %51, label %56, label %92

56:                                               ; preds = %48
  %57 = load i32*, i32** @clusters, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %61, %62
  %64 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %65 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %66 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %67 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %63, label %68, label %81

68:                                               ; preds = %56
  %69 = load i32*, i32** %7, align 8
  %70 = load i32**, i32*** @points, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32*, i32** %70, i64 %72
  %74 = load i32*, i32** %73, align 8
  call void @add_to_sum(i32* %69, i32* %74)
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %79 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %81

81:                                               ; preds = %68, %56
  %82 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  %88 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %90 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %91 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %48

92:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  %93 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %94 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %95 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %96 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %97

97:                                               ; preds = %136, %92
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @dim, align 4
  %100 = icmp slt i32 %98, %99
  %101 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %102 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %103 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %104 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %100, label %105, label %143

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  %108 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %109 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %110 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %111 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %107, label %112, label %132

112:                                              ; preds = %105
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %6, align 4
  %119 = sdiv i32 %117, %118
  %120 = load i32**, i32*** @means, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %119, i32* %127, align 4
  %128 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %129 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 17 seq_cst
  %130 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %131 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br label %132

132:                                              ; preds = %112, %105
  %133 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %134 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %135 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  %139 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %140 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %141 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %142 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %97

143:                                              ; preds = %97
  %144 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %145 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %146 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %147

147:                                              ; preds = %143
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  %150 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %151 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %152 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %153 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %29

154:                                              ; preds = %29
  %155 = load i32*, i32** %7, align 8
  %156 = bitcast i32* %155 to i8*
  call void @free(i8* %156) #6
  %157 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %158 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %159 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i8* null
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %union.pthread_attr_t, align 8
  %12 = alloca %struct.thread_arg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i8**, i8*** %6, align 8
  call void @parse_args(i32 %16, i8** %17)
  %18 = load i32, i32* @num_points, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = call noalias i8* @malloc(i64 %20) #6
  %22 = bitcast i8* %21 to i32**
  store i32** %22, i32*** @points, align 8
  store i32 0, i32* %9, align 4
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 27 seq_cst
  %25 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %27 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %28

28:                                               ; preds = %51, %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @num_points, align 4
  %31 = icmp slt i32 %29, %30
  %32 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %33 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %34 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %35 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %31, label %36, label %58

36:                                               ; preds = %28
  %37 = load i32, i32* @dim, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = call noalias i8* @malloc(i64 %39) #6
  %41 = bitcast i8* %40 to i32*
  %42 = load i32**, i32*** @points, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  store i32* %41, i32** %45, align 8
  %46 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %48 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  %54 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %56 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %57 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %28

58:                                               ; preds = %28
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %61 = load i32**, i32*** @points, align 8
  %62 = load i32, i32* @num_points, align 4
  call void @generate_points(i32** %61, i32 %62)
  %63 = load i32, i32* @num_means, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 8, %64
  %66 = call noalias i8* @malloc(i64 %65) #6
  %67 = bitcast i8* %66 to i32**
  store i32** %67, i32*** @means, align 8
  store i32 0, i32* %9, align 4
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %70 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %73

73:                                               ; preds = %96, %58
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @num_means, align 4
  %76 = icmp slt i32 %74, %75
  %77 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %79 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %76, label %81, label %103

81:                                               ; preds = %73
  %82 = load i32, i32* @dim, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 4, %83
  %85 = call noalias i8* @malloc(i64 %84) #6
  %86 = bitcast i8* %85 to i32*
  %87 = load i32**, i32*** @means, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  store i32* %86, i32** %90, align 8
  %91 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %93 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %94 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %95 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  %99 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %100 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %101 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %102 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %73

103:                                              ; preds = %73
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %106 = load i32**, i32*** @means, align 8
  %107 = load i32, i32* @num_means, align 4
  call void @generate_points(i32** %106, i32 %107)
  %108 = load i32, i32* @num_points, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 4, %109
  %111 = call noalias i8* @malloc(i64 %110) #6
  %112 = bitcast i8* %111 to i32*
  store i32* %112, i32** @clusters, align 8
  %113 = load i32*, i32** @clusters, align 8
  %114 = bitcast i32* %113 to i8*
  %115 = load i32, i32* @num_points, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 4, %116
  call void @llvm.memset.p0i8.i64(i8* align 4 %114, i8 -1, i64 %117, i1 false)
  %118 = call i32 @pthread_attr_init(%union.pthread_attr_t* %11) #6
  %119 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* %11, i32 0) #6
  %120 = call i64 @sysconf(i32 84) #6
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %7, align 4
  %122 = icmp sle i32 %121, 0
  %123 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 24 seq_cst
  %125 = atomicrmw add i64* @mulAtomicCounter, i64 2 seq_cst
  %126 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %127 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br i1 %122, label %128, label %149

128:                                              ; preds = %103
  call void @perror(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0))
  %129 = call i64 @sysconf(i32 84) #6
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %7, align 4
  %131 = icmp sle i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = icmp eq i32 %132, 0
  %134 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %135 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %136 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %137 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %133, label %138, label %142

138:                                              ; preds = %128
  %139 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %140 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %141 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %145

142:                                              ; preds = %128
  call void @__assert_fail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %143 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %144 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

145:                                              ; preds = %138
  %146 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %147 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %148 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %149

149:                                              ; preds = %145, %103
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 8, %151
  %153 = call noalias i8* @malloc(i64 %152) #6
  %154 = bitcast i8* %153 to i64*
  store i64* %154, i64** %10, align 8
  %155 = icmp eq i64* %154, null
  %156 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %157 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %158 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %159 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %160 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %155, label %161, label %186

161:                                              ; preds = %149
  call void @perror(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0))
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 8, %163
  %165 = call noalias i8* @malloc(i64 %164) #6
  %166 = bitcast i8* %165 to i64*
  store i64* %166, i64** %10, align 8
  %167 = icmp eq i64* %166, null
  %168 = zext i1 %167 to i32
  %169 = icmp eq i32 %168, 0
  %170 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %171 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %172 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %173 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %174 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %169, label %175, label %179

175:                                              ; preds = %161
  %176 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %177 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %178 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %182

179:                                              ; preds = %161
  call void @__assert_fail(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %180 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %181 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

182:                                              ; preds = %175
  %183 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %184 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %185 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %186

186:                                              ; preds = %182, %149
  store i32 1, i32* @modified, align 4
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %188 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %189 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %190 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %191 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %192

192:                                              ; preds = %547, %186
  %193 = load i32, i32* @modified, align 4
  %194 = icmp ne i32 %193, 0
  %195 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %196 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %197 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %198 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %194, label %199, label %551

199:                                              ; preds = %192
  %200 = load i32, i32* @num_points, align 4
  %201 = load i32, i32* %7, align 4
  %202 = sdiv i32 %200, %201
  store i32 %202, i32* %13, align 4
  %203 = load i32, i32* @num_points, align 4
  %204 = load i32, i32* %7, align 4
  %205 = srem i32 %203, %204
  store i32 %205, i32* %14, align 4
  store i32 0, i32* @modified, align 4
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %208 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %209 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %210 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %211 = atomicrmw add i64* @memOpAtomicCounter, i64 10 seq_cst
  br label %212

212:                                              ; preds = %314, %199
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* @num_points, align 4
  %215 = icmp slt i32 %213, %214
  %216 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %217 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %218 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %219 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %215, label %220, label %324

220:                                              ; preds = %212
  %221 = call noalias i8* @malloc(i64 16) #6
  %222 = bitcast i8* %221 to %struct.thread_arg*
  store %struct.thread_arg* %222, %struct.thread_arg** %12, align 8
  %223 = icmp eq %struct.thread_arg* %222, null
  %224 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %225 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %226 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %227 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %223, label %228, label %249

228:                                              ; preds = %220
  call void @perror(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.18, i64 0, i64 0))
  %229 = call noalias i8* @malloc(i64 16) #6
  %230 = bitcast i8* %229 to %struct.thread_arg*
  store %struct.thread_arg* %230, %struct.thread_arg** %12, align 8
  %231 = icmp eq %struct.thread_arg* %230, null
  %232 = zext i1 %231 to i32
  %233 = icmp eq i32 %232, 0
  %234 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %235 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %236 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %237 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %233, label %238, label %242

238:                                              ; preds = %228
  %239 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %240 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %241 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %245

242:                                              ; preds = %228
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 304, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %243 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %244 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

245:                                              ; preds = %238
  %246 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %247 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %248 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %249

249:                                              ; preds = %245, %220
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %252 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* %13, align 4
  %254 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %255 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %254, i32 0, i32 1
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* %14, align 4
  %257 = icmp sgt i32 %256, 0
  %258 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %259 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %260 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %261 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br i1 %257, label %262, label %273

262:                                              ; preds = %249
  %263 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %264 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  %267 = load i32, i32* %14, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %14, align 4
  %269 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %270 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %271 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %272 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %273

273:                                              ; preds = %262, %249
  %274 = load i64*, i64** %10, align 8
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %15, align 4
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i64, i64* %274, i64 %277
  %279 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %280 = bitcast %struct.thread_arg* %279 to i8*
  %281 = call i32 @pthread_create(i64* %278, %union.pthread_attr_t* %11, i8* (i8*)* @find_clusters, i8* %280) #6
  %282 = icmp ne i32 %281, 0
  %283 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %284 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %285 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %286 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %282, label %287, label %314

287:                                              ; preds = %273
  call void @perror(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.20, i64 0, i64 0))
  %288 = load i64*, i64** %10, align 8
  %289 = load i32, i32* %15, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %15, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i64, i64* %288, i64 %291
  %293 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %294 = bitcast %struct.thread_arg* %293 to i8*
  %295 = call i32 @pthread_create(i64* %292, %union.pthread_attr_t* %11, i8* (i8*)* @find_clusters, i8* %294) #6
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i32
  %298 = icmp eq i32 %297, 0
  %299 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %300 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %301 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %302 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %298, label %303, label %307

303:                                              ; preds = %287
  %304 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %305 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %306 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %310

307:                                              ; preds = %287
  call void @__assert_fail(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %308 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %309 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

310:                                              ; preds = %303
  %311 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %312 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %313 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %314

314:                                              ; preds = %310, %273
  %315 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %316 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %8, align 4
  %319 = add nsw i32 %318, %317
  store i32 %319, i32* %8, align 4
  %320 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %321 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %322 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %323 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %212

324:                                              ; preds = %212
  %325 = load i32, i32* %15, align 4
  %326 = load i32, i32* %7, align 4
  %327 = icmp eq i32 %325, %326
  %328 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %329 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %330 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %331 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %327, label %332, label %336

332:                                              ; preds = %324
  %333 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %334 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %335 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %339

336:                                              ; preds = %324
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %337 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %338 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

339:                                              ; preds = %332
  store i32 0, i32* %9, align 4
  %340 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %341 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %342 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %343 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %344

344:                                              ; preds = %363, %339
  %345 = load i32, i32* %9, align 4
  %346 = load i32, i32* %15, align 4
  %347 = icmp slt i32 %345, %346
  %348 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %349 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %350 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %351 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %347, label %352, label %370

352:                                              ; preds = %344
  %353 = load i64*, i64** %10, align 8
  %354 = load i32, i32* %9, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = call i32 @pthread_join(i64 %357, i8** null)
  %359 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %360 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %361 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %362 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %363

363:                                              ; preds = %352
  %364 = load i32, i32* %9, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %9, align 4
  %366 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %367 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %368 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %369 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %344

370:                                              ; preds = %344
  %371 = load i32, i32* @num_means, align 4
  %372 = load i32, i32* %7, align 4
  %373 = sdiv i32 %371, %372
  store i32 %373, i32* %13, align 4
  %374 = load i32, i32* @num_means, align 4
  %375 = load i32, i32* %7, align 4
  %376 = srem i32 %374, %375
  store i32 %376, i32* %14, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %377 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %378 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %379 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %380 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %381

381:                                              ; preds = %491, %370
  %382 = load i32, i32* %8, align 4
  %383 = load i32, i32* @num_means, align 4
  %384 = icmp slt i32 %382, %383
  %385 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %386 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %387 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %388 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %384, label %389, label %501

389:                                              ; preds = %381
  %390 = call noalias i8* @malloc(i64 16) #6
  %391 = bitcast i8* %390 to %struct.thread_arg*
  store %struct.thread_arg* %391, %struct.thread_arg** %12, align 8
  %392 = icmp eq %struct.thread_arg* %391, null
  %393 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %394 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %395 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %396 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %392, label %397, label %418

397:                                              ; preds = %389
  call void @perror(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.18, i64 0, i64 0))
  %398 = call noalias i8* @malloc(i64 16) #6
  %399 = bitcast i8* %398 to %struct.thread_arg*
  store %struct.thread_arg* %399, %struct.thread_arg** %12, align 8
  %400 = icmp eq %struct.thread_arg* %399, null
  %401 = zext i1 %400 to i32
  %402 = icmp eq i32 %401, 0
  %403 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %404 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %405 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %406 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %402, label %407, label %411

407:                                              ; preds = %397
  %408 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %409 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %410 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %414

411:                                              ; preds = %397
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 326, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %412 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %413 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

414:                                              ; preds = %407
  %415 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %416 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %417 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %418

418:                                              ; preds = %414, %389
  %419 = load i32, i32* %8, align 4
  %420 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %421 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 8
  %422 = load i32, i32* @dim, align 4
  %423 = sext i32 %422 to i64
  %424 = mul i64 %423, 4
  %425 = call noalias i8* @malloc(i64 %424) #6
  %426 = bitcast i8* %425 to i32*
  %427 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %428 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %427, i32 0, i32 2
  store i32* %426, i32** %428, align 8
  %429 = load i32, i32* %13, align 4
  %430 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %431 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %430, i32 0, i32 1
  store i32 %429, i32* %431, align 4
  %432 = load i32, i32* %14, align 4
  %433 = icmp sgt i32 %432, 0
  %434 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %435 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %436 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %437 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %438 = atomicrmw add i64* @memOpAtomicCounter, i64 10 seq_cst
  br i1 %433, label %439, label %450

439:                                              ; preds = %418
  %440 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %441 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %440, i32 0, i32 1
  %442 = load i32, i32* %441, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %441, align 4
  %444 = load i32, i32* %14, align 4
  %445 = add nsw i32 %444, -1
  store i32 %445, i32* %14, align 4
  %446 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %447 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %448 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %449 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %450

450:                                              ; preds = %439, %418
  %451 = load i64*, i64** %10, align 8
  %452 = load i32, i32* %15, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %15, align 4
  %454 = sext i32 %452 to i64
  %455 = getelementptr inbounds i64, i64* %451, i64 %454
  %456 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %457 = bitcast %struct.thread_arg* %456 to i8*
  %458 = call i32 @pthread_create(i64* %455, %union.pthread_attr_t* %11, i8* (i8*)* @calc_means, i8* %457) #6
  %459 = icmp ne i32 %458, 0
  %460 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %461 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %462 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %463 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %459, label %464, label %491

464:                                              ; preds = %450
  call void @perror(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.23, i64 0, i64 0))
  %465 = load i64*, i64** %10, align 8
  %466 = load i32, i32* %15, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %15, align 4
  %468 = sext i32 %466 to i64
  %469 = getelementptr inbounds i64, i64* %465, i64 %468
  %470 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %471 = bitcast %struct.thread_arg* %470 to i8*
  %472 = call i32 @pthread_create(i64* %469, %union.pthread_attr_t* %11, i8* (i8*)* @calc_means, i8* %471) #6
  %473 = icmp ne i32 %472, 0
  %474 = zext i1 %473 to i32
  %475 = icmp eq i32 %474, 0
  %476 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %477 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %478 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %479 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %475, label %480, label %484

480:                                              ; preds = %464
  %481 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %482 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %483 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %487

484:                                              ; preds = %464
  call void @__assert_fail(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %485 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %486 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

487:                                              ; preds = %480
  %488 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %489 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %490 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %491

491:                                              ; preds = %487, %450
  %492 = load %struct.thread_arg*, %struct.thread_arg** %12, align 8
  %493 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %8, align 4
  %496 = add nsw i32 %495, %494
  store i32 %496, i32* %8, align 4
  %497 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %498 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %499 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %500 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %381

501:                                              ; preds = %381
  %502 = load i32, i32* %15, align 4
  %503 = load i32, i32* %7, align 4
  %504 = icmp eq i32 %502, %503
  %505 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %506 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %507 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %508 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %504, label %509, label %513

509:                                              ; preds = %501
  %510 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %511 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %512 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %516

513:                                              ; preds = %501
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %514 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %515 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

516:                                              ; preds = %509
  store i32 0, i32* %9, align 4
  %517 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %518 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %519 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %520 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %521

521:                                              ; preds = %540, %516
  %522 = load i32, i32* %9, align 4
  %523 = load i32, i32* %15, align 4
  %524 = icmp slt i32 %522, %523
  %525 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %526 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %527 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %528 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %524, label %529, label %547

529:                                              ; preds = %521
  %530 = load i64*, i64** %10, align 8
  %531 = load i32, i32* %9, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i64, i64* %530, i64 %532
  %534 = load i64, i64* %533, align 8
  %535 = call i32 @pthread_join(i64 %534, i8** null)
  %536 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %537 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %538 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %539 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %540

540:                                              ; preds = %529
  %541 = load i32, i32* %9, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %9, align 4
  %543 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %544 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %545 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %546 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %521

547:                                              ; preds = %521
  %548 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %549 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %550 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %192

551:                                              ; preds = %192
  %552 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %553 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %552, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %554 = load i32**, i32*** @means, align 8
  %555 = load i32, i32* @num_means, align 4
  call void @dump_points(i32** %554, i32 %555)
  store i32 0, i32* %9, align 4
  %556 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %557 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %558 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %559 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %560

560:                                              ; preds = %579, %551
  %561 = load i32, i32* %9, align 4
  %562 = load i32, i32* @num_points, align 4
  %563 = icmp slt i32 %561, %562
  %564 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %565 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %566 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %567 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %563, label %568, label %586

568:                                              ; preds = %560
  %569 = load i32**, i32*** @points, align 8
  %570 = load i32, i32* %9, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i32*, i32** %569, i64 %571
  %573 = load i32*, i32** %572, align 8
  %574 = bitcast i32* %573 to i8*
  call void @free(i8* %574) #6
  %575 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %576 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %577 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %578 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %579

579:                                              ; preds = %568
  %580 = load i32, i32* %9, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %9, align 4
  %582 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %583 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %584 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %585 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %560

586:                                              ; preds = %560
  %587 = load i32**, i32*** @points, align 8
  %588 = bitcast i32** %587 to i8*
  call void @free(i8* %588) #6
  store i32 0, i32* %9, align 4
  %589 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %590 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %591 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %592 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %593

593:                                              ; preds = %612, %586
  %594 = load i32, i32* %9, align 4
  %595 = load i32, i32* @num_means, align 4
  %596 = icmp slt i32 %594, %595
  %597 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %598 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %599 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %600 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %596, label %601, label %619

601:                                              ; preds = %593
  %602 = load i32**, i32*** @means, align 8
  %603 = load i32, i32* %9, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds i32*, i32** %602, i64 %604
  %606 = load i32*, i32** %605, align 8
  %607 = bitcast i32* %606 to i8*
  call void @free(i8* %607) #6
  %608 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %609 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %610 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %611 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %612

612:                                              ; preds = %601
  %613 = load i32, i32* %9, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %9, align 4
  %615 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %616 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %617 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %618 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %593

619:                                              ; preds = %593
  %620 = load i32**, i32*** @means, align 8
  %621 = bitcast i32** %620 to i8*
  call void @free(i8* %621) #6
  %622 = load i32*, i32** @clusters, align 8
  %623 = bitcast i32* %622 to i8*
  call void @free(i8* %623) #6
  %624 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %625 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %626 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
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
  %dump_points.val = load i64, i64* @dump_points.glob
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.5, i32 0, i32 0), i64 %dump_points.val)
  %fprintf.val = load i64, i64* @fprintf.glob
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.6, i32 0, i32 0), i64 %fprintf.val)
  %parse_args.val = load i64, i64* @parse_args.glob
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.7, i32 0, i32 0), i64 %parse_args.val)
  %getopt.val = load i64, i64* @getopt.glob
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.8, i32 0, i32 0), i64 %getopt.val)
  %atoi.val = load i64, i64* @atoi.glob
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.9, i32 0, i32 0), i64 %atoi.val)
  %printf.val = load i64, i64* @printf.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.10, i32 0, i32 0), i64 %printf.val)
  %exit.val = load i64, i64* @exit.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.11, i32 0, i32 0), i64 %exit.val)
  %generate_points.val = load i64, i64* @generate_points.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @formatLong.12, i32 0, i32 0), i64 %generate_points.val)
  %rand.val = load i64, i64* @rand.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.13, i32 0, i32 0), i64 %rand.val)
  %add_to_sum.val = load i64, i64* @add_to_sum.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.14, i32 0, i32 0), i64 %add_to_sum.val)
  %find_clusters.val = load i64, i64* @find_clusters.glob
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.15, i32 0, i32 0), i64 %find_clusters.val)
  %get_sq_dist.val = load i64, i64* @get_sq_dist.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.16, i32 0, i32 0), i64 %get_sq_dist.val)
  %calc_means.val = load i64, i64* @calc_means.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.17, i32 0, i32 0), i64 %calc_means.val)
  %llvm.memset.p0i8.i64.val = load i64, i64* @llvm.memset.p0i8.i64.glob
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @formatLong.18, i32 0, i32 0), i64 %llvm.memset.p0i8.i64.val)
  %free.val = load i64, i64* @free.glob
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.19, i32 0, i32 0), i64 %free.val)
  %main.val = load i64, i64* @main.glob
  %printf20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.20, i32 0, i32 0), i64 %main.val)
  %malloc.val = load i64, i64* @malloc.glob
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.21, i32 0, i32 0), i64 %malloc.val)
  %pthread_attr_init.val = load i64, i64* @pthread_attr_init.glob
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @formatLong.22, i32 0, i32 0), i64 %pthread_attr_init.val)
  %pthread_attr_setscope.val = load i64, i64* @pthread_attr_setscope.glob
  %printf23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @formatLong.23, i32 0, i32 0), i64 %pthread_attr_setscope.val)
  %sysconf.val = load i64, i64* @sysconf.glob
  %printf24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.24, i32 0, i32 0), i64 %sysconf.val)
  %perror.val = load i64, i64* @perror.glob
  %printf25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.25, i32 0, i32 0), i64 %perror.val)
  %__assert_fail.val = load i64, i64* @__assert_fail.glob
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.26, i32 0, i32 0), i64 %__assert_fail.val)
  %pthread_create.val = load i64, i64* @pthread_create.glob
  %printf27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @formatLong.27, i32 0, i32 0), i64 %pthread_create.val)
  %pthread_join.val = load i64, i64* @pthread_join.glob
  %printf28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @formatLong.28, i32 0, i32 0), i64 %pthread_join.val)
  ret i32 0
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_init(%union.pthread_attr_t*) #2

; Function Attrs: nounwind
declare dso_local i32 @pthread_attr_setscope(%union.pthread_attr_t*, i32) #2

; Function Attrs: nounwind
declare dso_local i64 @sysconf(i32) #2

declare dso_local void @perror(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare !callback !2 dso_local i32 @pthread_create(i64*, %union.pthread_attr_t*, i8* (i8*)*, i8*) #2

declare dso_local i32 @pthread_join(i64, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
