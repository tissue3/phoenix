; ModuleID = 'linear_regression.ll'
source_filename = "linear_regression.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.final_data_t = type { i32, %struct.keyval_t* }
%struct.keyval_t = type { i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.map_reduce_args_t = type { i8*, i64, i32, void (%struct.map_args_t*)*, void (i8*, %struct.iterator_t*)*, i8* (%struct.iterator_t*)*, i32 (i8*, i32, %struct.map_args_t*)*, i8* (%struct.map_args_t*)*, i32 (i8*, i8*)*, %struct.final_data_t*, i32 (i32, i8*, i32)*, i8, i32, i32, i32, i32, i32, i32, float }
%struct.map_args_t = type { i64, i8* }
%struct.iterator_t = type opaque
%struct.timezone = type { i32, i32 }
%struct.POINT_T = type { i8, i8 }

@.str = private unnamed_addr constant [22 x i8] c"USAGE: %s <filename>\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Linear Regression: Running...\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Error at line\0A\09(fd = open(fname, O_RDONLY)) < 0\0ASystem Msg\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"((fd = open(fname, 00)) < 0) == 0\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"linear_regression.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Error at line\0A\09fstat(fd, &finfo) < 0\0ASystem Msg\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"(fstat(fd, &finfo) < 0) == 0\00", align 1
@.str.7 = private unnamed_addr constant [115 x i8] c"Error at line\0A\09(fdata = mmap(0, finfo.st_size + 1, PROT_READ | PROT_WRITE, MAP_PRIVATE, fd, 0)) == NULL\0ASystem Msg\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"((fdata = mmap(0, finfo.st_size + 1, 0x1 | 0x2, 0x02, fd, 0)) == ((void*)0)) == 0\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Error at line\0A\09map_reduce_init ()\0ASystem Msg\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"(map_reduce_init ()) == 0\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"MR_L1CACHESIZE\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"MR_NUMTHREADS\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"MR_NUMPROCS\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"MR_KEYMATCHFACTOR\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"Linear Regression: Calling MapReduce Scheduler\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"Error at line\0A\09map_reduce (&map_reduce_args) < 0\0ASystem Msg\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"(map_reduce (&map_reduce_args) < 0) == 0\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"Error at line\0A\09map_reduce_finalize ()\0ASystem Msg\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"(map_reduce_finalize ()) == 0\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Error at line\0A\091\0ASystem Msg\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"(1) == 0\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Linear Regression: Completed %ld\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"Linear Regression Results:\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"\09a     = %lf\0A\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\09b     = %lf\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"\09xbar = %lf\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"\09ybar = %lf\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"\09r2    = %lf\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"\09SX    = %lld\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"\09SY    = %lld\0A\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"\09SXX  = %lld\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"\09SYY  = %lld\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"\09SXY  = %lld\0A\00", align 1
@.str.34 = private unnamed_addr constant [63 x i8] c"Error at line\0A\09munmap(fdata, finfo.st_size + 1) < 0\0ASystem Msg\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"(munmap(fdata, finfo.st_size + 1) < 0) == 0\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"Error at line\0A\09close(fd) < 0\0ASystem Msg\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"(close(fd) < 0) == 0\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@__PRETTY_FUNCTION__.linear_regression_map = private unnamed_addr constant [41 x i8] c"void linear_regression_map(map_args_t *)\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"./stddefines.h\00", align 1
@__PRETTY_FUNCTION__.CALLOC = private unnamed_addr constant [29 x i8] c"void *CALLOC(size_t, size_t)\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"itr\00", align 1
@__PRETTY_FUNCTION__.linear_regression_reduce = private unnamed_addr constant [52 x i8] c"void linear_regression_reduce(void *, iterator_t *)\00", align 1
@__PRETTY_FUNCTION__.linear_regression_combiner = private unnamed_addr constant [47 x i8] c"void *linear_regression_combiner(iterator_t *)\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvmInstrAtomicCounter = common global i64 0
@basicBlockAtomicCounter = common global i64 0
@mulAtomicCounter = common global i64 0
@memOpAtomicCounter = common global i64 0
@branchAtomicCounter = common global i64 0
@main.glob = common global i64 0
@get_time.glob = common global i64 0
@printf.glob = common global i64 0
@exit.glob = common global i64 0
@open.glob = common global i64 0
@perror.glob = common global i64 0
@__assert_fail.glob = common global i64 0
@fstat.glob = common global i64 0
@mmap.glob = common global i64 0
@map_reduce_init.glob = common global i64 0
@llvm.memset.p0i8.i64.glob = common global i64 0
@linear_regression_map.glob = common global i64 0
@linear_regression_reduce.glob = common global i64 0
@linear_regression_combiner.glob = common global i64 0
@intkeycmp.glob = common global i64 0
@linear_regression_partition.glob = common global i64 0
@atoi.glob = common global i64 0
@GETENV.glob = common global i64 0
@atof.glob = common global i64 0
@gettimeofday.glob = common global i64 0
@map_reduce.glob = common global i64 0
@map_reduce_finalize.glob = common global i64 0
@free.glob = common global i64 0
@munmap.glob = common global i64 0
@close.glob = common global i64 0
@CALLOC.glob = common global i64 0
@emit_intermediate.glob = common global i64 0
@calloc.glob = common global i64 0
@iter_next.glob = common global i64 0
@emit.glob = common global i64 0
@default_partition.glob = common global i64 0
@getenv.glob = common global i64 0
@formatLong = private unnamed_addr constant [31 x i8] c"\0A\0AllvmInstrAtomicCounter: %ld\0A\00", align 1
@formatLong.1 = private unnamed_addr constant [30 x i8] c"basicBlockAtomicCounter: %ld\0A\00", align 1
@formatLong.2 = private unnamed_addr constant [23 x i8] c"mulAtomicCounter: %ld\0A\00", align 1
@formatLong.3 = private unnamed_addr constant [25 x i8] c"memOpAtomicCounter: %ld\0A\00", align 1
@formatLong.4 = private unnamed_addr constant [26 x i8] c"branchAtomicCounter: %ld\0A\00", align 1
@formatLong.5 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.6 = private unnamed_addr constant [15 x i8] c"get_time: %ld\0A\00", align 1
@formatLong.7 = private unnamed_addr constant [13 x i8] c"printf: %ld\0A\00", align 1
@formatLong.8 = private unnamed_addr constant [11 x i8] c"exit: %ld\0A\00", align 1
@formatLong.9 = private unnamed_addr constant [11 x i8] c"open: %ld\0A\00", align 1
@formatLong.10 = private unnamed_addr constant [13 x i8] c"perror: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [20 x i8] c"__assert_fail: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [12 x i8] c"fstat: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [11 x i8] c"mmap: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [22 x i8] c"map_reduce_init: %ld\0A\00", align 1
@formatLong.15 = private unnamed_addr constant [27 x i8] c"llvm.memset.p0i8.i64: %ld\0A\00", align 1
@formatLong.16 = private unnamed_addr constant [28 x i8] c"linear_regression_map: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [31 x i8] c"linear_regression_reduce: %ld\0A\00", align 1
@formatLong.18 = private unnamed_addr constant [33 x i8] c"linear_regression_combiner: %ld\0A\00", align 1
@formatLong.19 = private unnamed_addr constant [16 x i8] c"intkeycmp: %ld\0A\00", align 1
@formatLong.20 = private unnamed_addr constant [34 x i8] c"linear_regression_partition: %ld\0A\00", align 1
@formatLong.21 = private unnamed_addr constant [11 x i8] c"atoi: %ld\0A\00", align 1
@formatLong.22 = private unnamed_addr constant [13 x i8] c"GETENV: %ld\0A\00", align 1
@formatLong.23 = private unnamed_addr constant [11 x i8] c"atof: %ld\0A\00", align 1
@formatLong.24 = private unnamed_addr constant [19 x i8] c"gettimeofday: %ld\0A\00", align 1
@formatLong.25 = private unnamed_addr constant [17 x i8] c"map_reduce: %ld\0A\00", align 1
@formatLong.26 = private unnamed_addr constant [26 x i8] c"map_reduce_finalize: %ld\0A\00", align 1
@formatLong.27 = private unnamed_addr constant [11 x i8] c"free: %ld\0A\00", align 1
@formatLong.28 = private unnamed_addr constant [13 x i8] c"munmap: %ld\0A\00", align 1
@formatLong.29 = private unnamed_addr constant [12 x i8] c"close: %ld\0A\00", align 1
@formatLong.30 = private unnamed_addr constant [13 x i8] c"CALLOC: %ld\0A\00", align 1
@formatLong.31 = private unnamed_addr constant [24 x i8] c"emit_intermediate: %ld\0A\00", align 1
@formatLong.32 = private unnamed_addr constant [13 x i8] c"calloc: %ld\0A\00", align 1
@formatLong.33 = private unnamed_addr constant [16 x i8] c"iter_next: %ld\0A\00", align 1
@formatLong.34 = private unnamed_addr constant [11 x i8] c"emit: %ld\0A\00", align 1
@formatLong.35 = private unnamed_addr constant [24 x i8] c"default_partition: %ld\0A\00", align 1
@formatLong.36 = private unnamed_addr constant [13 x i8] c"getenv: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.final_data_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval, align 8
  %17 = alloca %struct.map_reduce_args_t, align 8
  %18 = alloca i64, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca %struct.keyval_t*, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  %34 = alloca double, align 8
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  call void @get_time(%struct.timeval* %15)
  %35 = load i8**, i8*** %6, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load i8*, i8** %36, align 8
  %38 = icmp eq i8* %37, null
  %39 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %40 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 41 seq_cst
  %41 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %38, label %43, label %51

43:                                               ; preds = %2
  %44 = load i8**, i8*** %6, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %46)
  call void @exit(i32 1) #6
  %48 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %50 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  unreachable

51:                                               ; preds = %2
  %52 = load i8**, i8*** %6, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 1
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %10, align 8
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 (i8*, i32, ...) @open(i8* %56, i32 0)
  store i32 %57, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  %59 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %61 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %58, label %63, label %84

63:                                               ; preds = %51
  call void @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %64 = load i8*, i8** %10, align 8
  %65 = call i32 (i8*, i32, ...) @open(i8* %64, i32 0)
  store i32 %65, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = icmp eq i32 %67, 0
  %69 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %71 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %68, label %73, label %77

73:                                               ; preds = %63
  %74 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %80

77:                                               ; preds = %63
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %78 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %79 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

80:                                               ; preds = %73
  %81 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %84

84:                                               ; preds = %80, %51
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @fstat(i32 %85, %struct.stat* %11) #7
  %87 = icmp slt i32 %86, 0
  %88 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %89 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %90 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %91 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %87, label %92, label %113

92:                                               ; preds = %84
  call void @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @fstat(i32 %93, %struct.stat* %11) #7
  %95 = icmp slt i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = icmp eq i32 %96, 0
  %98 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %99 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %100 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %101 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %97, label %102, label %106

102:                                              ; preds = %92
  %103 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %104 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %105 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %109

106:                                              ; preds = %92
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %107 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %108 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

109:                                              ; preds = %102
  %110 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %111 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %112 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %113

113:                                              ; preds = %109, %84
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 1
  %117 = load i32, i32* %8, align 4
  %118 = call i8* @mmap(i8* null, i64 %116, i32 3, i32 2, i32 %117, i64 0) #7
  store i8* %118, i8** %9, align 8
  %119 = icmp eq i8* %118, null
  %120 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %121 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %122 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %123 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %119, label %124, label %148

124:                                              ; preds = %113
  call void @perror(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.7, i64 0, i64 0))
  %125 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, 1
  %128 = load i32, i32* %8, align 4
  %129 = call i8* @mmap(i8* null, i64 %127, i32 3, i32 2, i32 %128, i64 0) #7
  store i8* %129, i8** %9, align 8
  %130 = icmp eq i8* %129, null
  %131 = zext i1 %130 to i32
  %132 = icmp eq i32 %131, 0
  %133 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %134 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %135 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %136 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %132, label %137, label %141

137:                                              ; preds = %124
  %138 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %139 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %140 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %144

141:                                              ; preds = %124
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %142 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %143 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

144:                                              ; preds = %137
  %145 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %146 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %147 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %148

148:                                              ; preds = %144, %113
  %149 = call i32 (...) @map_reduce_init()
  %150 = icmp ne i32 %149, 0
  %151 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %152 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %153 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %150, label %154, label %171

154:                                              ; preds = %148
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %155 = call i32 (...) @map_reduce_init()
  %156 = icmp eq i32 %155, 0
  %157 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %158 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %159 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %156, label %160, label %164

160:                                              ; preds = %154
  %161 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %162 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %163 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %167

164:                                              ; preds = %154
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 205, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %165 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %166 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

167:                                              ; preds = %160
  %168 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %169 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %170 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %171

171:                                              ; preds = %167, %148
  %172 = bitcast %struct.map_reduce_args_t* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %172, i8 0, i64 120, i1 false)
  %173 = load i8*, i8** %9, align 8
  %174 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 0
  store i8* %173, i8** %174, align 8
  %175 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 3
  store void (%struct.map_args_t*)* @linear_regression_map, void (%struct.map_args_t*)** %175, align 8
  %176 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 4
  store void (i8*, %struct.iterator_t*)* @linear_regression_reduce, void (i8*, %struct.iterator_t*)** %176, align 8
  %177 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 5
  store i8* (%struct.iterator_t*)* @linear_regression_combiner, i8* (%struct.iterator_t*)** %177, align 8
  %178 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 6
  store i32 (i8*, i32, %struct.map_args_t*)* null, i32 (i8*, i32, %struct.map_args_t*)** %178, align 8
  %179 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 8
  store i32 (i8*, i8*)* @intkeycmp, i32 (i8*, i8*)** %179, align 8
  %180 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 2
  store i32 2, i32* %180, align 8
  %181 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 10
  store i32 (i32, i8*, i32)* @linear_regression_partition, i32 (i32, i8*, i32)** %181, align 8
  %182 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 9
  store %struct.final_data_t* %7, %struct.final_data_t** %182, align 8
  %183 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = srem i64 %186, %189
  %191 = sub nsw i64 %184, %190
  %192 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 1
  store i64 %191, i64* %192, align 8
  %193 = call i8* @GETENV(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %194 = call i32 @atoi(i8* %193) #8
  %195 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 12
  store i32 %194, i32* %195, align 4
  %196 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %197 = call i32 @atoi(i8* %196) #8
  %198 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 13
  store i32 %197, i32* %198, align 8
  %199 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %200 = call i32 @atoi(i8* %199) #8
  %201 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 14
  store i32 %200, i32* %201, align 4
  %202 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %203 = call i32 @atoi(i8* %202) #8
  %204 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 15
  store i32 %203, i32* %204, align 8
  %205 = call i8* @GETENV(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %206 = call i32 @atoi(i8* %205) #8
  %207 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 16
  store i32 %206, i32* %207, align 4
  %208 = call i8* @GETENV(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %209 = call double @atof(i8* %208) #8
  %210 = fptrunc double %209 to float
  %211 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %17, i32 0, i32 18
  store float %210, float* %211, align 4
  %212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %213 = call i32 @gettimeofday(%struct.timeval* %13, %struct.timezone* null) #7
  call void @get_time(%struct.timeval* %16)
  call void @get_time(%struct.timeval* %15)
  %214 = call i32 @map_reduce(%struct.map_reduce_args_t* %17)
  %215 = icmp slt i32 %214, 0
  %216 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %217 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 64 seq_cst
  %218 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %219 = atomicrmw add i64* @memOpAtomicCounter, i64 20 seq_cst
  br i1 %215, label %220, label %239

220:                                              ; preds = %171
  call void @perror(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  %221 = call i32 @map_reduce(%struct.map_reduce_args_t* %17)
  %222 = icmp slt i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = icmp eq i32 %223, 0
  %225 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %226 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %227 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %224, label %228, label %232

228:                                              ; preds = %220
  %229 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %230 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %231 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %235

232:                                              ; preds = %220
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 238, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %233 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %234 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

235:                                              ; preds = %228
  %236 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %237 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %238 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %239

239:                                              ; preds = %235, %171
  call void @get_time(%struct.timeval* %16)
  call void @get_time(%struct.timeval* %15)
  %240 = call i32 (...) @map_reduce_finalize()
  %241 = icmp ne i32 %240, 0
  %242 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %243 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %244 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %241, label %245, label %262

245:                                              ; preds = %239
  call void @perror(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0))
  %246 = call i32 (...) @map_reduce_finalize()
  %247 = icmp eq i32 %246, 0
  %248 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %249 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %250 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %247, label %251, label %255

251:                                              ; preds = %245
  %252 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %253 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %254 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %258

255:                                              ; preds = %245
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %256 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %257 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

258:                                              ; preds = %251
  %259 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %260 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %261 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %262

262:                                              ; preds = %258, %239
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %28, align 8
  store i32 0, i32* %12, align 4
  %263 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %264 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %265 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %266 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %267

267:                                              ; preds = %350, %262
  %268 = load i32, i32* %12, align 4
  %269 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %7, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp slt i32 %268, %270
  %272 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %273 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %274 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %275 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %271, label %276, label %357

276:                                              ; preds = %267
  %277 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %7, i32 0, i32 1
  %278 = load %struct.keyval_t*, %struct.keyval_t** %277, align 8
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %278, i64 %280
  store %struct.keyval_t* %281, %struct.keyval_t** %29, align 8
  %282 = load %struct.keyval_t*, %struct.keyval_t** %29, align 8
  %283 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = ptrtoint i8* %284 to i64
  %286 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %287 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %288 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  switch i64 %285, label %339 [
    i64 0, label %289
    i64 1, label %299
    i64 2, label %309
    i64 3, label %319
    i64 4, label %329
  ]

289:                                              ; preds = %276
  %290 = load %struct.keyval_t*, %struct.keyval_t** %29, align 8
  %291 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %290, i32 0, i32 1
  %292 = load i8*, i8** %291, align 8
  %293 = bitcast i8* %292 to i64*
  %294 = load i64, i64* %293, align 8
  store i64 %294, i64* %24, align 8
  %295 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %296 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %297 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %298 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %342

299:                                              ; preds = %276
  %300 = load %struct.keyval_t*, %struct.keyval_t** %29, align 8
  %301 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %300, i32 0, i32 1
  %302 = load i8*, i8** %301, align 8
  %303 = bitcast i8* %302 to i64*
  %304 = load i64, i64* %303, align 8
  store i64 %304, i64* %25, align 8
  %305 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %306 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %307 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %308 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %342

309:                                              ; preds = %276
  %310 = load %struct.keyval_t*, %struct.keyval_t** %29, align 8
  %311 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %310, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = bitcast i8* %312 to i64*
  %314 = load i64, i64* %313, align 8
  store i64 %314, i64* %26, align 8
  %315 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %316 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %317 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %318 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %342

319:                                              ; preds = %276
  %320 = load %struct.keyval_t*, %struct.keyval_t** %29, align 8
  %321 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %320, i32 0, i32 1
  %322 = load i8*, i8** %321, align 8
  %323 = bitcast i8* %322 to i64*
  %324 = load i64, i64* %323, align 8
  store i64 %324, i64* %27, align 8
  %325 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %326 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %327 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %328 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %342

329:                                              ; preds = %276
  %330 = load %struct.keyval_t*, %struct.keyval_t** %29, align 8
  %331 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %330, i32 0, i32 1
  %332 = load i8*, i8** %331, align 8
  %333 = bitcast i8* %332 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %28, align 8
  %335 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %336 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %337 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %338 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %342

339:                                              ; preds = %276
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 275, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %340 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %341 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  unreachable

342:                                              ; preds = %329, %319, %309, %299, %289
  %343 = load %struct.keyval_t*, %struct.keyval_t** %29, align 8
  %344 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %343, i32 0, i32 1
  %345 = load i8*, i8** %344, align 8
  call void @free(i8* %345) #7
  %346 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %347 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %348 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %349 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %350

350:                                              ; preds = %342
  %351 = load i32, i32* %12, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %12, align 4
  %353 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %354 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %355 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %356 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %267

357:                                              ; preds = %267
  %358 = load i64, i64* %24, align 8
  %359 = sitofp i64 %358 to double
  store double %359, double* %30, align 8
  %360 = load i64, i64* %25, align 8
  %361 = sitofp i64 %360 to double
  store double %361, double* %31, align 8
  %362 = load i64, i64* %26, align 8
  %363 = sitofp i64 %362 to double
  store double %363, double* %32, align 8
  %364 = load i64, i64* %27, align 8
  %365 = sitofp i64 %364 to double
  store double %365, double* %33, align 8
  %366 = load i64, i64* %28, align 8
  %367 = sitofp i64 %366 to double
  store double %367, double* %34, align 8
  %368 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %369 = load i64, i64* %368, align 8
  %370 = udiv i64 %369, 2
  store i64 %370, i64* %18, align 8
  %371 = load i64, i64* %18, align 8
  %372 = sitofp i64 %371 to double
  %373 = load double, double* %34, align 8
  %374 = fmul double %372, %373
  %375 = load double, double* %30, align 8
  %376 = load double, double* %31, align 8
  %377 = fmul double %375, %376
  %378 = fsub double %374, %377
  %379 = load i64, i64* %18, align 8
  %380 = sitofp i64 %379 to double
  %381 = load double, double* %32, align 8
  %382 = fmul double %380, %381
  %383 = load double, double* %30, align 8
  %384 = load double, double* %30, align 8
  %385 = fmul double %383, %384
  %386 = fsub double %382, %385
  %387 = fdiv double %378, %386
  store double %387, double* %20, align 8
  %388 = load i64, i64* %25, align 8
  %389 = sitofp i64 %388 to double
  %390 = load double, double* %20, align 8
  %391 = load i64, i64* %24, align 8
  %392 = sitofp i64 %391 to double
  %393 = fmul double %390, %392
  %394 = fsub double %389, %393
  %395 = load i64, i64* %18, align 8
  %396 = sitofp i64 %395 to double
  %397 = fdiv double %394, %396
  store double %397, double* %19, align 8
  %398 = load i64, i64* %24, align 8
  %399 = sitofp i64 %398 to double
  %400 = load i64, i64* %18, align 8
  %401 = sitofp i64 %400 to double
  %402 = fdiv double %399, %401
  store double %402, double* %21, align 8
  %403 = load i64, i64* %25, align 8
  %404 = sitofp i64 %403 to double
  %405 = load i64, i64* %18, align 8
  %406 = sitofp i64 %405 to double
  %407 = fdiv double %404, %406
  store double %407, double* %22, align 8
  %408 = load i64, i64* %18, align 8
  %409 = sitofp i64 %408 to double
  %410 = load double, double* %34, align 8
  %411 = fmul double %409, %410
  %412 = load double, double* %30, align 8
  %413 = load double, double* %31, align 8
  %414 = fmul double %412, %413
  %415 = fsub double %411, %414
  %416 = load i64, i64* %18, align 8
  %417 = sitofp i64 %416 to double
  %418 = load double, double* %34, align 8
  %419 = fmul double %417, %418
  %420 = load double, double* %30, align 8
  %421 = load double, double* %31, align 8
  %422 = fmul double %420, %421
  %423 = fsub double %419, %422
  %424 = fmul double %415, %423
  %425 = load i64, i64* %18, align 8
  %426 = sitofp i64 %425 to double
  %427 = load double, double* %32, align 8
  %428 = fmul double %426, %427
  %429 = load double, double* %30, align 8
  %430 = load double, double* %30, align 8
  %431 = fmul double %429, %430
  %432 = fsub double %428, %431
  %433 = load i64, i64* %18, align 8
  %434 = sitofp i64 %433 to double
  %435 = load double, double* %33, align 8
  %436 = fmul double %434, %435
  %437 = load double, double* %31, align 8
  %438 = load double, double* %31, align 8
  %439 = fmul double %437, %438
  %440 = fsub double %436, %439
  %441 = fmul double %432, %440
  %442 = fdiv double %424, %441
  store double %442, double* %23, align 8
  %443 = call i32 @gettimeofday(%struct.timeval* %14, %struct.timezone* null) #7
  %444 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = sub nsw i64 %445, %447
  %449 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i64 %448)
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %451 = load double, double* %19, align 8
  %452 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), double %451)
  %453 = load double, double* %20, align 8
  %454 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), double %453)
  %455 = load double, double* %21, align 8
  %456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), double %455)
  %457 = load double, double* %22, align 8
  %458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), double %457)
  %459 = load double, double* %23, align 8
  %460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), double %459)
  %461 = load i64, i64* %24, align 8
  %462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i64 %461)
  %463 = load i64, i64* %25, align 8
  %464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i64 %463)
  %465 = load i64, i64* %26, align 8
  %466 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i64 %465)
  %467 = load i64, i64* %27, align 8
  %468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 %467)
  %469 = load i64, i64* %28, align 8
  %470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i64 %469)
  %471 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %7, i32 0, i32 1
  %472 = load %struct.keyval_t*, %struct.keyval_t** %471, align 8
  %473 = bitcast %struct.keyval_t* %472 to i8*
  call void @free(i8* %473) #7
  %474 = load i8*, i8** %9, align 8
  %475 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %476 = load i64, i64* %475, align 8
  %477 = add nsw i64 %476, 1
  %478 = call i32 @munmap(i8* %474, i64 %477) #7
  %479 = icmp slt i32 %478, 0
  %480 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %481 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 135 seq_cst
  %482 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %483 = atomicrmw add i64* @memOpAtomicCounter, i64 64 seq_cst
  br i1 %479, label %484, label %508

484:                                              ; preds = %357
  call void @perror(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.34, i64 0, i64 0))
  %485 = load i8*, i8** %9, align 8
  %486 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 8
  %487 = load i64, i64* %486, align 8
  %488 = add nsw i64 %487, 1
  %489 = call i32 @munmap(i8* %485, i64 %488) #7
  %490 = icmp slt i32 %489, 0
  %491 = zext i1 %490 to i32
  %492 = icmp eq i32 %491, 0
  %493 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %494 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %495 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %496 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %492, label %497, label %501

497:                                              ; preds = %484
  %498 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %499 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %500 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %504

501:                                              ; preds = %484
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %502 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %503 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

504:                                              ; preds = %497
  %505 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %506 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %507 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %508

508:                                              ; preds = %504, %357
  %509 = load i32, i32* %8, align 4
  %510 = call i32 @close(i32 %509)
  %511 = icmp slt i32 %510, 0
  %512 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %513 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %514 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %515 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %511, label %516, label %537

516:                                              ; preds = %508
  call void @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0))
  %517 = load i32, i32* %8, align 4
  %518 = call i32 @close(i32 %517)
  %519 = icmp slt i32 %518, 0
  %520 = zext i1 %519 to i32
  %521 = icmp eq i32 %520, 0
  %522 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %523 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %524 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %525 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %521, label %526, label %530

526:                                              ; preds = %516
  %527 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %528 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %529 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %533

530:                                              ; preds = %516
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  %531 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %532 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

533:                                              ; preds = %526
  %534 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %535 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %536 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %537

537:                                              ; preds = %533, %508
  call void @get_time(%struct.timeval* %16)
  %538 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %539 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
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
  %get_time.val = load i64, i64* @get_time.glob
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @formatLong.6, i32 0, i32 0), i64 %get_time.val)
  %printf.val = load i64, i64* @printf.glob
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.7, i32 0, i32 0), i64 %printf.val)
  %exit.val = load i64, i64* @exit.glob
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.8, i32 0, i32 0), i64 %exit.val)
  %open.val = load i64, i64* @open.glob
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.9, i32 0, i32 0), i64 %open.val)
  %perror.val = load i64, i64* @perror.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.10, i32 0, i32 0), i64 %perror.val)
  %__assert_fail.val = load i64, i64* @__assert_fail.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.11, i32 0, i32 0), i64 %__assert_fail.val)
  %fstat.val = load i64, i64* @fstat.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.12, i32 0, i32 0), i64 %fstat.val)
  %mmap.val = load i64, i64* @mmap.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.13, i32 0, i32 0), i64 %mmap.val)
  %map_reduce_init.val = load i64, i64* @map_reduce_init.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @formatLong.14, i32 0, i32 0), i64 %map_reduce_init.val)
  %llvm.memset.p0i8.i64.val = load i64, i64* @llvm.memset.p0i8.i64.glob
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @formatLong.15, i32 0, i32 0), i64 %llvm.memset.p0i8.i64.val)
  %linear_regression_map.val = load i64, i64* @linear_regression_map.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @formatLong.16, i32 0, i32 0), i64 %linear_regression_map.val)
  %linear_regression_reduce.val = load i64, i64* @linear_regression_reduce.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @formatLong.17, i32 0, i32 0), i64 %linear_regression_reduce.val)
  %linear_regression_combiner.val = load i64, i64* @linear_regression_combiner.glob
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @formatLong.18, i32 0, i32 0), i64 %linear_regression_combiner.val)
  %intkeycmp.val = load i64, i64* @intkeycmp.glob
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @formatLong.19, i32 0, i32 0), i64 %intkeycmp.val)
  %linear_regression_partition.val = load i64, i64* @linear_regression_partition.glob
  %printf20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @formatLong.20, i32 0, i32 0), i64 %linear_regression_partition.val)
  %atoi.val = load i64, i64* @atoi.glob
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.21, i32 0, i32 0), i64 %atoi.val)
  %GETENV.val = load i64, i64* @GETENV.glob
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.22, i32 0, i32 0), i64 %GETENV.val)
  %atof.val = load i64, i64* @atof.glob
  %printf23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.23, i32 0, i32 0), i64 %atof.val)
  %gettimeofday.val = load i64, i64* @gettimeofday.glob
  %printf24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @formatLong.24, i32 0, i32 0), i64 %gettimeofday.val)
  %map_reduce.val = load i64, i64* @map_reduce.glob
  %printf25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.25, i32 0, i32 0), i64 %map_reduce.val)
  %map_reduce_finalize.val = load i64, i64* @map_reduce_finalize.glob
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @formatLong.26, i32 0, i32 0), i64 %map_reduce_finalize.val)
  %free.val = load i64, i64* @free.glob
  %printf27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.27, i32 0, i32 0), i64 %free.val)
  %munmap.val = load i64, i64* @munmap.glob
  %printf28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.28, i32 0, i32 0), i64 %munmap.val)
  %close.val = load i64, i64* @close.glob
  %printf29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @formatLong.29, i32 0, i32 0), i64 %close.val)
  %CALLOC.val = load i64, i64* @CALLOC.glob
  %printf30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.30, i32 0, i32 0), i64 %CALLOC.val)
  %emit_intermediate.val = load i64, i64* @emit_intermediate.glob
  %printf31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @formatLong.31, i32 0, i32 0), i64 %emit_intermediate.val)
  %calloc.val = load i64, i64* @calloc.glob
  %printf32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.32, i32 0, i32 0), i64 %calloc.val)
  %iter_next.val = load i64, i64* @iter_next.glob
  %printf33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @formatLong.33, i32 0, i32 0), i64 %iter_next.val)
  %emit.val = load i64, i64* @emit.glob
  %printf34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.34, i32 0, i32 0), i64 %emit.val)
  %default_partition.val = load i64, i64* @default_partition.glob
  %printf35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @formatLong.35, i32 0, i32 0), i64 %default_partition.val)
  %getenv.val = load i64, i64* @getenv.glob
  %printf36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.36, i32 0, i32 0), i64 %getenv.val)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_time(%struct.timeval*) #0 {
  %2 = atomicrmw add i64* @get_time.glob, i64 1 seq_cst
  %3 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  %4 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %5 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %6 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret void
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

declare dso_local i32 @map_reduce_init(...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linear_regression_map(%struct.map_args_t*) #0 {
  %2 = atomicrmw add i64* @linear_regression_map.glob, i64 1 seq_cst
  %3 = alloca %struct.map_args_t*, align 8
  %4 = alloca %struct.POINT_T*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.map_args_t* %0, %struct.map_args_t** %3, align 8
  %18 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %19 = icmp ne %struct.map_args_t* %18, null
  %20 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 20 seq_cst
  %22 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %19, label %24, label %28

24:                                               ; preds = %1
  %25 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %27 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %31

28:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.linear_regression_map, i64 0, i64 0)) #6
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

31:                                               ; preds = %24
  %32 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %33 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.POINT_T*
  store %struct.POINT_T* %35, %struct.POINT_T** %4, align 8
  %36 = load %struct.POINT_T*, %struct.POINT_T** %4, align 8
  %37 = icmp ne %struct.POINT_T* %36, null
  %38 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %40 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %37, label %42, label %46

42:                                               ; preds = %31
  %43 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %49

46:                                               ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.linear_regression_map, i64 0, i64 0)) #6
  %47 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

49:                                               ; preds = %42
  %50 = call i8* @CALLOC(i64 8, i64 1)
  %51 = bitcast i8* %50 to i64*
  store i64* %51, i64** %6, align 8
  %52 = call i8* @CALLOC(i64 8, i64 1)
  %53 = bitcast i8* %52 to i64*
  store i64* %53, i64** %7, align 8
  %54 = call i8* @CALLOC(i64 8, i64 1)
  %55 = bitcast i8* %54 to i64*
  store i64* %55, i64** %8, align 8
  %56 = call i8* @CALLOC(i64 8, i64 1)
  %57 = bitcast i8* %56 to i64*
  store i64* %57, i64** %9, align 8
  %58 = call i8* @CALLOC(i64 8, i64 1)
  %59 = bitcast i8* %58 to i64*
  store i64* %59, i64** %10, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i32 0, i32* %5, align 4
  %60 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %61 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 22 seq_cst
  %62 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @memOpAtomicCounter, i64 11 seq_cst
  br label %64

64:                                               ; preds = %116, %49
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %68 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  %71 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %73 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %70, label %75, label %123

75:                                               ; preds = %64
  %76 = load %struct.POINT_T*, %struct.POINT_T** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %76, i64 %78
  %80 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i64
  store i64 %82, i64* %11, align 8
  %83 = load %struct.POINT_T*, %struct.POINT_T** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %83, i64 %85
  %87 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %86, i32 0, i32 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i64
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %13, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %11, align 8
  %95 = mul nsw i64 %93, %94
  %96 = load i64, i64* %14, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %15, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %15, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %12, align 8
  %103 = mul nsw i64 %101, %102
  %104 = load i64, i64* %16, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %16, align 8
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %12, align 8
  %108 = mul nsw i64 %106, %107
  %109 = load i64, i64* %17, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %17, align 8
  %111 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %112 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 43 seq_cst
  %113 = atomicrmw add i64* @mulAtomicCounter, i64 3 seq_cst
  %114 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %115 = atomicrmw add i64* @memOpAtomicCounter, i64 26 seq_cst
  br label %116

116:                                              ; preds = %75
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  %119 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %120 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %121 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %122 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %64

123:                                              ; preds = %64
  %124 = load i64, i64* %13, align 8
  %125 = load i64*, i64** %6, align 8
  store i64 %124, i64* %125, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i64*, i64** %7, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i64, i64* %15, align 8
  %129 = load i64*, i64** %8, align 8
  store i64 %128, i64* %129, align 8
  %130 = load i64, i64* %16, align 8
  %131 = load i64*, i64** %9, align 8
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* %17, align 8
  %133 = load i64*, i64** %10, align 8
  store i64 %132, i64* %133, align 8
  %134 = load i64*, i64** %6, align 8
  %135 = bitcast i64* %134 to i8*
  call void @emit_intermediate(i8* null, i8* %135, i32 8)
  %136 = load i64*, i64** %7, align 8
  %137 = bitcast i64* %136 to i8*
  call void @emit_intermediate(i8* inttoptr (i64 2 to i8*), i8* %137, i32 8)
  %138 = load i64*, i64** %8, align 8
  %139 = bitcast i64* %138 to i8*
  call void @emit_intermediate(i8* inttoptr (i64 1 to i8*), i8* %139, i32 8)
  %140 = load i64*, i64** %9, align 8
  %141 = bitcast i64* %140 to i8*
  call void @emit_intermediate(i8* inttoptr (i64 3 to i8*), i8* %141, i32 8)
  %142 = load i64*, i64** %10, align 8
  %143 = bitcast i64* %142 to i8*
  call void @emit_intermediate(i8* inttoptr (i64 4 to i8*), i8* %143, i32 8)
  %144 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %145 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 31 seq_cst
  %146 = atomicrmw add i64* @memOpAtomicCounter, i64 20 seq_cst
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linear_regression_reduce(i8*, %struct.iterator_t*) #0 {
  %3 = atomicrmw add i64* @linear_regression_reduce.glob, i64 1 seq_cst
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iterator_t*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.iterator_t* %1, %struct.iterator_t** %5, align 8
  %9 = call i8* @CALLOC(i64 8, i64 1)
  %10 = bitcast i8* %9 to i64*
  store i64* %10, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.iterator_t*, %struct.iterator_t** %5, align 8
  %12 = icmp ne %struct.iterator_t* %11, null
  %13 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 15 seq_cst
  %15 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br i1 %12, label %17, label %21

17:                                               ; preds = %2
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %24

21:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.linear_regression_reduce, i64 0, i64 0)) #6
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

24:                                               ; preds = %17
  %25 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %27 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %28

28:                                               ; preds = %37, %24
  %29 = load %struct.iterator_t*, %struct.iterator_t** %5, align 8
  %30 = bitcast i64** %8 to i8**
  %31 = call i32 @iter_next(%struct.iterator_t* %29, i8** %30)
  %32 = icmp ne i32 %31, 0
  %33 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %35 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %32, label %37, label %48

37:                                               ; preds = %28
  %38 = load i64*, i64** %8, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %7, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = bitcast i64* %42 to i8*
  call void @free(i8* %43) #7
  %44 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %46 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %47 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %28

48:                                               ; preds = %28
  %49 = load i64, i64* %7, align 8
  %50 = load i64*, i64** %6, align 8
  store i64 %49, i64* %50, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i64*, i64** %6, align 8
  %53 = bitcast i64* %52 to i8*
  call void @emit(i8* %51, i8* %53)
  %54 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %56 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @linear_regression_combiner(%struct.iterator_t*) #0 {
  %2 = atomicrmw add i64* @linear_regression_combiner.glob, i64 1 seq_cst
  %3 = alloca %struct.iterator_t*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  store %struct.iterator_t* %0, %struct.iterator_t** %3, align 8
  %7 = call i8* @CALLOC(i64 8, i64 1)
  %8 = bitcast i8* %7 to i64*
  store i64* %8, i64** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.iterator_t*, %struct.iterator_t** %3, align 8
  %10 = icmp ne %struct.iterator_t* %9, null
  %11 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %12 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %13 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %10, label %15, label %19

15:                                               ; preds = %1
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %22

19:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.linear_regression_combiner, i64 0, i64 0)) #6
  %20 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

22:                                               ; preds = %15
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %25 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %26

26:                                               ; preds = %35, %22
  %27 = load %struct.iterator_t*, %struct.iterator_t** %3, align 8
  %28 = bitcast i64** %6 to i8**
  %29 = call i32 @iter_next(%struct.iterator_t* %27, i8** %28)
  %30 = icmp ne i32 %29, 0
  %31 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %33 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %30, label %35, label %46

35:                                               ; preds = %26
  %36 = load i64*, i64** %6, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add nsw i64 %38, %37
  store i64 %39, i64* %5, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = bitcast i64* %40 to i8*
  call void @free(i8* %41) #7
  %42 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %44 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %26

46:                                               ; preds = %26
  %47 = load i64, i64* %5, align 8
  %48 = load i64*, i64** %4, align 8
  store i64 %47, i64* %48, align 8
  %49 = load i64*, i64** %4, align 8
  %50 = bitcast i64* %49 to i8*
  %51 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %53 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  ret i8* %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intkeycmp(i8*, i8*) #0 {
  %3 = atomicrmw add i64* @intkeycmp.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %13, %14
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 18 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br i1 %15, label %20, label %25

20:                                               ; preds = %2
  store i32 1, i32* %4, align 4
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %23 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %43

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %26, %27
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %31 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %28, label %33, label %38

33:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  %34 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %35 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %36 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %37 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %43

38:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  %39 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %40 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %41 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %43

43:                                               ; preds = %38, %33, %20
  %44 = load i32, i32* %4, align 4
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %47 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i32 %44
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_regression_partition(i32, i8*, i32) #0 {
  %4 = atomicrmw add i64* @linear_regression_partition.glob, i64 1 seq_cst
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = bitcast i8** %6 to i8*
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @default_partition(i32 %8, i8* %9, i32 %10)
  %12 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %14 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  ret i32 %11
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GETENV(i8*) #0 {
  %2 = atomicrmw add i64* @GETENV.glob, i64 1 seq_cst
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @getenv(i8* %6) #7
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  %10 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %12 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %9, label %19, label %14

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8** %3, align 8
  %15 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %17 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %25

19:                                               ; preds = %1
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %3, align 8
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %23 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %25

25:                                               ; preds = %19, %14
  %26 = load i8*, i8** %3, align 8
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %29 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i8* %26
}

; Function Attrs: nounwind readonly
declare dso_local double @atof(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #3

declare dso_local i32 @map_reduce(%struct.map_reduce_args_t*) #1

declare dso_local i32 @map_reduce_finalize(...) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @munmap(i8*, i64) #3

declare dso_local i32 @close(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @CALLOC(i64, i64) #0 {
  %3 = atomicrmw add i64* @CALLOC.glob, i64 1 seq_cst
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call noalias i8* @calloc(i64 %7, i64 %8) #7
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  %12 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %14 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %15 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br i1 %11, label %16, label %20

16:                                               ; preds = %2
  %17 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %23

20:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.CALLOC, i64 0, i64 0)) #6
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %27 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i8* %24
}

declare dso_local void @emit_intermediate(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #3

declare dso_local i32 @iter_next(%struct.iterator_t*, i8**) #1

declare dso_local void @emit(i8*, i8*) #1

declare dso_local i32 @default_partition(i32, i8*, i32) #1

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
