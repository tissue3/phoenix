; ModuleID = 'linear_regression-seq.ll'
source_filename = "linear_regression-seq.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.POINT_T = type { i8, i8 }

@.str = private unnamed_addr constant [22 x i8] c"USAGE: %s <filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Linear Regression Serial: Running...\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Error at line\0A\09(fd = open(fname, O_RDONLY)) < 0\0ASystem Msg\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"((fd = open(fname, 00)) < 0) == 0\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"linear_regression-seq.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Error at line\0A\09fstat(fd, &finfo) < 0\0ASystem Msg\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"(fstat(fd, &finfo) < 0) == 0\00", align 1
@.str.7 = private unnamed_addr constant [115 x i8] c"Error at line\0A\09(fdata = mmap(0, finfo.st_size + 1, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == NULL\0ASystem Msg\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"((fdata = mmap(0, finfo.st_size + 1, 0x1 | 0x2, 0x02, fd, 0)) == ((void*)0)) == 0\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Linear Regression Serial Results:\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"\09a    = %lf\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"\09b    = %lf\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"\09xbar = %lf\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\09ybar = %lf\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"\09r2   = %lf\0A\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"\09SX   = %lld\0A\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"\09SY   = %lld\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"\09SXX  = %lld\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\09SYY  = %lld\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"\09SXY  = %lld\0A\00", align 1
@.str.20 = private unnamed_addr constant [63 x i8] c"Error at line\0A\09munmap(fdata, finfo.st_size + 1) < 0\0ASystem Msg\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"(munmap(fdata, finfo.st_size + 1) < 0) == 0\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Error at line\0A\09close(fd) < 0\0ASystem Msg\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"(close(fd) < 0) == 0\00", align 1
@llvmInstrAtomicCounter = common global i64 0
@basicBlockAtomicCounter = common global i64 0
@mulAtomicCounter = common global i64 0
@memOpAtomicCounter = common global i64 0
@branchAtomicCounter = common global i64 0
@main.glob = common global i64 0
@printf.glob = common global i64 0
@exit.glob = common global i64 0
@open.glob = common global i64 0
@perror.glob = common global i64 0
@__assert_fail.glob = common global i64 0
@fstat.glob = common global i64 0
@mmap.glob = common global i64 0
@munmap.glob = common global i64 0
@close.glob = common global i64 0
@formatLong = private unnamed_addr constant [31 x i8] c"\0A\0AllvmInstrAtomicCounter: %ld\0A\00", align 1
@formatLong.1 = private unnamed_addr constant [30 x i8] c"basicBlockAtomicCounter: %ld\0A\00", align 1
@formatLong.2 = private unnamed_addr constant [23 x i8] c"mulAtomicCounter: %ld\0A\00", align 1
@formatLong.3 = private unnamed_addr constant [25 x i8] c"memOpAtomicCounter: %ld\0A\00", align 1
@formatLong.4 = private unnamed_addr constant [26 x i8] c"branchAtomicCounter: %ld\0A\00", align 1
@formatLong.5 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.6 = private unnamed_addr constant [13 x i8] c"printf: %ld\0A\00", align 1
@formatLong.7 = private unnamed_addr constant [11 x i8] c"exit: %ld\0A\00", align 1
@formatLong.8 = private unnamed_addr constant [11 x i8] c"open: %ld\0A\00", align 1
@formatLong.9 = private unnamed_addr constant [13 x i8] c"perror: %ld\0A\00", align 1
@formatLong.10 = private unnamed_addr constant [20 x i8] c"__assert_fail: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [12 x i8] c"fstat: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [11 x i8] c"mmap: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [13 x i8] c"munmap: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [12 x i8] c"close: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.POINT_T*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  %29 = load i8**, i8*** %6, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp eq i8* %31, null
  %33 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 34 seq_cst
  %35 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %32, label %37, label %45

37:                                               ; preds = %2
  %38 = load i8**, i8*** %6, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %40)
  call void @exit(i32 1) #4
  %42 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %44 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  unreachable

45:                                               ; preds = %2
  %46 = load i8**, i8*** %6, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %9, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 (i8*, i32, ...) @open(i8* %50, i32 0)
  store i32 %51, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  %53 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %55 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %52, label %57, label %78

57:                                               ; preds = %45
  call void @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 (i8*, i32, ...) @open(i8* %58, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = icmp eq i32 %61, 0
  %63 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %65 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %66 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %62, label %67, label %71

67:                                               ; preds = %57
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %74

71:                                               ; preds = %57
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  %72 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

74:                                               ; preds = %67
  %75 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %77 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %78

78:                                               ; preds = %74, %45
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @fstat(i32 %79, %struct.stat* %10) #5
  %81 = icmp slt i32 %80, 0
  %82 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %84 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %85 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %81, label %86, label %107

86:                                               ; preds = %78
  call void @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @fstat(i32 %87, %struct.stat* %10) #5
  %89 = icmp slt i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = icmp eq i32 %90, 0
  %92 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %93 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %94 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %95 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %91, label %96, label %100

96:                                               ; preds = %86
  %97 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %98 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %99 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %103

100:                                              ; preds = %86
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  %101 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %102 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

103:                                              ; preds = %96
  %104 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %105 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %106 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %107

107:                                              ; preds = %103, %78
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = load i32, i32* %7, align 4
  %112 = call i8* @mmap(i8* null, i64 %110, i32 3, i32 2, i32 %111, i64 0) #5
  store i8* %112, i8** %8, align 8
  %113 = icmp eq i8* %112, null
  %114 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %115 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %116 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %117 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %113, label %118, label %142

118:                                              ; preds = %107
  call void @perror(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.7, i64 0, i64 0))
  %119 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  %122 = load i32, i32* %7, align 4
  %123 = call i8* @mmap(i8* null, i64 %121, i32 3, i32 2, i32 %122, i64 0) #5
  store i8* %123, i8** %8, align 8
  %124 = icmp eq i8* %123, null
  %125 = zext i1 %124 to i32
  %126 = icmp eq i32 %125, 0
  %127 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %128 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %129 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %130 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %126, label %131, label %135

131:                                              ; preds = %118
  %132 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %133 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %134 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %138

135:                                              ; preds = %118
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  %136 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %137 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

138:                                              ; preds = %131
  %139 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %140 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %141 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %142

142:                                              ; preds = %138, %107
  %143 = load i8*, i8** %8, align 8
  %144 = bitcast i8* %143 to %struct.POINT_T*
  store %struct.POINT_T* %144, %struct.POINT_T** %12, align 8
  %145 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = udiv i64 %146, 2
  store i64 %147, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %11, align 8
  %148 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %149 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %150 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %151 = atomicrmw add i64* @memOpAtomicCounter, i64 10 seq_cst
  br label %152

152:                                              ; preds = %230, %142
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %13, align 8
  %155 = icmp slt i64 %153, %154
  %156 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %157 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %158 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %159 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %155, label %160, label %237

160:                                              ; preds = %152
  %161 = load %struct.POINT_T*, %struct.POINT_T** %12, align 8
  %162 = load i64, i64* %11, align 8
  %163 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %161, i64 %162
  %164 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %163, i32 0, i32 0
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i64
  %167 = load i64, i64* %14, align 8
  %168 = add nsw i64 %167, %166
  store i64 %168, i64* %14, align 8
  %169 = load %struct.POINT_T*, %struct.POINT_T** %12, align 8
  %170 = load i64, i64* %11, align 8
  %171 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %169, i64 %170
  %172 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %171, i32 0, i32 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = load %struct.POINT_T*, %struct.POINT_T** %12, align 8
  %176 = load i64, i64* %11, align 8
  %177 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %175, i64 %176
  %178 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %177, i32 0, i32 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = mul nsw i32 %174, %180
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %16, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, i64* %16, align 8
  %185 = load %struct.POINT_T*, %struct.POINT_T** %12, align 8
  %186 = load i64, i64* %11, align 8
  %187 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %185, i64 %186
  %188 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %187, i32 0, i32 1
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i64
  %191 = load i64, i64* %15, align 8
  %192 = add nsw i64 %191, %190
  store i64 %192, i64* %15, align 8
  %193 = load %struct.POINT_T*, %struct.POINT_T** %12, align 8
  %194 = load i64, i64* %11, align 8
  %195 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %193, i64 %194
  %196 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %195, i32 0, i32 1
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = load %struct.POINT_T*, %struct.POINT_T** %12, align 8
  %200 = load i64, i64* %11, align 8
  %201 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %199, i64 %200
  %202 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %201, i32 0, i32 1
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = mul nsw i32 %198, %204
  %206 = sext i32 %205 to i64
  %207 = load i64, i64* %17, align 8
  %208 = add nsw i64 %207, %206
  store i64 %208, i64* %17, align 8
  %209 = load %struct.POINT_T*, %struct.POINT_T** %12, align 8
  %210 = load i64, i64* %11, align 8
  %211 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %209, i64 %210
  %212 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %211, i32 0, i32 0
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = load %struct.POINT_T*, %struct.POINT_T** %12, align 8
  %216 = load i64, i64* %11, align 8
  %217 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %215, i64 %216
  %218 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %217, i32 0, i32 1
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = mul nsw i32 %214, %220
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* %18, align 8
  %224 = add nsw i64 %223, %222
  store i64 %224, i64* %18, align 8
  %225 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %226 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 70 seq_cst
  %227 = atomicrmw add i64* @mulAtomicCounter, i64 3 seq_cst
  %228 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %229 = atomicrmw add i64* @memOpAtomicCounter, i64 34 seq_cst
  br label %230

230:                                              ; preds = %160
  %231 = load i64, i64* %11, align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* %11, align 8
  %233 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %234 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %235 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %236 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %152

237:                                              ; preds = %152
  %238 = load i64, i64* %14, align 8
  %239 = sitofp i64 %238 to double
  store double %239, double* %24, align 8
  %240 = load i64, i64* %15, align 8
  %241 = sitofp i64 %240 to double
  store double %241, double* %25, align 8
  %242 = load i64, i64* %16, align 8
  %243 = sitofp i64 %242 to double
  store double %243, double* %26, align 8
  %244 = load i64, i64* %17, align 8
  %245 = sitofp i64 %244 to double
  store double %245, double* %27, align 8
  %246 = load i64, i64* %18, align 8
  %247 = sitofp i64 %246 to double
  store double %247, double* %28, align 8
  %248 = load i64, i64* %13, align 8
  %249 = sitofp i64 %248 to double
  %250 = load double, double* %28, align 8
  %251 = fmul double %249, %250
  %252 = load double, double* %24, align 8
  %253 = load double, double* %25, align 8
  %254 = fmul double %252, %253
  %255 = fsub double %251, %254
  %256 = load i64, i64* %13, align 8
  %257 = sitofp i64 %256 to double
  %258 = load double, double* %26, align 8
  %259 = fmul double %257, %258
  %260 = load double, double* %24, align 8
  %261 = load double, double* %24, align 8
  %262 = fmul double %260, %261
  %263 = fsub double %259, %262
  %264 = fdiv double %255, %263
  store double %264, double* %20, align 8
  %265 = load i64, i64* %15, align 8
  %266 = sitofp i64 %265 to double
  %267 = load double, double* %20, align 8
  %268 = load i64, i64* %14, align 8
  %269 = sitofp i64 %268 to double
  %270 = fmul double %267, %269
  %271 = fsub double %266, %270
  %272 = load i64, i64* %13, align 8
  %273 = sitofp i64 %272 to double
  %274 = fdiv double %271, %273
  store double %274, double* %19, align 8
  %275 = load i64, i64* %14, align 8
  %276 = sitofp i64 %275 to double
  %277 = load i64, i64* %13, align 8
  %278 = sitofp i64 %277 to double
  %279 = fdiv double %276, %278
  store double %279, double* %21, align 8
  %280 = load i64, i64* %15, align 8
  %281 = sitofp i64 %280 to double
  %282 = load i64, i64* %13, align 8
  %283 = sitofp i64 %282 to double
  %284 = fdiv double %281, %283
  store double %284, double* %22, align 8
  %285 = load i64, i64* %13, align 8
  %286 = sitofp i64 %285 to double
  %287 = load double, double* %28, align 8
  %288 = fmul double %286, %287
  %289 = load double, double* %24, align 8
  %290 = load double, double* %25, align 8
  %291 = fmul double %289, %290
  %292 = fsub double %288, %291
  %293 = load i64, i64* %13, align 8
  %294 = sitofp i64 %293 to double
  %295 = load double, double* %28, align 8
  %296 = fmul double %294, %295
  %297 = load double, double* %24, align 8
  %298 = load double, double* %25, align 8
  %299 = fmul double %297, %298
  %300 = fsub double %296, %299
  %301 = fmul double %292, %300
  %302 = load i64, i64* %13, align 8
  %303 = sitofp i64 %302 to double
  %304 = load double, double* %26, align 8
  %305 = fmul double %303, %304
  %306 = load double, double* %24, align 8
  %307 = load double, double* %24, align 8
  %308 = fmul double %306, %307
  %309 = fsub double %305, %308
  %310 = load i64, i64* %13, align 8
  %311 = sitofp i64 %310 to double
  %312 = load double, double* %27, align 8
  %313 = fmul double %311, %312
  %314 = load double, double* %25, align 8
  %315 = load double, double* %25, align 8
  %316 = fmul double %314, %315
  %317 = fsub double %313, %316
  %318 = fmul double %309, %317
  %319 = fdiv double %301, %318
  store double %319, double* %23, align 8
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %321 = load double, double* %19, align 8
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), double %321)
  %323 = load double, double* %20, align 8
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), double %323)
  %325 = load double, double* %21, align 8
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), double %325)
  %327 = load double, double* %22, align 8
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), double %327)
  %329 = load double, double* %23, align 8
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), double %329)
  %331 = load i64, i64* %14, align 8
  %332 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i64 %331)
  %333 = load i64, i64* %15, align 8
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %333)
  %335 = load i64, i64* %16, align 8
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i64 %335)
  %337 = load i64, i64* %17, align 8
  %338 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 %337)
  %339 = load i64, i64* %18, align 8
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i64 %339)
  %341 = load i8*, i8** %8, align 8
  %342 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %343, 1
  %345 = call i32 @munmap(i8* %341, i64 %344) #5
  %346 = icmp slt i32 %345, 0
  %347 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %348 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 120 seq_cst
  %349 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %350 = atomicrmw add i64* @memOpAtomicCounter, i64 59 seq_cst
  br i1 %346, label %351, label %375

351:                                              ; preds = %237
  call void @perror(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.20, i64 0, i64 0))
  %352 = load i8*, i8** %8, align 8
  %353 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %354 = load i64, i64* %353, align 8
  %355 = add nsw i64 %354, 1
  %356 = call i32 @munmap(i8* %352, i64 %355) #5
  %357 = icmp slt i32 %356, 0
  %358 = zext i1 %357 to i32
  %359 = icmp eq i32 %358, 0
  %360 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %361 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %362 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %363 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %359, label %364, label %368

364:                                              ; preds = %351
  %365 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %366 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %367 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %371

368:                                              ; preds = %351
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  %369 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %370 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

371:                                              ; preds = %364
  %372 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %373 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %374 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %375

375:                                              ; preds = %371, %237
  %376 = load i32, i32* %7, align 4
  %377 = call i32 @close(i32 %376)
  %378 = icmp slt i32 %377, 0
  %379 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %380 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %381 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %382 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %378, label %383, label %404

383:                                              ; preds = %375
  call void @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  %384 = load i32, i32* %7, align 4
  %385 = call i32 @close(i32 %384)
  %386 = icmp slt i32 %385, 0
  %387 = zext i1 %386 to i32
  %388 = icmp eq i32 %387, 0
  %389 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %390 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %391 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %392 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %388, label %393, label %397

393:                                              ; preds = %383
  %394 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %395 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %396 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %400

397:                                              ; preds = %383
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  %398 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %399 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

400:                                              ; preds = %393
  %401 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %402 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %403 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %404

404:                                              ; preds = %400, %375
  %405 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %406 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
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
  %main.val = load i64, i64* @main.glob
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.5, i32 0, i32 0), i64 %main.val)
  %printf.val = load i64, i64* @printf.glob
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.6, i32 0, i32 0), i64 %printf.val)
  %exit.val = load i64, i64* @exit.glob
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.7, i32 0, i32 0), i64 %exit.val)
  %open.val = load i64, i64* @open.glob
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.8, i32 0, i32 0), i64 %open.val)
  %perror.val = load i64, i64* @perror.glob
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.9, i32 0, i32 0), i64 %perror.val)
  %__assert_fail.val = load i64, i64* @__assert_fail.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.10, i32 0, i32 0), i64 %__assert_fail.val)
  %fstat.val = load i64, i64* @fstat.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.11, i32 0, i32 0), i64 %fstat.val)
  %mmap.val = load i64, i64* @mmap.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.12, i32 0, i32 0), i64 %mmap.val)
  %munmap.val = load i64, i64* @munmap.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.13, i32 0, i32 0), i64 %munmap.val)
  %close.val = load i64, i64* @close.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.14, i32 0, i32 0), i64 %close.val)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

declare dso_local i32 @open(i8*, i32, ...) #1

declare dso_local void @perror(i8*) #1

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare dso_local i32 @fstat(i32, %struct.stat*) #3

; Function Attrs: nounwind
declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i64) #3

; Function Attrs: nounwind
declare dso_local i32 @munmap(i8*, i64) #3

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
