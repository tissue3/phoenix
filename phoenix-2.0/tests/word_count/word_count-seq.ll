; ModuleID = 'word_count-seq.c'
source_filename = "word_count-seq.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wc_count_t = type { i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.wc_data_t = type { i64, i8* }
%struct.map_args_t = type { i64, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@words = common dso_local global %struct.wc_count_t* null, align 8
@length = common dso_local global i32 0, align 4
@use_len = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"word_count-seq.c\00", align 1
@__PRETTY_FUNCTION__.wordcount_getword = private unnamed_addr constant [31 x i8] c"void wordcount_getword(void *)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"USAGE: %s <filename> [Top # of results to display]\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Wordcount: Running...\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Error at line\0A\09(fd = open(fname, O_RDONLY)) < 0\0ASystem Msg\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"((fd = open(fname, 00)) < 0) == 0\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Error at line\0A\09fstat(fd, &finfo) < 0\0ASystem Msg\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"(fstat(fd, &finfo) < 0) == 0\00", align 1
@.str.9 = private unnamed_addr constant [115 x i8] c"Error at line\0A\09(fdata = mmap(0, finfo.st_size + 1, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == NULL\0ASystem Msg\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"((fdata = mmap(0, finfo.st_size + 1, 0x1 | 0x2, 0x02, fd, 0)) == ((void*)0)) == 0\00", align 1
@.str.11 = private unnamed_addr constant [107 x i8] c"Error at line\0A\09(disp_num = (disp_num_str == NULL) ? DEFAULT_DISP_NUM : atoi(disp_num_str)) <= 0\0ASystem Msg\00", align 1
@.str.12 = private unnamed_addr constant [80 x i8] c"((disp_num = (disp_num_str == ((void*)0)) ? 10 : atoi(disp_num_str)) <= 0) == 0\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Wordcount Serial: Running\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.14 = private unnamed_addr constant [15 x i8] c"Use len is %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"Error at line\0A\09munmap(fdata, finfo.st_size + 1) < 0\0ASystem Msg\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"(munmap(fdata, finfo.st_size + 1) < 0) == 0\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"Error at line\0A\09close(fd) < 0\0ASystem Msg\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"(close(fd) < 0) == 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wordcount_cmp(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wc_count_t*, align 8
  %7 = alloca %struct.wc_count_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.wc_count_t*
  store %struct.wc_count_t* %11, %struct.wc_count_t** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.wc_count_t*
  store %struct.wc_count_t* %13, %struct.wc_count_t** %7, align 8
  %14 = load %struct.wc_count_t*, %struct.wc_count_t** %6, align 8
  %15 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.wc_count_t*, %struct.wc_count_t** %7, align 8
  %18 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %28, %23
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wordcount_splitter(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.wc_data_t*, align 8
  %5 = alloca %struct.map_args_t*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.wc_data_t*
  store %struct.wc_data_t* %7, %struct.wc_data_t** %4, align 8
  %8 = call noalias i8* @calloc(i64 2000, i64 16) #6
  %9 = bitcast i8* %8 to %struct.wc_count_t*
  store %struct.wc_count_t* %9, %struct.wc_count_t** @words, align 8
  store i32 2000, i32* @length, align 4
  store i32 0, i32* @use_len, align 4
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %19, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 2000
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %14, i64 %16
  %18 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %17, i32 0, i32 1
  store i32 0, i32* %18, align 8
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %10

22:                                               ; preds = %10
  %23 = call noalias i8* @malloc(i64 16) #6
  %24 = bitcast i8* %23 to %struct.map_args_t*
  store %struct.map_args_t* %24, %struct.map_args_t** %5, align 8
  %25 = load %struct.wc_data_t*, %struct.wc_data_t** %4, align 8
  %26 = getelementptr inbounds %struct.wc_data_t, %struct.wc_data_t* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = load %struct.map_args_t*, %struct.map_args_t** %5, align 8
  %29 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.wc_data_t*, %struct.wc_data_t** %4, align 8
  %31 = getelementptr inbounds %struct.wc_data_t, %struct.wc_data_t* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.map_args_t*, %struct.map_args_t** %5, align 8
  %34 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.map_args_t*, %struct.map_args_t** %5, align 8
  %36 = bitcast %struct.map_args_t* %35 to i8*
  call void @wordcount_getword(i8* %36)
  %37 = load %struct.map_args_t*, %struct.map_args_t** %5, align 8
  %38 = bitcast %struct.map_args_t* %37 to i8*
  call void @free(i8* %38) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wordcount_getword(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.map_args_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.map_args_t*
  store %struct.map_args_t* %10, %struct.map_args_t** %3, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %12 = icmp ne %struct.map_args_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.wordcount_getword, i64 0, i64 0)) #7
  unreachable

15:                                               ; preds = %13
  %16 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %17 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %4, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %24

23:                                               ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 121, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.wordcount_getword, i64 0, i64 0)) #7
  unreachable

24:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %97, %24
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %29 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %100

32:                                               ; preds = %25
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 @toupper(i32 %38) #8
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %5, align 1
  %41 = load i32, i32* %6, align 4
  switch i32 %41, label %76 [
    i32 0, label %42
    i32 1, label %77
  ]

42:                                               ; preds = %32
  %43 = load i8, i8* %5, align 1
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 %43, i8* %47, align 1
  %48 = load i8, i8* %5, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp slt i32 %49, 65
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load i8, i8* %5, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sgt i32 %53, 90
  br i1 %54, label %55, label %75

55:                                               ; preds = %51, %42
  %56 = load i8, i8* %5, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 39
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8*, i8** %4, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = add nsw i64 %72, 1
  %74 = trunc i64 %73 to i32
  call void @wordcount_addword(i8* %64, i32 %74)
  store i32 1, i32* %6, align 4
  br label %75

75:                                               ; preds = %59, %55, %51
  br label %96

76:                                               ; preds = %32
  br label %77

77:                                               ; preds = %32, %76
  %78 = load i8, i8* %5, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp sge i32 %79, 65
  br i1 %80, label %81, label %95

81:                                               ; preds = %77
  %82 = load i8, i8* %5, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp sle i32 %83, 90
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8* %89, i8** %4, align 8
  %90 = load i8, i8* %5, align 1
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8 %90, i8* %94, align 1
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %85, %81, %77
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %25

100:                                              ; preds = %25
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load i8*, i8** %8, align 8
  %105 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %106 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 0, i8* %108, align 1
  %109 = load i8*, i8** %4, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8*, i8** %4, align 8
  %115 = ptrtoint i8* %113 to i64
  %116 = ptrtoint i8* %114 to i64
  %117 = sub i64 %115, %116
  %118 = add nsw i64 %117, 1
  %119 = trunc i64 %118 to i32
  call void @wordcount_addword(i8* %109, i32 %119)
  br label %120

120:                                              ; preds = %103, %100
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @toupper(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wordcount_addword(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @dobsearch(i8* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @use_len, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %14 = load i32, i32* @use_len, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %13, i64 %15
  %17 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %16, i32 0, i32 0
  store i8* %12, i8** %17, align 8
  %18 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %19 = load i32, i32* @use_len, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %18, i64 %20
  %22 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @use_len, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @use_len, align 4
  br label %96

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  %29 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %30 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %29, i64 1
  %31 = bitcast %struct.wc_count_t* %30 to i8*
  %32 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %33 = bitcast %struct.wc_count_t* %32 to i8*
  %34 = load i32, i32* @use_len, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 16
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %33, i64 %36, i1 false)
  %37 = load i8*, i8** %3, align 8
  %38 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %39 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %38, i64 0
  %40 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %39, i32 0, i32 0
  store i8* %37, i8** %40, align 8
  %41 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %42 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %41, i64 0
  %43 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @use_len, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @use_len, align 4
  br label %95

46:                                               ; preds = %25
  %47 = load i8*, i8** %3, align 8
  %48 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %48, i64 %50
  %52 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcmp(i8* %47, i8* %53) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %46
  %57 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %57, i64 %59
  %61 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %94

64:                                               ; preds = %46
  %65 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %65, i64 %68
  %70 = bitcast %struct.wc_count_t* %69 to i8*
  %71 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %71, i64 %73
  %75 = bitcast %struct.wc_count_t* %74 to i8*
  %76 = load i32, i32* @use_len, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 16
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %75, i64 %80, i1 false)
  %81 = load i8*, i8** %3, align 8
  %82 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %82, i64 %84
  %86 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %85, i32 0, i32 0
  store i8* %81, i8** %86, align 8
  %87 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %87, i64 %89
  %91 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %90, i32 0, i32 1
  store i32 1, i32* %91, align 8
  %92 = load i32, i32* @use_len, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @use_len, align 4
  br label %94

94:                                               ; preds = %64, %56
  br label %95

95:                                               ; preds = %94, %28
  br label %96

96:                                               ; preds = %95, %11
  %97 = load i32, i32* @use_len, align 4
  %98 = load i32, i32* @length, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i32, i32* @length, align 4
  %102 = mul nsw i32 %101, 2
  store i32 %102, i32* @length, align 4
  %103 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %104 = bitcast %struct.wc_count_t* %103 to i8*
  %105 = load i32, i32* @length, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 16
  %108 = call i8* @realloc(i8* %104, i64 %107) #6
  %109 = bitcast i8* %108 to %struct.wc_count_t*
  store %struct.wc_count_t* %109, %struct.wc_count_t** @words, align 8
  br label %110

110:                                              ; preds = %100, %96
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dobsearch(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i32, i32* @use_len, align 4
  store i32 %8, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %9

9:                                                ; preds = %39, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %10, %11
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  %18 = sdiv i32 %17, 2
  store i32 %18, i32* %7, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %20, i64 %22
  %24 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @strcmp(i8* %19, i8* %25) #8
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %14
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %5, align 4
  br label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38
  br label %9

40:                                               ; preds = %9
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %29
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.wc_data_t, align 8
  %14 = alloca %struct.wc_count_t*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  call void @exit(i32 1) #7
  unreachable

24:                                               ; preds = %2
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %11, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %12, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 (i8*, i32, ...) @open(i8* %32, i32 0)
  store i32 %33, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  call void @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 (i8*, i32, ...) @open(i8* %36, i32 0)
  store i32 %37, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  %39 = zext i1 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %43

42:                                               ; preds = %35
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 250, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @fstat(i32 %45, %struct.stat* %10) #6
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  call void @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @fstat(i32 %49, %struct.stat* %10) #6
  %51 = icmp slt i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %56

55:                                               ; preds = %48
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 252, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %44
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  %61 = load i32, i32* %7, align 4
  %62 = call i8* @mmap(i8* null, i64 %60, i32 3, i32 2, i32 %61, i64 0) #6
  store i8* %62, i8** %8, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  call void @perror(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.9, i64 0, i64 0))
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  %68 = load i32, i32* %7, align 4
  %69 = call i8* @mmap(i8* null, i64 %67, i32 3, i32 2, i32 %68, i64 0) #6
  store i8* %69, i8** %8, align 8
  %70 = icmp eq i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %75

74:                                               ; preds = %64
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75, %57
  %77 = load i8*, i8** %12, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %12, align 8
  %82 = call i32 @atoi(i8* %81) #8
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi i32 [ 10, %79 ], [ %82, %80 ]
  store i32 %84, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  call void @perror(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.11, i64 0, i64 0))
  %87 = load i8*, i8** %12, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %93

90:                                               ; preds = %86
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @atoi(i8* %91) #8
  br label %93

93:                                               ; preds = %90, %89
  %94 = phi i32 [ 10, %89 ], [ %92, %90 ]
  store i32 %94, i32* %9, align 4
  %95 = icmp sle i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %100

99:                                               ; preds = %93
  call void @__assert_fail(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %83
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.wc_data_t, %struct.wc_data_t* %13, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds %struct.wc_data_t, %struct.wc_data_t* %13, i32 0, i32 1
  store i8* %105, i8** %106, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %108 = bitcast %struct.wc_data_t* %13 to i8*
  call void @wordcount_splitter(i8* %108)
  %109 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %110 = bitcast %struct.wc_count_t* %109 to i8*
  %111 = load i32, i32* @use_len, align 4
  %112 = sext i32 %111 to i64
  call void @qsort(i8* %110, i64 %112, i64 16, i32 (i8*, i8*)* @wordcount_cmp)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = load i32, i32* @use_len, align 4
  %115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %114)
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %139, %101
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @use_len, align 4
  %123 = icmp slt i32 %121, %122
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i1 [ false, %116 ], [ %123, %120 ]
  br i1 %125, label %126, label %142

126:                                              ; preds = %124
  %127 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %127, i64 %129
  store %struct.wc_count_t* %130, %struct.wc_count_t** %14, align 8
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %132 = load %struct.wc_count_t*, %struct.wc_count_t** %14, align 8
  %133 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.wc_count_t*, %struct.wc_count_t** %14, align 8
  %136 = getelementptr inbounds %struct.wc_count_t, %struct.wc_count_t* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %134, i32 %137)
  br label %139

139:                                              ; preds = %126
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %116

142:                                              ; preds = %124
  %143 = load %struct.wc_count_t*, %struct.wc_count_t** @words, align 8
  %144 = bitcast %struct.wc_count_t* %143 to i8*
  call void @free(i8* %144) #6
  %145 = load i8*, i8** %8, align 8
  %146 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, 1
  %149 = call i32 @munmap(i8* %145, i64 %148) #6
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %142
  call void @perror(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0))
  %152 = load i8*, i8** %8, align 8
  %153 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  %156 = call i32 @munmap(i8* %152, i64 %155) #6
  %157 = icmp slt i32 %156, 0
  %158 = zext i1 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  br label %162

161:                                              ; preds = %151
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 282, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162, %142
  %164 = load i32, i32* %7, align 4
  %165 = call i32 @close(i32 %164)
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  call void @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @close(i32 %168)
  %170 = icmp slt i32 %169, 0
  %171 = zext i1 %170 to i32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %175

174:                                              ; preds = %167
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 283, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  unreachable

175:                                              ; preds = %173
  br label %176

176:                                              ; preds = %175, %163
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i32 @open(i8*, i32, ...) #5

declare dso_local void @perror(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: nounwind
declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i64) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #5

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind
declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @close(i32) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
