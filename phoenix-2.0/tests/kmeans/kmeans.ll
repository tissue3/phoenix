; ModuleID = 'kmeans.c'
source_filename = "kmeans.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.kmeans_data_t = type { i32*, %struct.keyval_t*, i32*, i32, i32 }
%struct.keyval_t = type { i8*, i8* }
%struct.map_args_t = type { i64, i8* }
%struct.kmeans_map_data_t = type { i32, i32*, %struct.keyval_t*, i32* }
%struct.iterator_t = type opaque
%struct.final_data_t = type { i32, %struct.keyval_t* }
%struct.map_reduce_args_t = type { i8*, i64, i32, void (%struct.map_args_t*)*, void (i8*, %struct.iterator_t*)*, i8* (%struct.iterator_t*)*, i32 (i8*, i32, %struct.map_args_t*)*, i8* (%struct.map_args_t*)*, i32 (i8*, i8*)*, %struct.final_data_t*, i32 (i32, i8*, i32)*, i8, i32, i32, i32, i32, i32, i32, float }
%struct.timeval = type { i64, i64 }

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
@.str.3 = private unnamed_addr constant [82 x i8] c"Usage: %s -d <vector dimension> -c <num clusters> -p <num points> -s <max value>\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"Illegal argument value. All values must be numeric and greater than 0\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Dimension = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Number of clusters = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Number of points = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Size of each dimension = %d\0A\00", align 1
@modified = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"data_in\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"kmeans.c\00", align 1
@__PRETTY_FUNCTION__.kmeans_splitter = private unnamed_addr constant [47 x i8] c"int kmeans_splitter(void *, int, map_args_t *)\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"kmeans_data->points\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"kmeans_data->means\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"kmeans_data->clusters\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"req_units\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@__PRETTY_FUNCTION__.kmeans_locator = private unnamed_addr constant [35 x i8] c"void *kmeans_locator(map_args_t *)\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@__PRETTY_FUNCTION__.kmeans_map = private unnamed_addr constant [30 x i8] c"void kmeans_map(map_args_t *)\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"args->length == 1\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"key_in\00", align 1
@__PRETTY_FUNCTION__.kmeans_reduce = private unnamed_addr constant [41 x i8] c"void kmeans_reduce(void *, iterator_t *)\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"itr\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"i == vals_len\00", align 1
@kmeans_data = common dso_local global %struct.kmeans_data_t zeroinitializer, align 8
@.str.22 = private unnamed_addr constant [45 x i8] c"Error at line\0A\09map_reduce_init ()\0ASystem Msg\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"(map_reduce_init ()) == 0\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"MR_L1CACHESIZE\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"MR_NUMTHREADS\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"MR_NUMPROCS\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"MR_KEYMATCHFACTOR\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"KMeans: Calling MapReduce Scheduler\0A\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"Error at line\0A\09map_reduce (&map_reduce_args) < 0\0ASystem Msg\00", align 1
@.str.30 = private unnamed_addr constant [41 x i8] c"(map_reduce (&map_reduce_args) < 0) == 0\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"Error at line\0A\09map_reduce_finalize ()\0ASystem Msg\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"(map_reduce_finalize ()) == 0\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"KMeans: MapReduce Completed\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"\0A\0AFinal means:\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_means(%struct.keyval_t*, i32) #0 {
  %3 = alloca %struct.keyval_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.keyval_t* %0, %struct.keyval_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %30, %11
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @dim, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = load %struct.keyval_t*, %struct.keyval_t** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %18, i64 %20
  %22 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %7

39:                                               ; preds = %7
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_points(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
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
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @dim, align 4
  %21 = mul nsw i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %18, i64 %24
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_args(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  store i32 100000, i32* @num_points, align 4
  store i32 100, i32* @num_means, align 4
  store i32 3, i32* @dim, align 4
  store i32 1000, i32* @grid_size, align 4
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_points(i32*, i32) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
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
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @dim, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_means(%struct.keyval_t*, i32) #0 {
  %3 = alloca %struct.keyval_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.keyval_t* %0, %struct.keyval_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.keyval_t*, %struct.keyval_t** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %13, i64 %15
  %17 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to i32*
  store i32 %12, i32* %19, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %38, %11
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @dim, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = call i32 @rand() #6
  %26 = load i32, i32* @grid_size, align 4
  %27 = srem i32 %25, %26
  %28 = load %struct.keyval_t*, %struct.keyval_t** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %28, i64 %30
  %32 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = bitcast i8* %33 to i32*
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %27, i32* %37, align 4
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %7

45:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mykeycmp(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %24

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %13
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_clusters(i32*, %struct.keyval_t*, i32*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.keyval_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.keyval_t* %1, %struct.keyval_t** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %88, %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %91

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @dim, align 4
  %22 = mul nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load %struct.keyval_t*, %struct.keyval_t** %6, align 8
  %26 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %25, i64 0
  %27 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = call i32 @get_sq_dist(i32* %24, i32* %29)
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %31

31:                                               ; preds = %57, %18
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @num_means, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %31
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @dim, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load %struct.keyval_t*, %struct.keyval_t** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %42, i64 %44
  %46 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = call i32 @get_sq_dist(i32* %41, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %35
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %35
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %31

60:                                               ; preds = %31
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* %13, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  store i32 1, i32* @modified, align 4
  br label %74

74:                                               ; preds = %68, %60
  %75 = load %struct.keyval_t*, %struct.keyval_t** %6, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %75, i64 %77
  %79 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @dim, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = bitcast i32* %86 to i8*
  call void @emit_intermediate(i8* %80, i8* %87, i32 8)
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %14

91:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_sq_dist(i32*, i32*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %33, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @dim, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* %8, align 4
  %32 = add i32 %31, %30
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %9

36:                                               ; preds = %9
  %37 = load i32, i32* %8, align 4
  ret i32 %37
}

declare dso_local void @emit_intermediate(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kmeans_splitter(i8*, i32, %struct.map_args_t*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.map_args_t*, align 8
  %8 = alloca %struct.kmeans_data_t*, align 8
  %9 = alloca %struct.kmeans_map_data_t*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.map_args_t* %2, %struct.map_args_t** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.kmeans_data_t*
  store %struct.kmeans_data_t* %11, %struct.kmeans_data_t** %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %16

15:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  unreachable

16:                                               ; preds = %14
  %17 = load %struct.map_args_t*, %struct.map_args_t** %7, align 8
  %18 = icmp ne %struct.map_args_t* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 268, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  unreachable

21:                                               ; preds = %19
  %22 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %23 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %28

27:                                               ; preds = %21
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 269, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  unreachable

28:                                               ; preds = %26
  %29 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %30 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %29, i32 0, i32 1
  %31 = load %struct.keyval_t*, %struct.keyval_t** %30, align 8
  %32 = icmp ne %struct.keyval_t* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %35

34:                                               ; preds = %28
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 270, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  unreachable

35:                                               ; preds = %33
  %36 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %37 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %42

41:                                               ; preds = %35
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 271, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  unreachable

42:                                               ; preds = %40
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 272, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  unreachable

47:                                               ; preds = %45
  %48 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %49 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @num_points, align 4
  %52 = icmp sge i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %124

54:                                               ; preds = %47
  %55 = call noalias i8* @malloc(i64 32) #6
  %56 = bitcast i8* %55 to %struct.kmeans_map_data_t*
  store %struct.kmeans_map_data_t* %56, %struct.kmeans_map_data_t** %9, align 8
  %57 = load %struct.map_args_t*, %struct.map_args_t** %7, align 8
  %58 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %57, i32 0, i32 0
  store i64 1, i64* %58, align 8
  %59 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %9, align 8
  %60 = bitcast %struct.kmeans_map_data_t* %59 to i8*
  %61 = load %struct.map_args_t*, %struct.map_args_t** %7, align 8
  %62 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %64 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %67 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @dim, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %65, i64 %71
  %73 = bitcast i32* %72 to i8*
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %9, align 8
  %76 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %75, i32 0, i32 1
  store i32* %74, i32** %76, align 8
  %77 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %78 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %77, i32 0, i32 1
  %79 = load %struct.keyval_t*, %struct.keyval_t** %78, align 8
  %80 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %9, align 8
  %81 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %80, i32 0, i32 2
  store %struct.keyval_t* %79, %struct.keyval_t** %81, align 8
  %82 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %83 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %86 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  %90 = bitcast i32* %89 to i8*
  %91 = bitcast i8* %90 to i32*
  %92 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %9, align 8
  %93 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %92, i32 0, i32 3
  store i32* %91, i32** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %96 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %100 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @num_points, align 4
  %103 = icmp sge i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %54
  %105 = load i32, i32* @num_points, align 4
  %106 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %8, align 8
  %107 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %105, %108
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %109, %110
  %112 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %9, align 8
  %113 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %118

114:                                              ; preds = %54
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %9, align 8
  %117 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %114, %104
  %119 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %9, align 8
  %120 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @num_pts, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* @num_pts, align 4
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %118, %53
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @kmeans_locator(%struct.map_args_t*) #0 {
  %2 = alloca %struct.map_args_t*, align 8
  %3 = alloca %struct.kmeans_map_data_t*, align 8
  store %struct.map_args_t* %0, %struct.map_args_t** %2, align 8
  %4 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %5 = icmp ne %struct.map_args_t* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 301, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.kmeans_locator, i64 0, i64 0)) #8
  unreachable

8:                                                ; preds = %6
  %9 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %10 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.kmeans_map_data_t*
  store %struct.kmeans_map_data_t* %12, %struct.kmeans_map_data_t** %3, align 8
  %13 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %3, align 8
  %14 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to i8*
  ret i8* %16
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @kmeans_map(%struct.map_args_t*) #0 {
  %2 = alloca %struct.map_args_t*, align 8
  %3 = alloca %struct.kmeans_map_data_t*, align 8
  store %struct.map_args_t* %0, %struct.map_args_t** %2, align 8
  %4 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %5 = icmp ne %struct.map_args_t* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %8

7:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 314, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.kmeans_map, i64 0, i64 0)) #8
  unreachable

8:                                                ; preds = %6
  %9 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %10 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %15

14:                                               ; preds = %8
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 315, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.kmeans_map, i64 0, i64 0)) #8
  unreachable

15:                                               ; preds = %13
  %16 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %17 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = bitcast i8* %18 to %struct.kmeans_map_data_t*
  store %struct.kmeans_map_data_t* %19, %struct.kmeans_map_data_t** %3, align 8
  %20 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %3, align 8
  %21 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %3, align 8
  %24 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %23, i32 0, i32 2
  %25 = load %struct.keyval_t*, %struct.keyval_t** %24, align 8
  %26 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %3, align 8
  %27 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %3, align 8
  %30 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  call void @find_clusters(i32* %22, %struct.keyval_t* %25, i32* %28, i32 %31)
  %32 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %33 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  call void @free(i8* %34) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @kmeans_reduce(i8*, %struct.iterator_t*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iterator_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.iterator_t* %1, %struct.iterator_t** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.kmeans_reduce, i64 0, i64 0)) #8
  unreachable

14:                                               ; preds = %12
  %15 = load %struct.iterator_t*, %struct.iterator_t** %4, align 8
  %16 = icmp ne %struct.iterator_t* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 328, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.kmeans_reduce, i64 0, i64 0)) #8
  unreachable

19:                                               ; preds = %17
  %20 = load %struct.iterator_t*, %struct.iterator_t** %4, align 8
  %21 = call i32 @iter_size(%struct.iterator_t* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @dim, align 4
  %23 = sext i32 %22 to i64
  %24 = call noalias i8* @calloc(i64 %23, i64 4) #6
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %6, align 8
  %26 = load i32, i32* @dim, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = call noalias i8* @malloc(i64 %28) #6
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %35, %19
  %32 = load %struct.iterator_t*, %struct.iterator_t** %4, align 8
  %33 = call i32 @iter_next(%struct.iterator_t* %32, i8** %8)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32*
  call void @add_to_sum(i32* %36, i32* %38)
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %31

41:                                               ; preds = %31
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %47

46:                                               ; preds = %41
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 345, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.kmeans_reduce, i64 0, i64 0)) #8
  unreachable

47:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @dim, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sdiv i32 %57, %58
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %48

67:                                               ; preds = %48
  %68 = load i32*, i32** %6, align 8
  %69 = bitcast i32* %68 to i8*
  call void @free(i8* %69) #6
  %70 = load i8*, i8** %3, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = bitcast i32* %71 to i8*
  call void @emit(i8* %70, i8* %72)
  ret void
}

declare dso_local i32 @iter_size(%struct.iterator_t*) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

declare dso_local i32 @iter_next(%struct.iterator_t*, i8**) #1

declare dso_local void @emit(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.final_data_t, align 8
  %7 = alloca %struct.map_reduce_args_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @get_time(%struct.timeval* %11)
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  call void @parse_args(i32 %14, i8** %15)
  %16 = load i32, i32* @num_points, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = load i32, i32* @dim, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 %18, %20
  %22 = call noalias i8* @malloc(i64 %21) #6
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 0), align 8
  %24 = load i32*, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 0), align 8
  %25 = load i32, i32* @num_points, align 4
  call void @generate_points(i32* %24, i32 %25)
  %26 = load i32, i32* @num_means, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 16, %27
  %29 = call noalias i8* @malloc(i64 %28) #6
  %30 = bitcast i8* %29 to %struct.keyval_t*
  store %struct.keyval_t* %30, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %31 = load i32, i32* @dim, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = load i32, i32* @num_means, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %33, %35
  %37 = call noalias i8* @malloc(i64 %36) #6
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %62, %2
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @num_means, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %39
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @dim, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = bitcast i32* %49 to i8*
  %51 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %51, i64 %53
  %55 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  %56 = call noalias i8* @malloc(i64 8) #6
  %57 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %57, i64 %59
  %61 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  br label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %39

65:                                               ; preds = %39
  %66 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %67 = load i32, i32* @num_means, align 4
  call void @generate_means(%struct.keyval_t* %66, i32 %67)
  store i32 0, i32* getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 3), align 8
  %68 = load i32, i32* @dim, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 4, %69
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 4), align 4
  %72 = load i32, i32* @num_points, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = call noalias i8* @malloc(i64 %74) #6
  %76 = bitcast i8* %75 to i32*
  store i32* %76, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 2), align 8
  %77 = load i32*, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 2), align 8
  %78 = bitcast i32* %77 to i8*
  %79 = load i32, i32* @num_points, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  call void @llvm.memset.p0i8.i64(i8* align 4 %78, i8 -1, i64 %81, i1 false)
  store i32 1, i32* @modified, align 4
  %82 = call i32 (...) @map_reduce_init()
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %65
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0))
  %85 = call i32 (...) @map_reduce_init()
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %89

88:                                               ; preds = %84
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 395, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %65
  %91 = bitcast %struct.map_reduce_args_t* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %91, i8 0, i64 120, i1 false)
  %92 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 0
  store i8* bitcast (%struct.kmeans_data_t* @kmeans_data to i8*), i8** %92, align 8
  %93 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 3
  store void (%struct.map_args_t*)* @kmeans_map, void (%struct.map_args_t*)** %93, align 8
  %94 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 4
  store void (i8*, %struct.iterator_t*)* @kmeans_reduce, void (i8*, %struct.iterator_t*)** %94, align 8
  %95 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 6
  store i32 (i8*, i32, %struct.map_args_t*)* @kmeans_splitter, i32 (i8*, i32, %struct.map_args_t*)** %95, align 8
  %96 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 7
  store i8* (%struct.map_args_t*)* @kmeans_locator, i8* (%struct.map_args_t*)** %96, align 8
  %97 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 8
  store i32 (i8*, i8*)* @mykeycmp, i32 (i8*, i8*)** %97, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 4), align 4
  %99 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 2
  store i32 %98, i32* %99, align 8
  %100 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 10
  store i32 (i32, i8*, i32)* null, i32 (i32, i8*, i32)** %100, align 8
  %101 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 9
  store %struct.final_data_t* %6, %struct.final_data_t** %101, align 8
  %102 = load i32, i32* @num_points, align 4
  %103 = load i32, i32* @num_means, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* @dim, align 4
  %106 = mul nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 1
  store i64 %108, i64* %109, align 8
  %110 = call i8* @GETENV(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %111 = call i32 @atoi(i8* %110) #7
  %112 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 12
  store i32 %111, i32* %112, align 4
  %113 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %114 = call i32 @atoi(i8* %113) #7
  %115 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 13
  store i32 %114, i32* %115, align 8
  %116 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %117 = call i32 @atoi(i8* %116) #7
  %118 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 14
  store i32 %117, i32* %118, align 4
  %119 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %120 = call i32 @atoi(i8* %119) #7
  %121 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 15
  store i32 %120, i32* %121, align 8
  %122 = call i8* @GETENV(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %123 = call i32 @atoi(i8* %122) #7
  %124 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 16
  store i32 %123, i32* %124, align 4
  %125 = call i8* @GETENV(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %126 = call double @atof(i8* %125) #7
  %127 = fptrunc double %126 to float
  %128 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 18
  store float %127, float* %128, align 4
  %129 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %7, i32 0, i32 11
  store i8 1, i8* %129, align 8
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0))
  call void @get_time(%struct.timeval* %12)
  store i8 1, i8* %10, align 1
  br label %131

131:                                              ; preds = %195, %90
  %132 = load i32, i32* @modified, align 4
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %196

134:                                              ; preds = %131
  store i32 0, i32* @modified, align 4
  store i32 0, i32* getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 3), align 8
  call void @get_time(%struct.timeval* %11)
  %135 = call i32 @map_reduce(%struct.map_reduce_args_t* %7)
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  call void @perror(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i64 0, i64 0))
  %138 = call i32 @map_reduce(%struct.map_reduce_args_t* %7)
  %139 = icmp slt i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %144

143:                                              ; preds = %137
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 433, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144, %134
  call void @get_time(%struct.timeval* %12)
  call void @get_time(%struct.timeval* %11)
  store i32 0, i32* %8, align 4
  br label %146

146:                                              ; preds = %184, %145
  %147 = load i32, i32* %8, align 4
  %148 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %6, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %147, %149
  br i1 %150, label %151, label %187

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %6, i32 0, i32 1
  %153 = load %struct.keyval_t*, %struct.keyval_t** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %153, i64 %155
  %157 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %156, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = bitcast i8* %158 to i32*
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %13, align 4
  %161 = load i8, i8* %10, align 1
  %162 = trunc i8 %161 to i1
  %163 = zext i1 %162 to i32
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %151
  %166 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %166, i64 %168
  %170 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  call void @free(i8* %171) #6
  br label %172

172:                                              ; preds = %165, %151
  %173 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %173, i64 %175
  %177 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %6, i32 0, i32 1
  %178 = load %struct.keyval_t*, %struct.keyval_t** %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %178, i64 %180
  %182 = bitcast %struct.keyval_t* %176 to i8*
  %183 = bitcast %struct.keyval_t* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 16, i1 false)
  br label %184

184:                                              ; preds = %172
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %146

187:                                              ; preds = %146
  %188 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %6, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %6, i32 0, i32 1
  %193 = load %struct.keyval_t*, %struct.keyval_t** %192, align 8
  %194 = bitcast %struct.keyval_t* %193 to i8*
  call void @free(i8* %194) #6
  br label %195

195:                                              ; preds = %191, %187
  call void @get_time(%struct.timeval* %12)
  store i8 0, i8* %10, align 1
  br label %131

196:                                              ; preds = %131
  call void @get_time(%struct.timeval* %11)
  %197 = call i32 (...) @map_reduce_finalize()
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %196
  call void @perror(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0))
  %200 = call i32 (...) @map_reduce_finalize()
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %204

203:                                              ; preds = %199
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 464, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  unreachable

204:                                              ; preds = %202
  br label %205

205:                                              ; preds = %204, %196
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0))
  %211 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %212 = load i32, i32* @num_means, align 4
  call void @dump_means(%struct.keyval_t* %211, i32 %212)
  %213 = load i32*, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 0), align 8
  %214 = bitcast i32* %213 to i8*
  call void @free(i8* %214) #6
  store i32 0, i32* %8, align 4
  br label %215

215:                                              ; preds = %232, %205
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @num_means, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %235

219:                                              ; preds = %215
  %220 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %220, i64 %222
  %224 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  call void @free(i8* %225) #6
  %226 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %226, i64 %228
  %230 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  call void @free(i8* %231) #6
  br label %232

232:                                              ; preds = %219
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %8, align 4
  br label %215

235:                                              ; preds = %215
  %236 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %237 = bitcast %struct.keyval_t* %236 to i8*
  call void @free(i8* %237) #6
  %238 = load i32*, i32** %9, align 8
  %239 = bitcast i32* %238 to i8*
  call void @free(i8* %239) #6
  %240 = load i32*, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 2), align 8
  %241 = bitcast i32* %240 to i8*
  call void @free(i8* %241) #6
  call void @get_time(%struct.timeval* %12)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @get_time(%struct.timeval*) #0 {
  %2 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i32 @map_reduce_init(...) #1

declare dso_local void @perror(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @GETENV(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @getenv(i8* %5) #6
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
}

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #3

declare dso_local i32 @map_reduce(%struct.map_reduce_args_t*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

declare dso_local i32 @map_reduce_finalize(...) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
