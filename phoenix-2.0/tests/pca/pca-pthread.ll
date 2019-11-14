; ModuleID = 'pca-pthread.c'
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_args(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 10, i32* @num_rows, align 4
  store i32 10, i32* @num_cols, align 4
  store i32 100, i32* @grid_size, align 4
  br label %6

6:                                                ; preds = %27, %2
  %7 = load i32, i32* %3, align 4
  %8 = load i8**, i8*** %4, align 8
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)) #5
  store i32 %9, i32* %5, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %27 [
    i32 114, label %13
    i32 99, label %16
    i32 115, label %19
    i32 63, label %22
  ]

13:                                               ; preds = %11
  %14 = load i8*, i8** @optarg, align 8
  %15 = call i32 @atoi(i8* %14) #6
  store i32 %15, i32* @num_rows, align 4
  br label %27

16:                                               ; preds = %11
  %17 = load i8*, i8** @optarg, align 8
  %18 = call i32 @atoi(i8* %17) #6
  store i32 %18, i32* @num_cols, align 4
  br label %27

19:                                               ; preds = %11
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i32 @atoi(i8* %20) #6
  store i32 %21, i32* @grid_size, align 4
  br label %27

22:                                               ; preds = %11
  %23 = load i8**, i8*** %4, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  call void @exit(i32 1) #7
  unreachable

27:                                               ; preds = %11, %19, %16, %13
  br label %6

28:                                               ; preds = %6
  %29 = load i32, i32* @num_rows, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* @num_cols, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @grid_size, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34, %31, %28
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #7
  unreachable

39:                                               ; preds = %34
  %40 = load i32, i32* @num_rows, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @num_cols, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @grid_size, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %44)
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
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %20 = load i32**, i32*** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %9

39:                                               ; preds = %9
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_points(i32**, i32, i32) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %34, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = call i32 @rand() #5
  %20 = load i32, i32* @grid_size, align 4
  %21 = srem i32 %19, %20
  %22 = load i32**, i32*** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %21, i32* %29, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %14

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %9

37:                                               ; preds = %9
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @calc_mean(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mean_arg_t*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mean_arg_t*
  store %struct.mean_arg_t* %8, %struct.mean_arg_t** %6, align 8
  %9 = load %struct.mean_arg_t*, %struct.mean_arg_t** %6, align 8
  %10 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mean_arg_t*, %struct.mean_arg_t** %6, align 8
  %15 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @num_cols, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i32**, i32*** @matrix, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @num_cols, align 4
  %41 = sdiv i32 %39, %40
  %42 = load i32*, i32** @mean, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %12

49:                                               ; preds = %12
  ret i8* null
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @calc_cov(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @row_lock) #5
  %8 = load i32, i32* @next_row, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @next_row, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @next_row, align 4
  %11 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @row_lock) #5
  br label %12

12:                                               ; preds = %88, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @num_rows, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %94

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %85, %16
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @num_rows, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %88

22:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %61, %22
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @num_cols, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load i32**, i32*** @matrix, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** @mean, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %37, %42
  %44 = load i32**, i32*** @matrix, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @mean, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %52, %57
  %59 = mul nsw i32 %43, %58
  %60 = add nsw i32 %28, %59
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %27
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %23

64:                                               ; preds = %23
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @num_cols, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sdiv i32 %65, %67
  %69 = load i32**, i32*** @cov, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %68, i32* %76, align 4
  %77 = load i32**, i32*** @cov, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %68, i32* %84, align 4
  br label %85

85:                                               ; preds = %64
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %18

88:                                               ; preds = %18
  %89 = call i32 @pthread_mutex_lock(%union.pthread_mutex_t* @row_lock) #5
  %90 = load i32, i32* @next_row, align 4
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @next_row, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @next_row, align 4
  %93 = call i32 @pthread_mutex_unlock(%union.pthread_mutex_t* @row_lock) #5
  br label %12

94:                                               ; preds = %12
  ret i8* null
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_lock(%union.pthread_mutex_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_unlock(%union.pthread_mutex_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pthread_mean() #0 {
  %1 = alloca %union.pthread_attr_t, align 8
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mean_arg_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i64 @sysconf(i32 84) #5
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* @num_procs, align 4
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %0
  call void @perror(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0))
  %12 = call i64 @sysconf(i32 84) #5
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* @num_procs, align 4
  %14 = icmp sle i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %19

18:                                               ; preds = %11
  call void @__assert_fail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 193, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.pthread_mean, i64 0, i64 0)) #7
  unreachable

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %0
  %21 = load i32, i32* @num_procs, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @num_procs, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = call i8* @MALLOC(i64 %25)
  %27 = bitcast i8* %26 to i64*
  store i64* %27, i64** %2, align 8
  %28 = load i32, i32* @num_procs, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 8
  %31 = call noalias i8* @malloc(i64 %30) #5
  %32 = bitcast i8* %31 to %struct.mean_arg_t*
  store %struct.mean_arg_t* %32, %struct.mean_arg_t** %4, align 8
  %33 = call i32 @pthread_attr_init(%union.pthread_attr_t* %1) #5
  %34 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* %1, i32 0) #5
  %35 = load i32, i32* @num_rows, align 4
  %36 = load i32, i32* @num_procs, align 4
  %37 = sdiv i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @num_rows, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @num_procs, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %110, %20
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @num_procs, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %113

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mean_arg_t*, %struct.mean_arg_t** %4, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %49, i64 %51
  %53 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %52, i32 0, i32 0
  store i32 %48, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %54, %55
  %57 = load %struct.mean_arg_t*, %struct.mean_arg_t** %4, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %57, i64 %59
  %61 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %47
  %65 = load %struct.mean_arg_t*, %struct.mean_arg_t** %4, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %65, i64 %67
  %69 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %64, %47
  %75 = load %struct.mean_arg_t*, %struct.mean_arg_t** %4, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %75, i64 %77
  %79 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i64*, i64** %2, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load %struct.mean_arg_t*, %struct.mean_arg_t** %4, align 8
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %85, i64 %87
  %89 = bitcast %struct.mean_arg_t* %88 to i8*
  %90 = call i32 @pthread_create(i64* %84, %union.pthread_attr_t* %1, i8* (i8*)* @calc_mean, i8* %89) #5
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %74
  call void @perror(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.12, i64 0, i64 0))
  %93 = load i64*, i64** %2, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load %struct.mean_arg_t*, %struct.mean_arg_t** %4, align 8
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.mean_arg_t, %struct.mean_arg_t* %97, i64 %99
  %101 = bitcast %struct.mean_arg_t* %100 to i8*
  %102 = call i32 @pthread_create(i64* %96, %union.pthread_attr_t* %1, i8* (i8*)* @calc_mean, i8* %101) #5
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %92
  br label %108

107:                                              ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.pthread_mean, i64 0, i64 0)) #7
  unreachable

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108, %74
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %43

113:                                              ; preds = %43
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %140, %113
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* @num_procs, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %114
  %119 = load i64*, i64** %2, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @pthread_join(i64 %123, i8** null)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %118
  call void @perror(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  %127 = load i64*, i64** %2, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @pthread_join(i64 %131, i8** null)
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  br label %138

137:                                              ; preds = %126
  call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__PRETTY_FUNCTION__.pthread_mean, i64 0, i64 0)) #7
  unreachable

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138, %118
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %3, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %3, align 4
  br label %114

143:                                              ; preds = %114
  %144 = load i64*, i64** %2, align 8
  %145 = bitcast i64* %144 to i8*
  call void @free(i8* %145) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i64 @sysconf(i32) #1

declare dso_local void @perror(i8*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MALLOC(i64) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call noalias i8* @malloc(i64 %4) #5
  store i8* %5, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i32 52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__PRETTY_FUNCTION__.MALLOC, i64 0, i64 0)) #7
  unreachable

10:                                               ; preds = %8
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
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
  %1 = alloca i32, align 4
  %2 = alloca %union.pthread_attr_t, align 8
  %3 = alloca i64*, align 8
  %4 = call i32 @pthread_mutex_init(%union.pthread_mutex_t* @row_lock, %union.pthread_mutexattr_t* null) #5
  %5 = call i32 @pthread_attr_init(%union.pthread_attr_t* %2) #5
  %6 = call i32 @pthread_attr_setscope(%union.pthread_attr_t* %2, i32 0) #5
  store i32 0, i32* @next_row, align 4
  %7 = load i32, i32* @num_procs, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 8
  %10 = call i8* @MALLOC(i64 %9)
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %3, align 8
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %36, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @num_procs, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %12
  %17 = load i64*, i64** %3, align 8
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = call i32 @pthread_create(i64* %20, %union.pthread_attr_t* %2, i8* (i8*)* @calc_cov, i8* null) #5
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  call void @perror(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i64 0, i64 0))
  %24 = load i64*, i64** %3, align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = call i32 @pthread_create(i64* %27, %union.pthread_attr_t* %2, i8* (i8*)* @calc_cov, i8* null) #5
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %34

33:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.pthread_cov, i64 0, i64 0)) #7
  unreachable

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %12

39:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %40

40:                                               ; preds = %66, %39
  %41 = load i32, i32* %1, align 4
  %42 = load i32, i32* @num_procs, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load i64*, i64** %3, align 8
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @pthread_join(i64 %49, i8** null)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %44
  call void @perror(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0))
  %53 = load i64*, i64** %3, align 8
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @pthread_join(i64 %57, i8** null)
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %64

63:                                               ; preds = %52
  call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 252, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__PRETTY_FUNCTION__.pthread_cov, i64 0, i64 0)) #7
  unreachable

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %1, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %1, align 4
  br label %40

69:                                               ; preds = %40
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @pthread_mutex_init(%union.pthread_mutex_t*, %union.pthread_mutexattr_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  call void @parse_args(i32 %7, i8** %8)
  %9 = load i32, i32* @num_rows, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = call noalias i8* @malloc(i64 %11) #5
  %13 = bitcast i8* %12 to i32**
  store i32** %13, i32*** @matrix, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @num_rows, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i32, i32* @num_cols, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = call noalias i8* @malloc(i64 %21) #5
  %23 = bitcast i8* %22 to i32*
  %24 = load i32**, i32*** @matrix, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  store i32* %23, i32** %27, align 8
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load i32**, i32*** @matrix, align 8
  %33 = load i32, i32* @num_rows, align 4
  %34 = load i32, i32* @num_cols, align 4
  call void @generate_points(i32** %32, i32 %33, i32 %34)
  %35 = load i32**, i32*** @matrix, align 8
  %36 = load i32, i32* @num_rows, align 4
  %37 = load i32, i32* @num_cols, align 4
  call void @dump_points(i32** %35, i32 %36, i32 %37)
  %38 = load i32, i32* @num_rows, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = call noalias i8* @malloc(i64 %40) #5
  %42 = bitcast i8* %41 to i32*
  store i32* %42, i32** @mean, align 8
  %43 = load i32, i32* @num_rows, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = call noalias i8* @malloc(i64 %45) #5
  %47 = bitcast i8* %46 to i32**
  store i32** %47, i32*** @cov, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %62, %31
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @num_rows, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load i32, i32* @num_rows, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = call noalias i8* @malloc(i64 %55) #5
  %57 = bitcast i8* %56 to i32*
  %58 = load i32**, i32*** @cov, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  store i32* %57, i32** %61, align 8
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %48

65:                                               ; preds = %48
  call void @pthread_mean()
  call void @pthread_cov()
  %66 = load i32**, i32*** @cov, align 8
  %67 = load i32, i32* @num_rows, align 4
  %68 = load i32, i32* @num_rows, align 4
  call void @dump_points(i32** %66, i32 %67, i32 %68)
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %86, %65
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @num_rows, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i32**, i32*** @cov, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = bitcast i32* %78 to i8*
  call void @free(i8* %79) #5
  %80 = load i32**, i32*** @matrix, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32*, i32** %80, i64 %82
  %84 = load i32*, i32** %83, align 8
  %85 = bitcast i32* %84 to i8*
  call void @free(i8* %85) #5
  br label %86

86:                                               ; preds = %73
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %69

89:                                               ; preds = %69
  %90 = load i32*, i32** @mean, align 8
  %91 = bitcast i32* %90 to i8*
  call void @free(i8* %91) #5
  %92 = load i32**, i32*** @cov, align 8
  %93 = bitcast i32** %92 to i8*
  call void @free(i8* %93) #5
  %94 = load i32**, i32*** @matrix, align 8
  %95 = bitcast i32** %94 to i8*
  call void @free(i8* %95) #5
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
