; ModuleID = 'kmeans-seq.c'
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

; Function Attrs: noinline nounwind uwtable
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
  %9 = call i32 @getopt(i32 %7, i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #6
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
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i8* %28)
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
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

45:                                               ; preds = %40
  %46 = load i32, i32* @dim, align 4
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @num_means, align 4
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @num_points, align 4
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @grid_size, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %52)
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
declare dso_local i32 @rand() #1

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
define dso_local void @find_clusters(i32**, i32**, i32*) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %67, %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @num_points, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load i32**, i32*** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i32**, i32*** %5, align 8
  %23 = getelementptr inbounds i32*, i32** %22, i64 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @get_sq_dist(i32* %21, i32* %24)
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %49, %16
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @num_means, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32**, i32*** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32*, i32** %31, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = load i32**, i32*** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @get_sq_dist(i32* %35, i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %45, %30
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %26

52:                                               ; preds = %26
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32, i32* %11, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 %61, i32* %65, align 4
  store i32 1, i32* @modified, align 4
  br label %66

66:                                               ; preds = %60, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %12

70:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
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

; Function Attrs: noinline nounwind uwtable
define dso_local void @calc_means(i32**, i32**, i32*) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @dim, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = call noalias i8* @malloc(i64 %13) #6
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %80, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @num_means, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %83

20:                                               ; preds = %16
  %21 = load i32*, i32** %10, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i32, i32* @dim, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 4
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 %25, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %48, %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @num_points, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load i32*, i32** %10, align 8
  %40 = load i32**, i32*** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  call void @add_to_sum(i32* %39, i32* %44)
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %38, %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %26

51:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %76, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @dim, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %56
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sdiv i32 %64, %65
  %67 = load i32**, i32*** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %66, i32* %74, align 4
  br label %75

75:                                               ; preds = %59, %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %52

79:                                               ; preds = %52
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %16

83:                                               ; preds = %16
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_matrix(i32**, i32, i32) #0 {
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
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
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

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  call void @parse_args(i32 %10, i8** %11)
  %12 = load i32, i32* @num_points, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = call noalias i8* @malloc(i64 %14) #6
  %16 = bitcast i8* %15 to i32**
  store i32** %16, i32*** %6, align 8
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @num_points, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* @dim, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = call noalias i8* @malloc(i64 %24) #6
  %26 = bitcast i8* %25 to i32*
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* %26, i32** %30, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %9, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  %37 = load i32**, i32*** %6, align 8
  %38 = load i32, i32* @num_points, align 4
  call void @generate_points(i32** %37, i32 %38)
  %39 = load i32, i32* @num_means, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 8, %40
  %42 = call noalias i8* @malloc(i64 %41) #6
  %43 = bitcast i8* %42 to i32**
  store i32** %43, i32*** %7, align 8
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %58, %34
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @num_means, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* @dim, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = call noalias i8* @malloc(i64 %51) #6
  %53 = bitcast i8* %52 to i32*
  %54 = load i32**, i32*** %7, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* %53, i32** %57, align 8
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %64 = load i32**, i32*** %7, align 8
  %65 = load i32, i32* @num_means, align 4
  call void @generate_points(i32** %64, i32 %65)
  %66 = load i32, i32* @num_points, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 4, %67
  %69 = call noalias i8* @malloc(i64 %68) #6
  %70 = bitcast i8* %69 to i32*
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = load i32, i32* @num_points, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  call void @llvm.memset.p0i8.i64(i8* align 4 %72, i8 -1, i64 %75, i1 false)
  store i32 1, i32* @modified, align 4
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %78

78:                                               ; preds = %81, %61
  %79 = load i32, i32* @modified, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  store i32 0, i32* @modified, align 4
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %84 = load i32**, i32*** %6, align 8
  %85 = load i32**, i32*** %7, align 8
  %86 = load i32*, i32** %8, align 8
  call void @find_clusters(i32** %84, i32** %85, i32* %86)
  %87 = load i32**, i32*** %6, align 8
  %88 = load i32**, i32*** %7, align 8
  %89 = load i32*, i32** %8, align 8
  call void @calc_means(i32** %87, i32** %88, i32* %89)
  br label %78

90:                                               ; preds = %78
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %93 = load i32**, i32*** %7, align 8
  %94 = load i32, i32* @num_means, align 4
  %95 = load i32, i32* @dim, align 4
  call void @dump_matrix(i32** %93, i32 %94, i32 %95)
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %109, %90
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @num_means, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i32**, i32*** %7, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = bitcast i32* %107 to i8*
  call void @free(i8* %108) #6
  br label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %98

112:                                              ; preds = %98
  %113 = load i32**, i32*** %7, align 8
  %114 = bitcast i32** %113 to i8*
  call void @free(i8* %114) #6
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %126, %112
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @num_points, align 4
  %118 = icmp slt i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i32**, i32*** %6, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = bitcast i32* %124 to i8*
  call void @free(i8* %125) #6
  br label %126

126:                                              ; preds = %119
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load i32**, i32*** %6, align 8
  %131 = bitcast i32** %130 to i8*
  call void @free(i8* %131) #6
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
