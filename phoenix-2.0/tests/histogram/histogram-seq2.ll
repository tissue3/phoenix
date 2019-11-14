; ModuleID = 'histogram-seq.ll'
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
@llvmInstrAtomicCounter = common global i64 0
@basicBlockAtomicCounter = common global i64 0
@mulAtomicCounter = common global i64 0
@memOpAtomicCounter = common global i64 0
@branchAtomicCounter = common global i64 0
@test_endianess.glob = common global i64 0
@fprintf.glob = common global i64 0
@printf.glob = common global i64 0
@exit.glob = common global i64 0
@swap_bytes.glob = common global i64 0
@main.glob = common global i64 0
@open.glob = common global i64 0
@perror.glob = common global i64 0
@__assert_fail.glob = common global i64 0
@fstat.glob = common global i64 0
@mmap.glob = common global i64 0
@llvm.memset.p0i8.i64.glob = common global i64 0
@munmap.glob = common global i64 0
@close.glob = common global i64 0
@formatLong = private unnamed_addr constant [31 x i8] c"\0A\0AllvmInstrAtomicCounter: %ld\0A\00", align 1
@formatLong.1 = private unnamed_addr constant [30 x i8] c"basicBlockAtomicCounter: %ld\0A\00", align 1
@formatLong.2 = private unnamed_addr constant [23 x i8] c"mulAtomicCounter: %ld\0A\00", align 1
@formatLong.3 = private unnamed_addr constant [25 x i8] c"memOpAtomicCounter: %ld\0A\00", align 1
@formatLong.4 = private unnamed_addr constant [26 x i8] c"branchAtomicCounter: %ld\0A\00", align 1
@formatLong.5 = private unnamed_addr constant [21 x i8] c"test_endianess: %ld\0A\00", align 1
@formatLong.6 = private unnamed_addr constant [14 x i8] c"fprintf: %ld\0A\00", align 1
@formatLong.7 = private unnamed_addr constant [13 x i8] c"printf: %ld\0A\00", align 1
@formatLong.8 = private unnamed_addr constant [11 x i8] c"exit: %ld\0A\00", align 1
@formatLong.9 = private unnamed_addr constant [17 x i8] c"swap_bytes: %ld\0A\00", align 1
@formatLong.10 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [11 x i8] c"open: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [13 x i8] c"perror: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [20 x i8] c"__assert_fail: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [12 x i8] c"fstat: %ld\0A\00", align 1
@formatLong.15 = private unnamed_addr constant [11 x i8] c"mmap: %ld\0A\00", align 1
@formatLong.16 = private unnamed_addr constant [27 x i8] c"llvm.memset.p0i8.i64: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [13 x i8] c"munmap: %ld\0A\00", align 1
@formatLong.18 = private unnamed_addr constant [12 x i8] c"close: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_endianess() #0 {
  %1 = atomicrmw add i64* @test_endianess.glob, i64 1 seq_cst
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 305419896, i32* %2, align 4
  %4 = bitcast i32* %2 to i8*
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8, i8* %5, align 1
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 120
  %9 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %11 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %12 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %8, label %13, label %20

13:                                               ; preds = %0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* @swap, align 4
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %44

20:                                               ; preds = %0
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 18
  %25 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %27 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %24, label %29, label %36

29:                                               ; preds = %20
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* @swap, align 4
  %32 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %33 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %34 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %35 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %40

36:                                               ; preds = %20
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #5
  %38 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  unreachable

40:                                               ; preds = %29
  %41 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %44

44:                                               ; preds = %40, %13
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @swap_bytes(i8*, i32) #0 {
  %3 = atomicrmw add i64* @swap_bytes.glob, i64 1 seq_cst
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %9 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %10 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %12

12:                                               ; preds = %68, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 2
  %16 = icmp slt i32 %13, %15
  %17 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %19 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %16, label %21, label %75

21:                                               ; preds = %12
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %29, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %28, i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %7, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %44, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  store i8 %51, i8* %55, align 1
  %56 = load i8, i8* %7, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %58, %59
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %57, i64 %62
  store i8 %56, i8* %63, align 1
  %64 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %65 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 46 seq_cst
  %66 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %67 = atomicrmw add i64* @memOpAtomicCounter, i64 24 seq_cst
  br label %68

68:                                               ; preds = %21
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  %71 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %73 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %12

75:                                               ; preds = %12
  %76 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %77 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [256 x i32], align 16
  %13 = alloca [256 x i32], align 16
  %14 = alloca [256 x i32], align 16
  %15 = alloca i16*, align 8
  %16 = alloca i16*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp eq i8* %21, null
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 24 seq_cst
  %25 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %22, label %27, label %35

27:                                               ; preds = %2
  %28 = load i8**, i8*** %6, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  call void @exit(i32 1) #5
  %32 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %33 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %34 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  unreachable

35:                                               ; preds = %2
  %36 = load i8**, i8*** %6, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = call i32 (i8*, i32, ...) @open(i8* %39, i32 0)
  store i32 %40, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  %42 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %44 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %41, label %46, label %67

46:                                               ; preds = %35
  call void @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i8*, i8** %11, align 8
  %48 = call i32 (i8*, i32, ...) @open(i8* %47, i32 0)
  store i32 %48, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = icmp eq i32 %50, 0
  %52 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %53 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %54 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %51, label %56, label %60

56:                                               ; preds = %46
  %57 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %58 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %59 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %63

60:                                               ; preds = %46
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  %61 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

63:                                               ; preds = %56
  %64 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %65 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %66 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %67

67:                                               ; preds = %63, %35
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @fstat(i32 %68, %struct.stat* %10) #6
  %70 = icmp slt i32 %69, 0
  %71 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %73 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %70, label %75, label %96

75:                                               ; preds = %67
  call void @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @fstat(i32 %76, %struct.stat* %10) #6
  %78 = icmp slt i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = icmp eq i32 %79, 0
  %81 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %83 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %80, label %85, label %89

85:                                               ; preds = %75
  %86 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %87 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %88 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %92

89:                                               ; preds = %75
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  %90 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %91 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

92:                                               ; preds = %85
  %93 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %94 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %95 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %96

96:                                               ; preds = %92, %67
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, 1
  %100 = load i32, i32* %8, align 4
  %101 = call i8* @mmap(i8* null, i64 %99, i32 3, i32 2, i32 %100, i64 0) #6
  store i8* %101, i8** %9, align 8
  %102 = icmp eq i8* %101, null
  %103 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %104 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %105 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %106 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %102, label %107, label %131

107:                                              ; preds = %96
  call void @perror(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.10, i64 0, i64 0))
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = load i32, i32* %8, align 4
  %112 = call i8* @mmap(i8* null, i64 %110, i32 3, i32 2, i32 %111, i64 0) #6
  store i8* %112, i8** %9, align 8
  %113 = icmp eq i8* %112, null
  %114 = zext i1 %113 to i32
  %115 = icmp eq i32 %114, 0
  %116 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %117 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %118 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %119 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %115, label %120, label %124

120:                                              ; preds = %107
  %121 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %122 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %123 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %127

124:                                              ; preds = %107
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  %125 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %126 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

127:                                              ; preds = %120
  %128 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %129 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %130 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %131

131:                                              ; preds = %127, %96
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 66
  %137 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %138 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %139 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %140 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %136, label %151, label %141

141:                                              ; preds = %131
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 77
  %147 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %148 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %149 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %150 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %146, label %151, label %155

151:                                              ; preds = %141, %131
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  call void @exit(i32 1) #5
  %153 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %154 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  unreachable

155:                                              ; preds = %141
  call void @test_endianess()
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 28
  %158 = bitcast i8* %157 to i16*
  store i16* %158, i16** %15, align 8
  %159 = load i32, i32* @swap, align 4
  %160 = icmp ne i32 %159, 0
  %161 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %162 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %163 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %164 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %160, label %165, label %172

165:                                              ; preds = %155
  %166 = load i16*, i16** %15, align 8
  %167 = bitcast i16* %166 to i8*
  call void @swap_bytes(i8* %167, i32 2)
  %168 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %169 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %170 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %171 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %172

172:                                              ; preds = %165, %155
  %173 = load i16*, i16** %15, align 8
  %174 = load i16, i16* %173, align 2
  %175 = zext i16 %174 to i32
  %176 = icmp ne i32 %175, 24
  %177 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %178 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %179 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %180 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %176, label %181, label %186

181:                                              ; preds = %172
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i64 0, i64 0))
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i64 0, i64 0))
  call void @exit(i32 1) #5
  %184 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %185 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  unreachable

186:                                              ; preds = %172
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 10
  %189 = bitcast i8* %188 to i16*
  store i16* %189, i16** %16, align 8
  %190 = load i32, i32* @swap, align 4
  %191 = icmp ne i32 %190, 0
  %192 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %193 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %194 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %195 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %191, label %196, label %203

196:                                              ; preds = %186
  %197 = load i16*, i16** %16, align 8
  %198 = bitcast i16* %197 to i8*
  call void @swap_bytes(i8* %198, i32 2)
  %199 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %200 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %201 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %202 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %203

203:                                              ; preds = %196, %186
  %204 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = load i16*, i16** %16, align 8
  %208 = load i16, i16* %207, align 2
  %209 = zext i16 %208 to i32
  %210 = sub nsw i32 %206, %209
  store i32 %210, i32* %17, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %17, align 4
  %213 = sdiv i32 %212, 3
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %211, i32 %213)
  %215 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0))
  %216 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 0
  %217 = bitcast i32* %216 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %217, i8 0, i64 1024, i1 false)
  %218 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 0
  %219 = bitcast i32* %218 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %219, i8 0, i64 1024, i1 false)
  %220 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 0
  %221 = bitcast i32* %220 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %221, i8 0, i64 1024, i1 false)
  %222 = load i16*, i16** %16, align 8
  %223 = load i16, i16* %222, align 2
  %224 = zext i16 %223 to i32
  store i32 %224, i32* %7, align 4
  %225 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %226 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 27 seq_cst
  %227 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %228 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br label %229

229:                                              ; preds = %276, %203
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %233 = load i64, i64* %232, align 8
  %234 = icmp slt i64 %231, %233
  %235 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %236 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %237 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %238 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %234, label %239, label %283

239:                                              ; preds = %229
  %240 = load i8*, i8** %9, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i8, i8* %240, i64 %242
  store i8* %243, i8** %18, align 8
  %244 = load i8*, i8** %18, align 8
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  %250 = load i8*, i8** %9, align 8
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %250, i64 %253
  store i8* %254, i8** %18, align 8
  %255 = load i8*, i8** %18, align 8
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i64
  %258 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 4
  %261 = load i8*, i8** %9, align 8
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 2
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %261, i64 %264
  store i8* %265, i8** %18, align 8
  %266 = load i8*, i8** %18, align 8
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i64
  %269 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  %272 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %273 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 39 seq_cst
  %274 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %275 = atomicrmw add i64* @memOpAtomicCounter, i64 21 seq_cst
  br label %276

276:                                              ; preds = %239
  %277 = load i32, i32* %7, align 4
  %278 = add nsw i32 %277, 3
  store i32 %278, i32* %7, align 4
  %279 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %280 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %281 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %282 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %229

283:                                              ; preds = %229
  %284 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %285 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %284, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  %286 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %286, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %288 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %289 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %290 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %291 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %292

292:                                              ; preds = %311, %283
  %293 = load i32, i32* %7, align 4
  %294 = icmp slt i32 %293, 256
  %295 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %296 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %297 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %298 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %294, label %299, label %318

299:                                              ; preds = %292
  %300 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %7, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [256 x i32], [256 x i32]* %14, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %300, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %301, i32 %305)
  %307 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %308 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %309 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %310 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %311

311:                                              ; preds = %299
  %312 = load i32, i32* %7, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %7, align 4
  %314 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %315 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %316 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %317 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %292

318:                                              ; preds = %292
  %319 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %320 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %319, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  %321 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %322 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %321, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %323 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %324 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %325 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %326 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %327

327:                                              ; preds = %346, %318
  %328 = load i32, i32* %7, align 4
  %329 = icmp slt i32 %328, 256
  %330 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %331 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %332 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %333 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %329, label %334, label %353

334:                                              ; preds = %327
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %336 = load i32, i32* %7, align 4
  %337 = load i32, i32* %7, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [256 x i32], [256 x i32]* %13, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %335, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %336, i32 %340)
  %342 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %343 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %344 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %345 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %346

346:                                              ; preds = %334
  %347 = load i32, i32* %7, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %7, align 4
  %349 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %350 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %351 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %352 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %327

353:                                              ; preds = %327
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %355 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %354, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %356, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %358 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %359 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %360 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %361 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %362

362:                                              ; preds = %381, %353
  %363 = load i32, i32* %7, align 4
  %364 = icmp slt i32 %363, 256
  %365 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %366 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %367 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %368 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %364, label %369, label %388

369:                                              ; preds = %362
  %370 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %371 = load i32, i32* %7, align 4
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [256 x i32], [256 x i32]* %12, i64 0, i64 %373
  %375 = load i32, i32* %374, align 4
  %376 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %370, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %371, i32 %375)
  %377 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %378 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %379 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %380 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %381

381:                                              ; preds = %369
  %382 = load i32, i32* %7, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %7, align 4
  %384 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %385 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %386 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %387 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %362

388:                                              ; preds = %362
  %389 = load i8*, i8** %9, align 8
  %390 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %391 = load i64, i64* %390, align 8
  %392 = add nsw i64 %391, 1
  %393 = call i32 @munmap(i8* %389, i64 %392) #6
  %394 = icmp slt i32 %393, 0
  %395 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %396 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %397 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %398 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %394, label %399, label %423

399:                                              ; preds = %388
  call void @perror(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.22, i64 0, i64 0))
  %400 = load i8*, i8** %9, align 8
  %401 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %402 = load i64, i64* %401, align 8
  %403 = add nsw i64 %402, 1
  %404 = call i32 @munmap(i8* %400, i64 %403) #6
  %405 = icmp slt i32 %404, 0
  %406 = zext i1 %405 to i32
  %407 = icmp eq i32 %406, 0
  %408 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %409 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %410 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %411 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %407, label %412, label %416

412:                                              ; preds = %399
  %413 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %414 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %415 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %419

416:                                              ; preds = %399
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 172, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  %417 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %418 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

419:                                              ; preds = %412
  %420 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %421 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %422 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %423

423:                                              ; preds = %419, %388
  %424 = load i32, i32* %8, align 4
  %425 = call i32 @close(i32 %424)
  %426 = icmp slt i32 %425, 0
  %427 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %428 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %429 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %430 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %426, label %431, label %452

431:                                              ; preds = %423
  call void @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  %432 = load i32, i32* %8, align 4
  %433 = call i32 @close(i32 %432)
  %434 = icmp slt i32 %433, 0
  %435 = zext i1 %434 to i32
  %436 = icmp eq i32 %435, 0
  %437 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %438 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %439 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %440 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %436, label %441, label %445

441:                                              ; preds = %431
  %442 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %443 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %444 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %448

445:                                              ; preds = %431
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #5
  %446 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %447 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

448:                                              ; preds = %441
  %449 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %450 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %451 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %452

452:                                              ; preds = %448, %423
  %453 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %454 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
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
  %test_endianess.val = load i64, i64* @test_endianess.glob
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @formatLong.5, i32 0, i32 0), i64 %test_endianess.val)
  %fprintf.val = load i64, i64* @fprintf.glob
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.6, i32 0, i32 0), i64 %fprintf.val)
  %printf.val = load i64, i64* @printf.glob
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.7, i32 0, i32 0), i64 %printf.val)
  %exit.val = load i64, i64* @exit.glob
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.8, i32 0, i32 0), i64 %exit.val)
  %swap_bytes.val = load i64, i64* @swap_bytes.glob
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.9, i32 0, i32 0), i64 %swap_bytes.val)
  %main.val = load i64, i64* @main.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.10, i32 0, i32 0), i64 %main.val)
  %open.val = load i64, i64* @open.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.11, i32 0, i32 0), i64 %open.val)
  %perror.val = load i64, i64* @perror.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.12, i32 0, i32 0), i64 %perror.val)
  %__assert_fail.val = load i64, i64* @__assert_fail.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.13, i32 0, i32 0), i64 %__assert_fail.val)
  %fstat.val = load i64, i64* @fstat.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.14, i32 0, i32 0), i64 %fstat.val)
  %mmap.val = load i64, i64* @mmap.glob
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.15, i32 0, i32 0), i64 %mmap.val)
  %llvm.memset.p0i8.i64.val = load i64, i64* @llvm.memset.p0i8.i64.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @formatLong.16, i32 0, i32 0), i64 %llvm.memset.p0i8.i64.val)
  %munmap.val = load i64, i64* @munmap.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.17, i32 0, i32 0), i64 %munmap.val)
  %close.val = load i64, i64* @close.glob
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.18, i32 0, i32 0), i64 %close.val)
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
