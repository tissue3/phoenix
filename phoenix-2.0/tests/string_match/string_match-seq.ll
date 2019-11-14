; ModuleID = 'string_match-seq.c'
source_filename = "string_match-seq.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.str_data_t = type { i32, i32, i64, i8*, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"data_in\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"string_match-seq.c\00", align 1
@__PRETTY_FUNCTION__.string_match = private unnamed_addr constant [32 x i8] c"void string_match(str_data_t *)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Helloworld\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"howareyou\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ferrari\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"whotheman\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [19 x i8] c"FOUND: WORD IS %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"USAGE: %s <keys filename>\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"String Match: Running...\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"Error at line\0A\09(fd_keys = open(fname_keys,O_RDONLY)) < 0\0ASystem Msg\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"((fd_keys = open(fname_keys,00)) < 0) == 0\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"Error at line\0A\09fstat(fd_keys, &finfo_keys) < 0\0ASystem Msg\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"(fstat(fd_keys, &finfo_keys) < 0) == 0\00", align 1
@.str.13 = private unnamed_addr constant [129 x i8] c"Error at line\0A\09(fdata_keys= mmap(0, finfo_keys.st_size + 1, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd_keys, 0)) == NULL\0ASystem Msg\00", align 1
@.str.14 = private unnamed_addr constant [96 x i8] c"((fdata_keys= mmap(0, finfo_keys.st_size + 1, 0x1 | 0x2, 0x02, fd_keys, 0)) == ((void*)0)) == 0\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Keys Size is %ld\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"String Match: Completed %ld\0A\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"Error at line\0A\09munmap(fdata_keys, finfo_keys.st_size + 1) < 0\0ASystem Msg\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"(munmap(fdata_keys, finfo_keys.st_size + 1) < 0) == 0\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"Error at line\0A\09close(fd_keys) < 0\0ASystem Msg\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"(close(fd_keys) < 0) == 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnextline(i8*, i32, i8*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %50, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %11, 1
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %9
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %68

26:                                               ; preds = %22
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %68

28:                                               ; preds = %14
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 13
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %4, align 4
  br label %68

39:                                               ; preds = %28
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %68

50:                                               ; preds = %39
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  store i8 %55, i8* %59, align 1
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %9

62:                                               ; preds = %9
  %63 = load i32, i32* %8, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %62, %47, %36, %26, %25
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_hashes(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9) #6
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = add nsw i32 %18, 5
  %20 = trunc i32 %19 to i8
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 %20, i8* %24, align 1
  br label %25

25:                                               ; preds = %12
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %32, align 1
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_match(%struct.str_data_t*) #0 {
  %2 = alloca %struct.str_data_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.str_data_t* %0, %struct.str_data_t** %2, align 8
  %15 = load %struct.str_data_t*, %struct.str_data_t** %2, align 8
  %16 = icmp ne %struct.str_data_t* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %19

18:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.string_match, i64 0, i64 0)) #7
  unreachable

19:                                               ; preds = %17
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i64 @strlen(i8* %20) #6
  %22 = add i64 %21, 1
  %23 = call noalias i8* @malloc(i64 %22) #8
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i64 @strlen(i8* %24) #6
  %26 = add i64 %25, 1
  %27 = call noalias i8* @malloc(i64 %26) #8
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strlen(i8* %28) #6
  %30 = add i64 %29, 1
  %31 = call noalias i8* @malloc(i64 %30) #8
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strlen(i8* %32) #6
  %34 = add i64 %33, 1
  %35 = call noalias i8* @malloc(i64 %34) #8
  store i8* %35, i8** %10, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %7, align 8
  call void @compute_hashes(i8* %36, i8* %37)
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %8, align 8
  call void @compute_hashes(i8* %38, i8* %39)
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %9, align 8
  call void @compute_hashes(i8* %40, i8* %41)
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %10, align 8
  call void @compute_hashes(i8* %42, i8* %43)
  %44 = load %struct.str_data_t*, %struct.str_data_t** %2, align 8
  %45 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  %47 = call noalias i8* @malloc(i64 1024) #8
  store i8* %47, i8** %13, align 8
  %48 = call noalias i8* @malloc(i64 1024) #8
  store i8* %48, i8** %14, align 8
  %49 = load i8*, i8** %13, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %49, i8 0, i64 1024, i1 false)
  %50 = load i8*, i8** %14, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %50, i8 0, i64 1024, i1 false)
  br label %51

51:                                               ; preds = %94, %19
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i32 @getnextline(i8* %52, i32 1024, i8* %53)
  store i32 %54, i32* %11, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %51
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %14, align 8
  call void @compute_hashes(i8* %57, i8* %58)
  %59 = load i8*, i8** %7, align 8
  %60 = load i8*, i8** %14, align 8
  %61 = call i32 @strcmp(i8* %59, i8* %60) #6
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %63, %56
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %14, align 8
  %70 = call i32 @strcmp(i8* %68, i8* %69) #6
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = call i32 @strcmp(i8* %77, i8* %78) #6
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i8*, i8** %10, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @strcmp(i8* %86, i8* %87) #6
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %90, %85
  %95 = load i8*, i8** %12, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** %13, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %99, i8 0, i64 1024, i1 false)
  %100 = load i8*, i8** %14, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %100, i8 0, i64 1024, i1 false)
  br label %51

101:                                              ; preds = %51
  %102 = load i8*, i8** %13, align 8
  call void @free(i8* %102) #8
  %103 = load i8*, i8** %14, align 8
  call void @free(i8* %103) #8
  %104 = load i8*, i8** %7, align 8
  call void @free(i8* %104) #8
  %105 = load i8*, i8** %8, align 8
  call void @free(i8* %105) #8
  %106 = load i8*, i8** %9, align 8
  call void @free(i8* %106) #8
  %107 = load i8*, i8** %10, align 8
  call void @free(i8* %107) #8
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.str_data_t, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %20)
  call void @exit(i32 1) #7
  unreachable

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %9, align 8
  %26 = call i64 @time(i64* null) #8
  %27 = trunc i64 %26 to i32
  call void @srand(i32 %27) #8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 (i8*, i32, ...) @open(i8* %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  call void @perror(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 (i8*, i32, ...) @open(i8* %33, i32 0)
  store i32 %34, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %40

39:                                               ; preds = %32
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @fstat(i32 %42, %struct.stat* %8) #8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  call void @perror(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @fstat(i32 %46, %struct.stat* %8) #8
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %53

52:                                               ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %41
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  %58 = load i32, i32* %6, align 4
  %59 = call i8* @mmap(i8* null, i64 %57, i32 3, i32 2, i32 %58, i64 0) #8
  store i8* %59, i8** %7, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  call void @perror(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.13, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  %65 = load i32, i32* %6, align 4
  %66 = call i8* @mmap(i8* null, i64 %64, i32 3, i32 2, i32 %65, i64 0) #8
  store i8* %66, i8** %7, align 8
  %67 = icmp eq i8* %66, null
  %68 = zext i1 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %72

71:                                               ; preds = %61
  call void @__assert_fail(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72, %54
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i64 %76)
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %12, i32 0, i32 0
  store i32 %80, i32* %81, align 8
  %82 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %12, i32 0, i32 1
  store i32 0, i32* %82, align 4
  %83 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %12, i32 0, i32 2
  store i64 0, i64* %83, align 8
  %84 = load i8*, i8** %7, align 8
  %85 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %12, i32 0, i32 3
  store i8* %84, i8** %85, align 8
  %86 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %12, i32 0, i32 4
  store i8* null, i8** %86, align 8
  %87 = call noalias i8* @malloc(i64 2) #8
  %88 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %12, i32 0, i32 5
  store i8* %87, i8** %88, align 8
  %89 = call i32 @gettimeofday(%struct.timeval* %10, %struct.timezone* null) #8
  call void @string_match(%struct.str_data_t* %12)
  %90 = call i32 @gettimeofday(%struct.timeval* %11, %struct.timezone* null) #8
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %92, %94
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i64 %95)
  %97 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %12, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  call void @free(i8* %98) #8
  %99 = load i8*, i8** %7, align 8
  %100 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  %103 = call i32 @munmap(i8* %99, i64 %102) #8
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %73
  call void @perror(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i64 0, i64 0))
  %106 = load i8*, i8** %7, align 8
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  %110 = call i32 @munmap(i8* %106, i64 %109) #8
  %111 = icmp slt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %116

115:                                              ; preds = %105
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

116:                                              ; preds = %114
  br label %117

117:                                              ; preds = %116, %73
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @close(i32 %118)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @close(i32 %122)
  %124 = icmp slt i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %129

128:                                              ; preds = %121
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %129, %117
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare dso_local i64 @time(i64*) #3

declare dso_local i32 @open(i8*, i32, ...) #5

declare dso_local void @perror(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i64) #3

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

; Function Attrs: nounwind
declare dso_local i32 @munmap(i8*, i64) #3

declare dso_local i32 @close(i32) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
