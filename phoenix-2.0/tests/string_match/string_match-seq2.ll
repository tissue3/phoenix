; ModuleID = 'string_match-seq.ll'
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
@llvmInstrAtomicCounter = common global i64 0
@basicBlockAtomicCounter = common global i64 0
@mulAtomicCounter = common global i64 0
@memOpAtomicCounter = common global i64 0
@branchAtomicCounter = common global i64 0
@getnextline.glob = common global i64 0
@compute_hashes.glob = common global i64 0
@strlen.glob = common global i64 0
@string_match.glob = common global i64 0
@__assert_fail.glob = common global i64 0
@malloc.glob = common global i64 0
@llvm.memset.p0i8.i64.glob = common global i64 0
@strcmp.glob = common global i64 0
@fprintf.glob = common global i64 0
@free.glob = common global i64 0
@main.glob = common global i64 0
@printf.glob = common global i64 0
@exit.glob = common global i64 0
@srand.glob = common global i64 0
@time.glob = common global i64 0
@open.glob = common global i64 0
@perror.glob = common global i64 0
@fstat.glob = common global i64 0
@mmap.glob = common global i64 0
@gettimeofday.glob = common global i64 0
@munmap.glob = common global i64 0
@close.glob = common global i64 0
@formatLong = private unnamed_addr constant [31 x i8] c"\0A\0AllvmInstrAtomicCounter: %ld\0A\00", align 1
@formatLong.1 = private unnamed_addr constant [30 x i8] c"basicBlockAtomicCounter: %ld\0A\00", align 1
@formatLong.2 = private unnamed_addr constant [23 x i8] c"mulAtomicCounter: %ld\0A\00", align 1
@formatLong.3 = private unnamed_addr constant [25 x i8] c"memOpAtomicCounter: %ld\0A\00", align 1
@formatLong.4 = private unnamed_addr constant [26 x i8] c"branchAtomicCounter: %ld\0A\00", align 1
@formatLong.5 = private unnamed_addr constant [18 x i8] c"getnextline: %ld\0A\00", align 1
@formatLong.6 = private unnamed_addr constant [21 x i8] c"compute_hashes: %ld\0A\00", align 1
@formatLong.7 = private unnamed_addr constant [13 x i8] c"strlen: %ld\0A\00", align 1
@formatLong.8 = private unnamed_addr constant [19 x i8] c"string_match: %ld\0A\00", align 1
@formatLong.9 = private unnamed_addr constant [20 x i8] c"__assert_fail: %ld\0A\00", align 1
@formatLong.10 = private unnamed_addr constant [13 x i8] c"malloc: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [27 x i8] c"llvm.memset.p0i8.i64: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [13 x i8] c"strcmp: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [14 x i8] c"fprintf: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [11 x i8] c"free: %ld\0A\00", align 1
@formatLong.15 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.16 = private unnamed_addr constant [13 x i8] c"printf: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [11 x i8] c"exit: %ld\0A\00", align 1
@formatLong.18 = private unnamed_addr constant [12 x i8] c"srand: %ld\0A\00", align 1
@formatLong.19 = private unnamed_addr constant [11 x i8] c"time: %ld\0A\00", align 1
@formatLong.20 = private unnamed_addr constant [11 x i8] c"open: %ld\0A\00", align 1
@formatLong.21 = private unnamed_addr constant [13 x i8] c"perror: %ld\0A\00", align 1
@formatLong.22 = private unnamed_addr constant [12 x i8] c"fstat: %ld\0A\00", align 1
@formatLong.23 = private unnamed_addr constant [11 x i8] c"mmap: %ld\0A\00", align 1
@formatLong.24 = private unnamed_addr constant [19 x i8] c"gettimeofday: %ld\0A\00", align 1
@formatLong.25 = private unnamed_addr constant [13 x i8] c"munmap: %ld\0A\00", align 1
@formatLong.26 = private unnamed_addr constant [12 x i8] c"close: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getnextline(i8*, i32, i8*) #0 {
  %4 = atomicrmw add i64* @getnextline.glob, i64 1 seq_cst
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %12 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %14

14:                                               ; preds = %91, %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp slt i32 %15, %17
  %19 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %21 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %18, label %23, label %107

23:                                               ; preds = %14
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  %31 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %33 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %30, label %35, label %53

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  %38 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %40 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %37, label %42, label %47

42:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  %43 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %45 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %117

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %5, align 4
  %49 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %51 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %117

53:                                               ; preds = %23
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 13
  %61 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %63 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %60, label %65, label %72

65:                                               ; preds = %53
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %5, align 4
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %117

72:                                               ; preds = %53
  %73 = load i8*, i8** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  %80 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %81 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %82 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %79, label %84, label %91

84:                                               ; preds = %72
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  %87 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %88 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %89 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %90 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %117

91:                                               ; preds = %72
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 %96, i8* %100, align 1
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  %103 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %104 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %105 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %106 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %14

107:                                              ; preds = %14
  %108 = load i32, i32* %9, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds i8, i8* %109, i64 %110
  store i8* %111, i8** %8, align 8
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %5, align 4
  %113 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %114 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %115 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %116 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %117

117:                                              ; preds = %107, %84, %65, %47, %42
  %118 = load i32, i32* %5, align 4
  %119 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %120 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %121 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i32 %118
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_hashes(i8*, i8*) #0 {
  %3 = atomicrmw add i64* @compute_hashes.glob, i64 1 seq_cst
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %8 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %9 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %11

11:                                               ; preds = %38, %2
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strlen(i8* %14) #6
  %16 = icmp ult i64 %13, %15
  %17 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %19 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %16, label %21, label %45

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = add nsw i32 %27, 5
  %29 = trunc i32 %28 to i8
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 %29, i8* %33, align 1
  %34 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %35 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %36 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %37 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  %41 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %43 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %11

45:                                               ; preds = %11
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8 0, i8* %49, align 1
  %50 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %51 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %52 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @string_match(%struct.str_data_t*) #0 {
  %2 = atomicrmw add i64* @string_match.glob, i64 1 seq_cst
  %3 = alloca %struct.str_data_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.str_data_t* %0, %struct.str_data_t** %3, align 8
  %16 = load %struct.str_data_t*, %struct.str_data_t** %3, align 8
  %17 = icmp ne %struct.str_data_t* %16, null
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 18 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %17, label %22, label %26

22:                                               ; preds = %1
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %25 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %29

26:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.string_match, i64 0, i64 0)) #7
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

29:                                               ; preds = %22
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strlen(i8* %30) #6
  %32 = add i64 %31, 1
  %33 = call noalias i8* @malloc(i64 %32) #8
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strlen(i8* %34) #6
  %36 = add i64 %35, 1
  %37 = call noalias i8* @malloc(i64 %36) #8
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strlen(i8* %38) #6
  %40 = add i64 %39, 1
  %41 = call noalias i8* @malloc(i64 %40) #8
  store i8* %41, i8** %10, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @strlen(i8* %42) #6
  %44 = add i64 %43, 1
  %45 = call noalias i8* @malloc(i64 %44) #8
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %8, align 8
  call void @compute_hashes(i8* %46, i8* %47)
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %9, align 8
  call void @compute_hashes(i8* %48, i8* %49)
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %10, align 8
  call void @compute_hashes(i8* %50, i8* %51)
  %52 = load i8*, i8** %7, align 8
  %53 = load i8*, i8** %11, align 8
  call void @compute_hashes(i8* %52, i8* %53)
  %54 = load %struct.str_data_t*, %struct.str_data_t** %3, align 8
  %55 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %54, i32 0, i32 3
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %13, align 8
  %57 = call noalias i8* @malloc(i64 1024) #8
  store i8* %57, i8** %14, align 8
  %58 = call noalias i8* @malloc(i64 1024) #8
  store i8* %58, i8** %15, align 8
  %59 = load i8*, i8** %14, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %59, i8 0, i64 1024, i1 false)
  %60 = load i8*, i8** %15, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %60, i8 0, i64 1024, i1 false)
  %61 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 49 seq_cst
  %63 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @memOpAtomicCounter, i64 27 seq_cst
  br label %65

65:                                               ; preds = %144, %29
  %66 = load i8*, i8** %14, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @getnextline(i8* %66, i32 1024, i8* %67)
  store i32 %68, i32* %12, align 4
  %69 = icmp sge i32 %68, 0
  %70 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %72 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %69, label %74, label %155

74:                                               ; preds = %65
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %15, align 8
  call void @compute_hashes(i8* %75, i8* %76)
  %77 = load i8*, i8** %8, align 8
  %78 = load i8*, i8** %15, align 8
  %79 = call i32 @strcmp(i8* %77, i8* %78) #6
  %80 = icmp ne i32 %79, 0
  %81 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %83 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %80, label %93, label %85

85:                                               ; preds = %74
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %87)
  %89 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %90 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %91 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %93

93:                                               ; preds = %85, %74
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %15, align 8
  %96 = call i32 @strcmp(i8* %94, i8* %95) #6
  %97 = icmp ne i32 %96, 0
  %98 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %99 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %100 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %101 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %97, label %110, label %102

102:                                              ; preds = %93
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %104)
  %106 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %107 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %108 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %109 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %110

110:                                              ; preds = %102, %93
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = call i32 @strcmp(i8* %111, i8* %112) #6
  %114 = icmp ne i32 %113, 0
  %115 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %116 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %117 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %118 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %114, label %127, label %119

119:                                              ; preds = %110
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %121)
  %123 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %125 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %126 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %127

127:                                              ; preds = %119, %110
  %128 = load i8*, i8** %11, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @strcmp(i8* %128, i8* %129) #6
  %131 = icmp ne i32 %130, 0
  %132 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %133 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %134 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %135 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %131, label %144, label %136

136:                                              ; preds = %127
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %138 = load i8*, i8** %14, align 8
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %138)
  %140 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %141 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %142 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %143 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %144

144:                                              ; preds = %136, %127
  %145 = load i8*, i8** %13, align 8
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  store i8* %148, i8** %13, align 8
  %149 = load i8*, i8** %14, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %149, i8 0, i64 1024, i1 false)
  %150 = load i8*, i8** %15, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %150, i8 0, i64 1024, i1 false)
  %151 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %152 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %153 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %154 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %65

155:                                              ; preds = %65
  %156 = load i8*, i8** %14, align 8
  call void @free(i8* %156) #8
  %157 = load i8*, i8** %15, align 8
  call void @free(i8* %157) #8
  %158 = load i8*, i8** %8, align 8
  call void @free(i8* %158) #8
  %159 = load i8*, i8** %9, align 8
  call void @free(i8* %159) #8
  %160 = load i8*, i8** %10, align 8
  call void @free(i8* %160) #8
  %161 = load i8*, i8** %11, align 8
  call void @free(i8* %161) #8
  %162 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %163 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %164 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
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
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.str_data_t, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %14 = load i8**, i8*** %6, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %17, label %22, label %30

22:                                               ; preds = %2
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %25)
  call void @exit(i32 1) #7
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %29 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  unreachable

30:                                               ; preds = %2
  %31 = load i8**, i8*** %6, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %10, align 8
  %34 = call i64 @time(i64* null) #8
  %35 = trunc i64 %34 to i32
  call void @srand(i32 %35) #8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 (i8*, i32, ...) @open(i8* %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  %40 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %42 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %39, label %44, label %65

44:                                               ; preds = %30
  call void @perror(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 (i8*, i32, ...) @open(i8* %45, i32 0)
  store i32 %46, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = icmp eq i32 %48, 0
  %50 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %51 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %52 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %53 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %49, label %54, label %58

54:                                               ; preds = %44
  %55 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %57 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %61

58:                                               ; preds = %44
  call void @__assert_fail(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %59 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

61:                                               ; preds = %54
  %62 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %65

65:                                               ; preds = %61, %30
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @fstat(i32 %66, %struct.stat* %9) #8
  %68 = icmp slt i32 %67, 0
  %69 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %71 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %68, label %73, label %94

73:                                               ; preds = %65
  call void @perror(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @fstat(i32 %74, %struct.stat* %9) #8
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = icmp eq i32 %77, 0
  %79 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %81 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %78, label %83, label %87

83:                                               ; preds = %73
  %84 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %85 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %86 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %90

87:                                               ; preds = %73
  call void @__assert_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %88 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

90:                                               ; preds = %83
  %91 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %93 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %94

94:                                               ; preds = %90, %65
  %95 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, 1
  %98 = load i32, i32* %7, align 4
  %99 = call i8* @mmap(i8* null, i64 %97, i32 3, i32 2, i32 %98, i64 0) #8
  store i8* %99, i8** %8, align 8
  %100 = icmp eq i8* %99, null
  %101 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %102 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %103 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %104 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %100, label %105, label %129

105:                                              ; preds = %94
  call void @perror(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.13, i64 0, i64 0))
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  %109 = load i32, i32* %7, align 4
  %110 = call i8* @mmap(i8* null, i64 %108, i32 3, i32 2, i32 %109, i64 0) #8
  store i8* %110, i8** %8, align 8
  %111 = icmp eq i8* %110, null
  %112 = zext i1 %111 to i32
  %113 = icmp eq i32 %112, 0
  %114 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %115 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %116 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %117 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %113, label %118, label %122

118:                                              ; preds = %105
  %119 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %120 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %121 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %125

122:                                              ; preds = %105
  call void @__assert_fail(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %123 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

125:                                              ; preds = %118
  %126 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %127 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %128 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %129

129:                                              ; preds = %125, %94
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %131 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i64 %132)
  %134 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %13, i32 0, i32 0
  store i32 %136, i32* %137, align 8
  %138 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %13, i32 0, i32 1
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %13, i32 0, i32 2
  store i64 0, i64* %139, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %13, i32 0, i32 3
  store i8* %140, i8** %141, align 8
  %142 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %13, i32 0, i32 4
  store i8* null, i8** %142, align 8
  %143 = call noalias i8* @malloc(i64 2) #8
  %144 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %13, i32 0, i32 5
  store i8* %143, i8** %144, align 8
  %145 = call i32 @gettimeofday(%struct.timeval* %11, %struct.timezone* null) #8
  call void @string_match(%struct.str_data_t* %13)
  %146 = call i32 @gettimeofday(%struct.timeval* %12, %struct.timezone* null) #8
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %148, %150
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i64 %151)
  %153 = getelementptr inbounds %struct.str_data_t, %struct.str_data_t* %13, i32 0, i32 5
  %154 = load i8*, i8** %153, align 8
  call void @free(i8* %154) #8
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  %159 = call i32 @munmap(i8* %155, i64 %158) #8
  %160 = icmp slt i32 %159, 0
  %161 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %162 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 40 seq_cst
  %163 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %164 = atomicrmw add i64* @memOpAtomicCounter, i64 15 seq_cst
  br i1 %160, label %165, label %189

165:                                              ; preds = %129
  call void @perror(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i64 0, i64 0))
  %166 = load i8*, i8** %8, align 8
  %167 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  %170 = call i32 @munmap(i8* %166, i64 %169) #8
  %171 = icmp slt i32 %170, 0
  %172 = zext i1 %171 to i32
  %173 = icmp eq i32 %172, 0
  %174 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %175 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %176 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %177 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %173, label %178, label %182

178:                                              ; preds = %165
  %179 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %180 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %181 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %185

182:                                              ; preds = %165
  call void @__assert_fail(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 224, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %183 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %184 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

185:                                              ; preds = %178
  %186 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %187 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %188 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %189

189:                                              ; preds = %185, %129
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @close(i32 %190)
  %192 = icmp slt i32 %191, 0
  %193 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %194 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %195 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %196 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %192, label %197, label %218

197:                                              ; preds = %189
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @close(i32 %198)
  %200 = icmp slt i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = icmp eq i32 %201, 0
  %203 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %204 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %205 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %206 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %202, label %207, label %211

207:                                              ; preds = %197
  %208 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %209 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %210 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %214

211:                                              ; preds = %197
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 225, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7
  %212 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %213 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

214:                                              ; preds = %207
  %215 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %216 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %217 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %218

218:                                              ; preds = %214, %189
  %219 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %220 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
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
  %getnextline.val = load i64, i64* @getnextline.glob
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.5, i32 0, i32 0), i64 %getnextline.val)
  %compute_hashes.val = load i64, i64* @compute_hashes.glob
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @formatLong.6, i32 0, i32 0), i64 %compute_hashes.val)
  %strlen.val = load i64, i64* @strlen.glob
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.7, i32 0, i32 0), i64 %strlen.val)
  %string_match.val = load i64, i64* @string_match.glob
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @formatLong.8, i32 0, i32 0), i64 %string_match.val)
  %__assert_fail.val = load i64, i64* @__assert_fail.glob
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.9, i32 0, i32 0), i64 %__assert_fail.val)
  %malloc.val = load i64, i64* @malloc.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.10, i32 0, i32 0), i64 %malloc.val)
  %llvm.memset.p0i8.i64.val = load i64, i64* @llvm.memset.p0i8.i64.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @formatLong.11, i32 0, i32 0), i64 %llvm.memset.p0i8.i64.val)
  %strcmp.val = load i64, i64* @strcmp.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.12, i32 0, i32 0), i64 %strcmp.val)
  %fprintf.val = load i64, i64* @fprintf.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.13, i32 0, i32 0), i64 %fprintf.val)
  %free.val = load i64, i64* @free.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.14, i32 0, i32 0), i64 %free.val)
  %main.val = load i64, i64* @main.glob
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.15, i32 0, i32 0), i64 %main.val)
  %printf.val = load i64, i64* @printf.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.16, i32 0, i32 0), i64 %printf.val)
  %exit.val = load i64, i64* @exit.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.17, i32 0, i32 0), i64 %exit.val)
  %srand.val = load i64, i64* @srand.glob
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.18, i32 0, i32 0), i64 %srand.val)
  %time.val = load i64, i64* @time.glob
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.19, i32 0, i32 0), i64 %time.val)
  %open.val = load i64, i64* @open.glob
  %printf20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.20, i32 0, i32 0), i64 %open.val)
  %perror.val = load i64, i64* @perror.glob
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.21, i32 0, i32 0), i64 %perror.val)
  %fstat.val = load i64, i64* @fstat.glob
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.22, i32 0, i32 0), i64 %fstat.val)
  %mmap.val = load i64, i64* @mmap.glob
  %printf23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.23, i32 0, i32 0), i64 %mmap.val)
  %gettimeofday.val = load i64, i64* @gettimeofday.glob
  %printf24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @formatLong.24, i32 0, i32 0), i64 %gettimeofday.val)
  %munmap.val = load i64, i64* @munmap.glob
  %printf25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.25, i32 0, i32 0), i64 %munmap.val)
  %close.val = load i64, i64* @close.glob
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.26, i32 0, i32 0), i64 %close.val)
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
