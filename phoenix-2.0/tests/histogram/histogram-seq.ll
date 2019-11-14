; ModuleID = 'histogram-seq.c'
source_filename = "histogram-seq.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [17 x i8] c"No need to swap\0A\00", align 1
@swap = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Need to swap\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Error: Invalid value found in memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Swapping %d and %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"USAGE: %s <bitmap filename>\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"Error at line\0A\09(fd = open(fname, O_RDONLY)) < 0\0ASystem Msg\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"((fd = open(fname, 00)) < 0) == 0\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"histogram-seq.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Error at line\0A\09fstat(fd, &finfo) < 0\0ASystem Msg\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"(fstat(fd, &finfo) < 0) == 0\00", align 1
@.str.10 = private unnamed_addr constant [115 x i8] c"Error at line\0A\09(fdata = mmap(0, finfo.st_size + 1, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == NULL\0ASystem Msg\00", align 1
@.str.11 = private unnamed_addr constant [82 x i8] c"((fdata = mmap(0, finfo.st_size + 1, 0x1 | 0x2, 0x02, fd, 0)) == ((void*)0)) == 0\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"File is not a valid bitmap file. Exiting\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"Error: Invalid bitmap format - \00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"This application only accepts 24-bit pictures. Exiting\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"This file has %d bytes of image data, %d pixels\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Starting sequential histogram\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"\0A\0ABlue\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"----------\0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"%d - %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"\0A\0AGreen\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"\0A\0ARed\0A\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"Error at line\0A\09munmap(fdata, finfo.st_size + 1) < 0\0ASystem Msg\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"(munmap(fdata, finfo.st_size + 1) < 0) == 0\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"Error at line\0A\09close(fd) < 0\0ASystem Msg\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"(close(fd) < 0) == 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_endianess() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  store i32 305419896, i32* %1, align 4
  %3 = bitcast i32* %1 to i8*
  store i8* %3, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 120
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @swap, align 4
  br label %22

11:                                               ; preds = %0
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 18
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @swap, align 4
  br label %21

19:                                               ; preds = %11
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %8
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_bytes(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %55, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sdiv i32 %9, 2
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %7
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8*, i8** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %20, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %19, i32 %28)
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %6, align 1
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %36, %37
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %35, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  store i8 %42, i8* %46, align 1
  %47 = load i8, i8* %6, align 1
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %48, i64 %53
  store i8 %47, i8* %54, align 1
  br label %55

55:                                               ; preds = %12
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %7

58:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [256 x i32], align 16
  %12 = alloca [256 x i32], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca i16*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %25)
  call void @exit(i32 1) #5
  unreachable

27:                                               ; preds = %2
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 (i8*, i32, ...) @open(i8* %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  call void @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i8*, i32, ...) @open(i8* %35, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %34
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @fstat(i32 %44, %struct.stat* %9) #6
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  call void @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @fstat(i32 %48, %struct.stat* %9) #6
  %50 = icmp slt i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %55

54:                                               ; preds = %47
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55, %43
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = call i8* @mmap(i8* null, i64 %59, i32 3, i32 2, i32 %60, i64 0) #6
  store i8* %61, i8** %8, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %56
  call void @perror(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.10, i64 0, i64 0))
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @mmap(i8* null, i64 %66, i32 3, i32 2, i32 %67, i64 0) #6
  store i8* %68, i8** %8, align 8
  %69 = icmp eq i8* %68, null
  %70 = zext i1 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %74

73:                                               ; preds = %63
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %56
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 0
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 66
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 77
  br i1 %86, label %87, label %89

87:                                               ; preds = %81, %75
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

89:                                               ; preds = %81
  call void @test_endianess()
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 28
  %92 = bitcast i8* %91 to i16*
  store i16* %92, i16** %14, align 8
  %93 = load i32, i32* @swap, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i16*, i16** %14, align 8
  %97 = bitcast i16* %96 to i8*
  call void @swap_bytes(i8* %97, i32 2)
  br label %98

98:                                               ; preds = %95, %89
  %99 = load i16*, i16** %14, align 8
  %100 = load i16, i16* %99, align 2
  %101 = zext i16 %100 to i32
  %102 = icmp ne i32 %101, 24
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 1) #5
  unreachable

106:                                              ; preds = %98
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 10
  %109 = bitcast i8* %108 to i16*
  store i16* %109, i16** %15, align 8
  %110 = load i32, i32* @swap, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i16*, i16** %15, align 8
  %114 = bitcast i16* %113 to i8*
  call void @swap_bytes(i8* %114, i32 2)
  br label %115

115:                                              ; preds = %112, %106
  %116 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i16*, i16** %15, align 8
  %120 = load i16, i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = sub nsw i32 %118, %121
  store i32 %122, i32* %16, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %16, align 4
  %125 = sdiv i32 %124, 3
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %123, i32 %125)
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %128 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 0
  %129 = bitcast i32* %128 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %129, i8 0, i64 1024, i1 false)
  %130 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %131 = bitcast i32* %130 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %131, i8 0, i64 1024, i1 false)
  %132 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %133 = bitcast i32* %132 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %133, i8 0, i64 1024, i1 false)
  %134 = load i16*, i16** %15, align 8
  %135 = load i16, i16* %134, align 2
  %136 = zext i16 %135 to i32
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %176, %115
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %139, %141
  br i1 %142, label %143, label %179

143:                                              ; preds = %137
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8* %147, i8** %17, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load i8*, i8** %8, align 8
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  store i8* %158, i8** %17, align 8
  %159 = load i8*, i8** %17, align 8
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i64
  %162 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load i8*, i8** %8, align 8
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 2
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  store i8* %169, i8** %17, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %143
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 3
  store i32 %178, i32* %6, align 4
  br label %137

179:                                              ; preds = %137
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %195, %179
  %185 = load i32, i32* %6, align 4
  %186 = icmp slt i32 %185, 256
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %189, i32 %193)
  br label %195

195:                                              ; preds = %187
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %6, align 4
  br label %184

198:                                              ; preds = %184
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %201, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %203

203:                                              ; preds = %214, %198
  %204 = load i32, i32* %6, align 4
  %205 = icmp slt i32 %204, 256
  br i1 %205, label %206, label %217

206:                                              ; preds = %203
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %208 = load i32, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %208, i32 %212)
  br label %214

214:                                              ; preds = %206
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %203

217:                                              ; preds = %203
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %219 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %218, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %222

222:                                              ; preds = %233, %217
  %223 = load i32, i32* %6, align 4
  %224 = icmp slt i32 %223, 256
  br i1 %224, label %225, label %236

225:                                              ; preds = %222
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [256 x i32], [256 x i32]* %11, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %226, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %227, i32 %231)
  br label %233

233:                                              ; preds = %225
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %6, align 4
  br label %222

236:                                              ; preds = %222
  %237 = load i8*, i8** %8, align 8
  %238 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %239 = load i64, i64* %238, align 8
  %240 = add nsw i64 %239, 1
  %241 = call i32 @munmap(i8* %237, i64 %240) #6
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %255

243:                                              ; preds = %236
  call void @perror(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i64 0, i64 0))
  %244 = load i8*, i8** %8, align 8
  %245 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %246 = load i64, i64* %245, align 8
  %247 = add nsw i64 %246, 1
  %248 = call i32 @munmap(i8* %244, i64 %247) #6
  %249 = icmp slt i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  br label %254

253:                                              ; preds = %243
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

254:                                              ; preds = %252
  br label %255

255:                                              ; preds = %254, %236
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @close(i32 %256)
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %268

259:                                              ; preds = %255
  call void @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  %260 = load i32, i32* %7, align 4
  %261 = call i32 @close(i32 %260)
  %262 = icmp slt i32 %261, 0
  %263 = zext i1 %262 to i32
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  br label %267

266:                                              ; preds = %259
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  unreachable

267:                                              ; preds = %265
  br label %268

268:                                              ; preds = %267, %255
  ret i32 0
}

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local void @perror(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i64) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @munmap(i8*, i64) #3

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
