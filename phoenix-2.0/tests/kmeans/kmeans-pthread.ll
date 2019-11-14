; ModuleID = 'kmeans-pthread.c'
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_points(i32**, i32) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @dim, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = load i32**, i32*** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %12

31:                                               ; preds = %12
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %7

37:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_args(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 1000, i32* @num_points, align 4
  store i32 10, i32* @num_means, align 4
  store i32 3, i32* @dim, align 4
  store i32 100, i32* @grid_size, align 4
  br label %6

6:                                                ; preds = %30, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %30 [
    i32 100, label %13
    i32 99, label %16
    i32 112, label %19
    i32 115, label %22
    i32 63, label %25
  ]

13:                                               ; preds = %11
  %14 = load i8*, i8** @optarg, align 8
  %15 = call i32 @atoi(i8* %14) #7
  store i32 %15, i32* @dim, align 4
  br label %30

16:                                               ; preds = %11
  %17 = load i8*, i8** @optarg, align 8
  %18 = call i32 @atoi(i8* %17) #7
  store i32 %18, i32* @num_means, align 4
  br label %30

19:                                               ; preds = %11
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i32 @atoi(i8* %20) #7
  store i32 %21, i32* @num_points, align 4
  br label %30

22:                                               ; preds = %11
  %23 = load i8*, i8** @optarg, align 8
  %24 = call i32 @atoi(i8* %23) #7
  store i32 %24, i32* @grid_size, align 4
  br label %30

25:                                               ; preds = %11
  %26 = load i8**, i8*** %4, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i8* %28)
  call void @exit(i32 1) #8
  unreachable

30:                                               ; preds = %11, %22, %19, %16, %13
  br label %6

31:                                               ; preds = %6
  %32 = load i32, i32* @dim, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @num_means, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @num_points, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @grid_size, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40, %37, %34, %31
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

45:                                               ; preds = %40
  %46 = load i32, i32* @dim, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @num_means, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @num_points, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @grid_size, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %52)
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
  %3 = alloca i32**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %28, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @dim, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = call i32 @rand() #6
  %18 = load i32, i32* @grid_size, align 4
  %19 = srem i32 %17, %18
  %20 = load i32**, i32*** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %19, i32* %27, align 4
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %12

31:                                               ; preds = %12
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %7

35:                                               ; preds = %7
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_to_sum(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %22, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @dim, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %15
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %10
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %6

25:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @find_clusters(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thread_arg*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.thread_arg*
  store %struct.thread_arg* %12, %struct.thread_arg** %3, align 8
  %13 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %14 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.thread_arg*, %struct.thread_arg** %3, align 8
  %18 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %77, %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %22
  %27 = load i32**, i32*** @points, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load i32**, i32*** @means, align 8
  %33 = getelementptr inbounds i32*, i32** %32, i64 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @get_sq_dist(i32* %31, i32* %34)
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %5, align 4
  br label %36

36:                                               ; preds = %59, %26
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @num_means, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i32**, i32*** @points, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32**, i32*** @means, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @get_sq_dist(i32* %45, i32* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %55, %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load i32*, i32** @clusters, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** @clusters, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  store i32 1, i32* @modified, align 4
  br label %76

76:                                               ; preds = %70, %62
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %22

80:                                               ; preds = %22
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_sq_dist(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @dim, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %40

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %16, %21
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %27, %32
  %34 = mul nsw i32 %22, %33
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %11
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %7

40:                                               ; preds = %7
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @calc_means(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.thread_arg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.thread_arg*
  store %struct.thread_arg* %11, %struct.thread_arg** %7, align 8
  %12 = load %struct.thread_arg*, %struct.thread_arg** %7, align 8
  %13 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.thread_arg*, %struct.thread_arg** %7, align 8
  %17 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.thread_arg*, %struct.thread_arg** %7, align 8
  %21 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %88, %1
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* @dim, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 %33, i1 false)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %56, %28
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @num_points, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %34
  %39 = load i32*, i32** @clusters, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load i32**, i32*** @points, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  call void @add_to_sum(i32* %47, i32* %52)
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %46, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %34

59:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %84, %59
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @dim, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32**, i32*** @means, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  store i32 %74, i32* %82, align 4
  br label %83

83:                                               ; preds = %67, %64
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %60

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %24

91:                                               ; preds = %24
  %92 = load i32*, i32** %6, align 8
  %93 = bitcast i32* %92 to i8*
  call void @free(i8* %93) #6
  ret i8* null
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %union.pthread_attr_t, align 8
  %11 = alloca %struct.thread_arg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i8**, i8*** %5, align 8
  call void @parse_args(i32 %15, i8** %16)
  %17 = load i32, i32* @num_points, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 8, %18
  %20 = call noalias i8* @malloc(i64 %19) #6
  %21 = bitcast i8* %20 to i32**
  store i32** %21, i32*** @points, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %36, %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @num_points, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i32, i32* @dim, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = call noalias i8* @malloc(i64 %29) #6
  %31 = bitcast i8* %30 to i32*
  %32 = load i32**, i32*** @points, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  store i32* %31, i32** %35, align 8
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %22

39:                                               ; preds = %22
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %42 = load i32**, i32*** @points, align 8
  %43 = load i32, i32* @num_points, align 4
  call void @generate_points(i32** %42, i32 %43)
  %44 = load i32, i32* @num_means, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 8, %45
  %47 = call noalias i8* @malloc(i64 %46) #6
  %48 = bitcast i8* %47 to i32**
  store i32** %48, i32*** @means, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %63, %39
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @num_means, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32, i32* @dim, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 4, %55
  %57 = call noalias i8* @malloc(i64 %56) #6
  %58 = bitcast i8* %57 to i32*
  %59 = load i32**, i32*** @means, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* %58, i32** %62, align 8
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %49

66:                                               ; preds = %49
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %69 = load i32**, i32*** @means, align 8
  %70 = load i32, i32* @num_means, align 4
  call void @generate_points(i32** %69, i32 %70)
  %71 = load i32, i32* @num_points, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = call noalias i8* @malloc(i64 %73) #6
  %75 = bitcast i8* %74 to i32*
  store i32* %75, i32** @clusters, align 8
  %76 = load i32*, i32** @clusters, align 8
  %77 = bitcast i32* %76 to i8*
  %78 = load i32, i32* @num_points, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  call void @llvm.memset.p0i8.i64(i8* align 4 %77, i8 -1, i64 %80, i1 false)
  %81 = call i32 @pthread_attr_init(%union.pthread_attr_t* %10) #6
  %82 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* %10, i32 0) #6
  %83 = call i64 @sysconf(i32 84) #6
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %6, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %66
  call void @perror(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0))
  %87 = call i64 @sysconf(i32 84) #6
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  %89 = icmp sle i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  br label %94

93:                                               ; preds = %86
  call void @__assert_fail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %66
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 8, %97
  %99 = call noalias i8* @malloc(i64 %98) #6
  %100 = bitcast i8* %99 to i64*
  store i64* %100, i64** %9, align 8
  %101 = icmp eq i64* %100, null
  br i1 %101, label %102, label %114

102:                                              ; preds = %95
  call void @perror(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.14, i64 0, i64 0))
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = call noalias i8* @malloc(i64 %105) #6
  %107 = bitcast i8* %106 to i64*
  store i64* %107, i64** %9, align 8
  %108 = icmp eq i64* %107, null
  %109 = zext i1 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %113

112:                                              ; preds = %102
  call void @__assert_fail(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 285, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

113:                                              ; preds = %111
  br label %114

114:                                              ; preds = %113, %95
  store i32 1, i32* @modified, align 4
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  br label %116

116:                                              ; preds = %312, %114
  %117 = load i32, i32* @modified, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %313

119:                                              ; preds = %116
  %120 = load i32, i32* @num_points, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sdiv i32 %120, %121
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* @num_points, align 4
  %124 = load i32, i32* %6, align 4
  %125 = srem i32 %123, %124
  store i32 %125, i32* %13, align 4
  store i32 0, i32* @modified, align 4
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  br label %128

128:                                              ; preds = %186, %119
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* @num_points, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %192

132:                                              ; preds = %128
  %133 = call noalias i8* @malloc(i64 16) #6
  %134 = bitcast i8* %133 to %struct.thread_arg*
  store %struct.thread_arg* %134, %struct.thread_arg** %11, align 8
  %135 = icmp eq %struct.thread_arg* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  call void @perror(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.18, i64 0, i64 0))
  %137 = call noalias i8* @malloc(i64 16) #6
  %138 = bitcast i8* %137 to %struct.thread_arg*
  store %struct.thread_arg* %138, %struct.thread_arg** %11, align 8
  %139 = icmp eq %struct.thread_arg* %138, null
  %140 = zext i1 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %144

143:                                              ; preds = %136
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 304, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144, %132
  %146 = load i32, i32* %7, align 4
  %147 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %148 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %151 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %145
  %155 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %156 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %13, align 4
  br label %161

161:                                              ; preds = %154, %145
  %162 = load i64*, i64** %9, align 8
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i64, i64* %162, i64 %165
  %167 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %168 = bitcast %struct.thread_arg* %167 to i8*
  %169 = call i32 @pthread_create(i64* %166, %union.pthread_attr_t* %10, i8* (i8*)* @find_clusters, i8* %168) #6
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %186

171:                                              ; preds = %161
  call void @perror(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.20, i64 0, i64 0))
  %172 = load i64*, i64** %9, align 8
  %173 = load i32, i32* %14, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %14, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i64, i64* %172, i64 %175
  %177 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %178 = bitcast %struct.thread_arg* %177 to i8*
  %179 = call i32 @pthread_create(i64* %176, %union.pthread_attr_t* %10, i8* (i8*)* @find_clusters, i8* %178) #6
  %180 = icmp ne i32 %179, 0
  %181 = zext i1 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  br label %185

184:                                              ; preds = %171
  call void @__assert_fail(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185, %161
  %187 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %188 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %7, align 4
  br label %128

192:                                              ; preds = %128
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %6, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %192
  br label %198

197:                                              ; preds = %192
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

198:                                              ; preds = %196
  store i32 0, i32* %8, align 4
  br label %199

199:                                              ; preds = %210, %198
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %14, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %199
  %204 = load i64*, i64** %9, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @pthread_join(i64 %208, i8** null)
  br label %210

210:                                              ; preds = %203
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %199

213:                                              ; preds = %199
  %214 = load i32, i32* @num_means, align 4
  %215 = load i32, i32* %6, align 4
  %216 = sdiv i32 %214, %215
  store i32 %216, i32* %12, align 4
  %217 = load i32, i32* @num_means, align 4
  %218 = load i32, i32* %6, align 4
  %219 = srem i32 %217, %218
  store i32 %219, i32* %13, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %14, align 4
  br label %220

220:                                              ; preds = %285, %213
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @num_means, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %291

224:                                              ; preds = %220
  %225 = call noalias i8* @malloc(i64 16) #6
  %226 = bitcast i8* %225 to %struct.thread_arg*
  store %struct.thread_arg* %226, %struct.thread_arg** %11, align 8
  %227 = icmp eq %struct.thread_arg* %226, null
  br i1 %227, label %228, label %237

228:                                              ; preds = %224
  call void @perror(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.18, i64 0, i64 0))
  %229 = call noalias i8* @malloc(i64 16) #6
  %230 = bitcast i8* %229 to %struct.thread_arg*
  store %struct.thread_arg* %230, %struct.thread_arg** %11, align 8
  %231 = icmp eq %struct.thread_arg* %230, null
  %232 = zext i1 %231 to i32
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  br label %236

235:                                              ; preds = %228
  call void @__assert_fail(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 326, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

236:                                              ; preds = %234
  br label %237

237:                                              ; preds = %236, %224
  %238 = load i32, i32* %7, align 4
  %239 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %240 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %239, i32 0, i32 0
  store i32 %238, i32* %240, align 8
  %241 = load i32, i32* @dim, align 4
  %242 = sext i32 %241 to i64
  %243 = mul i64 %242, 4
  %244 = call noalias i8* @malloc(i64 %243) #6
  %245 = bitcast i8* %244 to i32*
  %246 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %247 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %246, i32 0, i32 2
  store i32* %245, i32** %247, align 8
  %248 = load i32, i32* %12, align 4
  %249 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %250 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* %13, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %253, label %260

253:                                              ; preds = %237
  %254 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %255 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %255, align 4
  %258 = load i32, i32* %13, align 4
  %259 = add nsw i32 %258, -1
  store i32 %259, i32* %13, align 4
  br label %260

260:                                              ; preds = %253, %237
  %261 = load i64*, i64** %9, align 8
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %14, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i64, i64* %261, i64 %264
  %266 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %267 = bitcast %struct.thread_arg* %266 to i8*
  %268 = call i32 @pthread_create(i64* %265, %union.pthread_attr_t* %10, i8* (i8*)* @calc_means, i8* %267) #6
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %260
  call void @perror(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.23, i64 0, i64 0))
  %271 = load i64*, i64** %9, align 8
  %272 = load i32, i32* %14, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %14, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i64, i64* %271, i64 %274
  %276 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %277 = bitcast %struct.thread_arg* %276 to i8*
  %278 = call i32 @pthread_create(i64* %275, %union.pthread_attr_t* %10, i8* (i8*)* @calc_means, i8* %277) #6
  %279 = icmp ne i32 %278, 0
  %280 = zext i1 %279 to i32
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %270
  br label %284

283:                                              ; preds = %270
  call void @__assert_fail(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 335, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

284:                                              ; preds = %282
  br label %285

285:                                              ; preds = %284, %260
  %286 = load %struct.thread_arg*, %struct.thread_arg** %11, align 8
  %287 = getelementptr inbounds %struct.thread_arg, %struct.thread_arg* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %7, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* %7, align 4
  br label %220

291:                                              ; preds = %220
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* %6, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  br label %297

296:                                              ; preds = %291
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

297:                                              ; preds = %295
  store i32 0, i32* %8, align 4
  br label %298

298:                                              ; preds = %309, %297
  %299 = load i32, i32* %8, align 4
  %300 = load i32, i32* %14, align 4
  %301 = icmp slt i32 %299, %300
  br i1 %301, label %302, label %312

302:                                              ; preds = %298
  %303 = load i64*, i64** %9, align 8
  %304 = load i32, i32* %8, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i64, i64* %303, i64 %305
  %307 = load i64, i64* %306, align 8
  %308 = call i32 @pthread_join(i64 %307, i8** null)
  br label %309

309:                                              ; preds = %302
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %8, align 4
  br label %298

312:                                              ; preds = %298
  br label %116

313:                                              ; preds = %116
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %314, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %316 = load i32**, i32*** @means, align 8
  %317 = load i32, i32* @num_means, align 4
  call void @dump_points(i32** %316, i32 %317)
  store i32 0, i32* %8, align 4
  br label %318

318:                                              ; preds = %329, %313
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* @num_points, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %332

322:                                              ; preds = %318
  %323 = load i32**, i32*** @points, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32*, i32** %323, i64 %325
  %327 = load i32*, i32** %326, align 8
  %328 = bitcast i32* %327 to i8*
  call void @free(i8* %328) #6
  br label %329

329:                                              ; preds = %322
  %330 = load i32, i32* %8, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %8, align 4
  br label %318

332:                                              ; preds = %318
  %333 = load i32**, i32*** @points, align 8
  %334 = bitcast i32** %333 to i8*
  call void @free(i8* %334) #6
  store i32 0, i32* %8, align 4
  br label %335

335:                                              ; preds = %346, %332
  %336 = load i32, i32* %8, align 4
  %337 = load i32, i32* @num_means, align 4
  %338 = icmp slt i32 %336, %337
  br i1 %338, label %339, label %349

339:                                              ; preds = %335
  %340 = load i32**, i32*** @means, align 8
  %341 = load i32, i32* %8, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32*, i32** %340, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = bitcast i32* %344 to i8*
  call void @free(i8* %345) #6
  br label %346

346:                                              ; preds = %339
  %347 = load i32, i32* %8, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %8, align 4
  br label %335

349:                                              ; preds = %335
  %350 = load i32**, i32*** @means, align 8
  %351 = bitcast i32** %350 to i8*
  call void @free(i8* %351) #6
  %352 = load i32*, i32** @clusters, align 8
  %353 = bitcast i32* %352 to i8*
  call void @free(i8* %353) #6
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
