; ModuleID = 'pca-seq.c'
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
define dso_local void @calc_mean(i32**, i32*) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @num_rows, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %29, %12
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @num_cols, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i32**, i32*** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %13

32:                                               ; preds = %13
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @num_cols, align 4
  %35 = sdiv i32 %33, %34
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %8

43:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calc_cov(i32**, i32*, i32**) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %88, %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @num_rows, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %91

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %84, %15
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @num_rows, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %87

21:                                               ; preds = %17
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %60, %21
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @num_cols, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %22
  %27 = load i32, i32* %10, align 4
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %36, %41
  %43 = load i32**, i32*** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %51, %56
  %58 = mul nsw i32 %42, %57
  %59 = add nsw i32 %27, %58
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %26
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %22

63:                                               ; preds = %22
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @num_cols, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sdiv i32 %64, %66
  %68 = load i32**, i32*** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %67, i32* %75, align 4
  %76 = load i32**, i32*** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %67, i32* %83, align 4
  br label %84

84:                                               ; preds = %63
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %17

87:                                               ; preds = %17
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %11

91:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  call void @parse_args(i32 %10, i8** %11)
  %12 = load i32, i32* @num_rows, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = call noalias i8* @malloc(i64 %14) #5
  %16 = bitcast i8* %15 to i32**
  store i32** %16, i32*** %7, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %31, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @num_rows, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* @num_cols, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = call noalias i8* @malloc(i64 %24) #5
  %26 = bitcast i8* %25 to i32*
  %27 = load i32**, i32*** %7, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* %26, i32** %30, align 8
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load i32**, i32*** %7, align 8
  %36 = load i32, i32* @num_rows, align 4
  %37 = load i32, i32* @num_cols, align 4
  call void @generate_points(i32** %35, i32 %36, i32 %37)
  %38 = load i32**, i32*** %7, align 8
  %39 = load i32, i32* @num_rows, align 4
  %40 = load i32, i32* @num_cols, align 4
  call void @dump_points(i32** %38, i32 %39, i32 %40)
  %41 = load i32, i32* @num_rows, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = call noalias i8* @malloc(i64 %43) #5
  %45 = bitcast i8* %44 to i32*
  store i32* %45, i32** %9, align 8
  %46 = load i32, i32* @num_rows, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = call noalias i8* @malloc(i64 %48) #5
  %50 = bitcast i8* %49 to i32**
  store i32** %50, i32*** %8, align 8
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %65, %34
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @num_rows, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %51
  %56 = load i32, i32* @num_rows, align 4
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = call noalias i8* @malloc(i64 %58) #5
  %60 = bitcast i8* %59 to i32*
  %61 = load i32**, i32*** %8, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* %60, i32** %64, align 8
  br label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %51

68:                                               ; preds = %51
  %69 = load i32**, i32*** %7, align 8
  %70 = load i32*, i32** %9, align 8
  call void @calc_mean(i32** %69, i32* %70)
  %71 = load i32**, i32*** %7, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32**, i32*** %8, align 8
  call void @calc_cov(i32** %71, i32* %72, i32** %73)
  %74 = load i32**, i32*** %8, align 8
  %75 = load i32, i32* @num_rows, align 4
  %76 = load i32, i32* @num_rows, align 4
  call void @dump_points(i32** %74, i32 %75, i32 %76)
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
