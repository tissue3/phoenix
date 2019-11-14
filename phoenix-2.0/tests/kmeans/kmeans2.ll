; ModuleID = 'kmeans.ll'
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
@llvmInstrAtomicCounter = common global i64 0
@basicBlockAtomicCounter = common global i64 0
@mulAtomicCounter = common global i64 0
@memOpAtomicCounter = common global i64 0
@branchAtomicCounter = common global i64 0
@dump_means.glob = common global i64 0
@fprintf.glob = common global i64 0
@dump_points.glob = common global i64 0
@parse_args.glob = common global i64 0
@getopt.glob = common global i64 0
@atoi.glob = common global i64 0
@printf.glob = common global i64 0
@exit.glob = common global i64 0
@generate_points.glob = common global i64 0
@rand.glob = common global i64 0
@generate_means.glob = common global i64 0
@add_to_sum.glob = common global i64 0
@mykeycmp.glob = common global i64 0
@find_clusters.glob = common global i64 0
@get_sq_dist.glob = common global i64 0
@emit_intermediate.glob = common global i64 0
@kmeans_splitter.glob = common global i64 0
@__assert_fail.glob = common global i64 0
@malloc.glob = common global i64 0
@kmeans_locator.glob = common global i64 0
@kmeans_map.glob = common global i64 0
@free.glob = common global i64 0
@kmeans_reduce.glob = common global i64 0
@iter_size.glob = common global i64 0
@calloc.glob = common global i64 0
@iter_next.glob = common global i64 0
@emit.glob = common global i64 0
@main.glob = common global i64 0
@get_time.glob = common global i64 0
@llvm.memset.p0i8.i64.glob = common global i64 0
@map_reduce_init.glob = common global i64 0
@perror.glob = common global i64 0
@GETENV.glob = common global i64 0
@atof.glob = common global i64 0
@map_reduce.glob = common global i64 0
@llvm.memcpy.p0i8.p0i8.i64.glob = common global i64 0
@map_reduce_finalize.glob = common global i64 0
@getenv.glob = common global i64 0
@formatLong = private unnamed_addr constant [31 x i8] c"\0A\0AllvmInstrAtomicCounter: %ld\0A\00", align 1
@formatLong.1 = private unnamed_addr constant [30 x i8] c"basicBlockAtomicCounter: %ld\0A\00", align 1
@formatLong.2 = private unnamed_addr constant [23 x i8] c"mulAtomicCounter: %ld\0A\00", align 1
@formatLong.3 = private unnamed_addr constant [25 x i8] c"memOpAtomicCounter: %ld\0A\00", align 1
@formatLong.4 = private unnamed_addr constant [26 x i8] c"branchAtomicCounter: %ld\0A\00", align 1
@formatLong.5 = private unnamed_addr constant [17 x i8] c"dump_means: %ld\0A\00", align 1
@formatLong.6 = private unnamed_addr constant [14 x i8] c"fprintf: %ld\0A\00", align 1
@formatLong.7 = private unnamed_addr constant [18 x i8] c"dump_points: %ld\0A\00", align 1
@formatLong.8 = private unnamed_addr constant [17 x i8] c"parse_args: %ld\0A\00", align 1
@formatLong.9 = private unnamed_addr constant [13 x i8] c"getopt: %ld\0A\00", align 1
@formatLong.10 = private unnamed_addr constant [11 x i8] c"atoi: %ld\0A\00", align 1
@formatLong.11 = private unnamed_addr constant [13 x i8] c"printf: %ld\0A\00", align 1
@formatLong.12 = private unnamed_addr constant [11 x i8] c"exit: %ld\0A\00", align 1
@formatLong.13 = private unnamed_addr constant [22 x i8] c"generate_points: %ld\0A\00", align 1
@formatLong.14 = private unnamed_addr constant [11 x i8] c"rand: %ld\0A\00", align 1
@formatLong.15 = private unnamed_addr constant [21 x i8] c"generate_means: %ld\0A\00", align 1
@formatLong.16 = private unnamed_addr constant [17 x i8] c"add_to_sum: %ld\0A\00", align 1
@formatLong.17 = private unnamed_addr constant [15 x i8] c"mykeycmp: %ld\0A\00", align 1
@formatLong.18 = private unnamed_addr constant [20 x i8] c"find_clusters: %ld\0A\00", align 1
@formatLong.19 = private unnamed_addr constant [18 x i8] c"get_sq_dist: %ld\0A\00", align 1
@formatLong.20 = private unnamed_addr constant [24 x i8] c"emit_intermediate: %ld\0A\00", align 1
@formatLong.21 = private unnamed_addr constant [22 x i8] c"kmeans_splitter: %ld\0A\00", align 1
@formatLong.22 = private unnamed_addr constant [20 x i8] c"__assert_fail: %ld\0A\00", align 1
@formatLong.23 = private unnamed_addr constant [13 x i8] c"malloc: %ld\0A\00", align 1
@formatLong.24 = private unnamed_addr constant [21 x i8] c"kmeans_locator: %ld\0A\00", align 1
@formatLong.25 = private unnamed_addr constant [17 x i8] c"kmeans_map: %ld\0A\00", align 1
@formatLong.26 = private unnamed_addr constant [11 x i8] c"free: %ld\0A\00", align 1
@formatLong.27 = private unnamed_addr constant [20 x i8] c"kmeans_reduce: %ld\0A\00", align 1
@formatLong.28 = private unnamed_addr constant [16 x i8] c"iter_size: %ld\0A\00", align 1
@formatLong.29 = private unnamed_addr constant [13 x i8] c"calloc: %ld\0A\00", align 1
@formatLong.30 = private unnamed_addr constant [16 x i8] c"iter_next: %ld\0A\00", align 1
@formatLong.31 = private unnamed_addr constant [11 x i8] c"emit: %ld\0A\00", align 1
@formatLong.32 = private unnamed_addr constant [11 x i8] c"main: %ld\0A\00", align 1
@formatLong.33 = private unnamed_addr constant [15 x i8] c"get_time: %ld\0A\00", align 1
@formatLong.34 = private unnamed_addr constant [27 x i8] c"llvm.memset.p0i8.i64: %ld\0A\00", align 1
@formatLong.35 = private unnamed_addr constant [22 x i8] c"map_reduce_init: %ld\0A\00", align 1
@formatLong.36 = private unnamed_addr constant [13 x i8] c"perror: %ld\0A\00", align 1
@formatLong.37 = private unnamed_addr constant [13 x i8] c"GETENV: %ld\0A\00", align 1
@formatLong.38 = private unnamed_addr constant [11 x i8] c"atof: %ld\0A\00", align 1
@formatLong.39 = private unnamed_addr constant [17 x i8] c"map_reduce: %ld\0A\00", align 1
@formatLong.40 = private unnamed_addr constant [32 x i8] c"llvm.memcpy.p0i8.p0i8.i64: %ld\0A\00", align 1
@formatLong.41 = private unnamed_addr constant [26 x i8] c"map_reduce_finalize: %ld\0A\00", align 1
@formatLong.42 = private unnamed_addr constant [13 x i8] c"getenv: %ld\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_means(%struct.keyval_t*, i32) #0 {
  %3 = atomicrmw add i64* @dump_means.glob, i64 1 seq_cst
  %4 = alloca %struct.keyval_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.keyval_t* %0, %struct.keyval_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %9 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %10 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %12

12:                                               ; preds = %65, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %15, label %20, label %72

20:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %23 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %25

25:                                               ; preds = %51, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @dim, align 4
  %28 = icmp slt i32 %26, %27
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %31 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %28, label %33, label %58

33:                                               ; preds = %25
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = load %struct.keyval_t*, %struct.keyval_t** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %35, i64 %37
  %39 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %49 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %56 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %57 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %25

58:                                               ; preds = %25
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %61 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %63 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %65

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %12

72:                                               ; preds = %12
  %73 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @dump_points(i32*, i32) #0 {
  %3 = atomicrmw add i64* @dump_points.glob, i64 1 seq_cst
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %9 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %10 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %12

12:                                               ; preds = %64, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %15, label %20, label %71

20:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %23 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %25

25:                                               ; preds = %50, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @dim, align 4
  %28 = icmp slt i32 %26, %27
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %31 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %28, label %33, label %57

33:                                               ; preds = %25
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @dim, align 4
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %35, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %47 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %55 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %25

57:                                               ; preds = %25
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %60 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %61 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %62 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %64

64:                                               ; preds = %57
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %68 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %69 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %12

71:                                               ; preds = %12
  %72 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @parse_args(i32, i8**) #0 {
  %3 = atomicrmw add i64* @parse_args.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 100000, i32* @num_points, align 4
  store i32 100, i32* @num_means, align 4
  store i32 3, i32* @dim, align 4
  store i32 1000, i32* @grid_size, align 4
  %7 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %8 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %9 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %11

11:                                               ; preds = %61, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i8**, i8*** %5, align 8
  %14 = call i32 @getopt(i32 %12, i8** %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)) #6
  store i32 %14, i32* %6, align 4
  %15 = icmp ne i32 %14, -1
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %15, label %20, label %65

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  switch i32 %21, label %61 [
    i32 100, label %25
    i32 99, label %32
    i32 112, label %39
    i32 115, label %46
    i32 63, label %53
  ]

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  %27 = call i32 @atoi(i8* %26) #7
  store i32 %27, i32* @dim, align 4
  %28 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %30 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %31 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %61

32:                                               ; preds = %20
  %33 = load i8*, i8** @optarg, align 8
  %34 = call i32 @atoi(i8* %33) #7
  store i32 %34, i32* @num_means, align 4
  %35 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %37 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %61

39:                                               ; preds = %20
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @atoi(i8* %40) #7
  store i32 %41, i32* @num_points, align 4
  %42 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %44 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %61

46:                                               ; preds = %20
  %47 = load i8*, i8** @optarg, align 8
  %48 = call i32 @atoi(i8* %47) #7
  store i32 %48, i32* @grid_size, align 4
  %49 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %51 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %61

53:                                               ; preds = %20
  %54 = load i8**, i8*** %5, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  call void @exit(i32 1) #8
  %58 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %59 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %60 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  unreachable

61:                                               ; preds = %46, %39, %32, %25, %20
  %62 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %11

65:                                               ; preds = %11
  %66 = load i32, i32* @dim, align 4
  %67 = icmp sle i32 %66, 0
  %68 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %70 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %67, label %93, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* @num_means, align 4
  %74 = icmp sle i32 %73, 0
  %75 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %77 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %74, label %93, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* @num_points, align 4
  %81 = icmp sle i32 %80, 0
  %82 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %84 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %85 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %81, label %93, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @grid_size, align 4
  %88 = icmp sle i32 %87, 0
  %89 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %90 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %91 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %88, label %93, label %97

93:                                               ; preds = %86, %79, %72, %65
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  call void @exit(i32 1) #8
  %95 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %96 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  unreachable

97:                                               ; preds = %86
  %98 = load i32, i32* @dim, align 4
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @num_means, align 4
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @num_points, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @grid_size, align 4
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %104)
  %106 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %107 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %108 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
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
  %3 = atomicrmw add i64* @generate_points.glob, i64 1 seq_cst
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %9 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %10 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %12

12:                                               ; preds = %61, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %15, label %20, label %68

20:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  %21 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %23 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %25

25:                                               ; preds = %50, %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @dim, align 4
  %28 = icmp slt i32 %26, %27
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %31 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %28, label %33, label %57

33:                                               ; preds = %25
  %34 = call i32 @rand() #6
  %35 = load i32, i32* @grid_size, align 4
  %36 = srem i32 %34, %35
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @dim, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  store i32 %36, i32* %44, align 4
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %47 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %49 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %50

50:                                               ; preds = %33
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  %53 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %55 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %25

57:                                               ; preds = %25
  %58 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %59 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  %64 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %65 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %66 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %67 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %12

68:                                               ; preds = %12
  %69 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @generate_means(%struct.keyval_t*, i32) #0 {
  %3 = atomicrmw add i64* @generate_means.glob, i64 1 seq_cst
  %4 = alloca %struct.keyval_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.keyval_t* %0, %struct.keyval_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %9 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 9 seq_cst
  %10 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %12

12:                                               ; preds = %70, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %18 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %15, label %20, label %77

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.keyval_t*, %struct.keyval_t** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %22, i64 %24
  %26 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = bitcast i8* %27 to i32*
  store i32 %21, i32* %28, align 4
  store i32 0, i32* %7, align 4
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %31 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %33

33:                                               ; preds = %59, %20
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @dim, align 4
  %36 = icmp slt i32 %34, %35
  %37 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %38 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %39 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %40 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %36, label %41, label %66

41:                                               ; preds = %33
  %42 = call i32 @rand() #6
  %43 = load i32, i32* @grid_size, align 4
  %44 = srem i32 %42, %43
  %45 = load %struct.keyval_t*, %struct.keyval_t** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %45, i64 %47
  %49 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %44, i32* %54, align 4
  %55 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %56 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 15 seq_cst
  %57 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %58 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %59

59:                                               ; preds = %41
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %63 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %64 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %65 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %33

66:                                               ; preds = %33
  %67 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %68 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %69 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %75 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %12

77:                                               ; preds = %12
  %78 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %79 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @add_to_sum(i32*, i32*) #0 {
  %3 = atomicrmw add i64* @add_to_sum.glob, i64 1 seq_cst
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %8 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %9 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @dim, align 4
  %14 = icmp slt i32 %12, %13
  %15 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %17 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %14, label %19, label %42

19:                                               ; preds = %11
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, %24
  store i32 %30, i32* %28, align 4
  %31 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %33 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br label %35

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %40 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %11

42:                                               ; preds = %11
  %43 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @mykeycmp(i8*, i8*) #0 {
  %3 = atomicrmw add i64* @mykeycmp.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  %14 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %15 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 14 seq_cst
  %16 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br i1 %13, label %18, label %23

18:                                               ; preds = %2
  store i32 -1, i32* %4, align 4
  %19 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %21 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %45

23:                                               ; preds = %2
  %24 = load i8*, i8** %5, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %26, %29
  %31 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %33 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %30, label %35, label %40

35:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  %36 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %37 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %38 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %45

40:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  %41 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %42 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %43 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %45

45:                                               ; preds = %40, %35, %18
  %46 = load i32, i32* %4, align 4
  %47 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %49 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @find_clusters(i32*, %struct.keyval_t*, i32*, i32) #0 {
  %5 = atomicrmw add i64* @find_clusters.glob, i64 1 seq_cst
  %6 = alloca i32*, align 8
  %7 = alloca %struct.keyval_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.keyval_t* %1, %struct.keyval_t** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %17 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %19

19:                                               ; preds = %135, %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %25 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %22, label %27, label %142

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @dim, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %28, i64 %32
  %34 = load %struct.keyval_t*, %struct.keyval_t** %7, align 8
  %35 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %34, i64 0
  %36 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = call i32 @get_sq_dist(i32* %33, i32* %38)
  store i32 %39, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %11, align 4
  %40 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %42 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @memOpAtomicCounter, i64 8 seq_cst
  br label %45

45:                                               ; preds = %87, %27
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @num_means, align 4
  %48 = icmp slt i32 %46, %47
  %49 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %51 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %48, label %53, label %94

53:                                               ; preds = %45
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @dim, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load %struct.keyval_t*, %struct.keyval_t** %7, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %60, i64 %62
  %64 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = bitcast i8* %65 to i32*
  %67 = call i32 @get_sq_dist(i32* %59, i32* %66)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ult i32 %68, %69
  %71 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 19 seq_cst
  %73 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %74 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br i1 %70, label %76, label %83

76:                                               ; preds = %53
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %14, align 4
  %79 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %81 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %82 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %83

83:                                               ; preds = %76, %53
  %84 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %85 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %86 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %91 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %92 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %93 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %45

94:                                               ; preds = %45
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %99, %100
  %102 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %103 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %104 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %105 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %101, label %106, label %116

106:                                              ; preds = %94
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  store i32 1, i32* @modified, align 4
  %112 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %113 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %114 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %115 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %116

116:                                              ; preds = %106, %94
  %117 = load %struct.keyval_t*, %struct.keyval_t** %7, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %117, i64 %119
  %121 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @dim, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = bitcast i32* %128 to i8*
  call void @emit_intermediate(i8* %122, i8* %129, i32 8)
  %130 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %131 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 15 seq_cst
  %132 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %133 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %134 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %135

135:                                              ; preds = %116
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  %138 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %139 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %140 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %141 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %19

142:                                              ; preds = %19
  %143 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %144 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_sq_dist(i32*, i32*) #0 {
  %3 = atomicrmw add i64* @get_sq_dist.glob, i64 1 seq_cst
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  %10 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 12 seq_cst
  %12 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %14

14:                                               ; preds = %47, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @dim, align 4
  %17 = icmp slt i32 %15, %16
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %17, label %22, label %54

22:                                               ; preds = %14
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = mul nsw i32 %35, %38
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %43 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 23 seq_cst
  %44 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %45 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @memOpAtomicCounter, i64 14 seq_cst
  br label %47

47:                                               ; preds = %22
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %51 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %52 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %53 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %14

54:                                               ; preds = %14
  %55 = load i32, i32* %9, align 4
  %56 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %57 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %58 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i32 %55
}

declare dso_local void @emit_intermediate(i8*, i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @kmeans_splitter(i8*, i32, %struct.map_args_t*) #0 {
  %4 = atomicrmw add i64* @kmeans_splitter.glob, i64 1 seq_cst
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.map_args_t*, align 8
  %9 = alloca %struct.kmeans_data_t*, align 8
  %10 = alloca %struct.kmeans_map_data_t*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.map_args_t* %2, %struct.map_args_t** %8, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.kmeans_data_t*
  store %struct.kmeans_data_t* %12, %struct.kmeans_data_t** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  %15 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %17 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %18 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br i1 %14, label %19, label %23

19:                                               ; preds = %3
  %20 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %21 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %22 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %26

23:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 267, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  %24 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %25 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

26:                                               ; preds = %19
  %27 = load %struct.map_args_t*, %struct.map_args_t** %8, align 8
  %28 = icmp ne %struct.map_args_t* %27, null
  %29 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %31 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %32 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %28, label %33, label %37

33:                                               ; preds = %26
  %34 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %35 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %36 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %40

37:                                               ; preds = %26
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 268, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  %38 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %39 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

40:                                               ; preds = %33
  %41 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %42 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %46 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %47 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %48 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %44, label %49, label %53

49:                                               ; preds = %40
  %50 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %51 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %56

53:                                               ; preds = %40
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 269, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  %54 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

56:                                               ; preds = %49
  %57 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %58 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %57, i32 0, i32 1
  %59 = load %struct.keyval_t*, %struct.keyval_t** %58, align 8
  %60 = icmp ne %struct.keyval_t* %59, null
  %61 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %63 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %64 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %60, label %65, label %69

65:                                               ; preds = %56
  %66 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %67 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %68 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %72

69:                                               ; preds = %56
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 270, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  %70 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %71 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

72:                                               ; preds = %65
  %73 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %74 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  %77 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %79 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %76, label %81, label %85

81:                                               ; preds = %72
  %82 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %88

85:                                               ; preds = %72
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 271, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  %86 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %87 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  %91 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %93 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %94 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %90, label %95, label %99

95:                                               ; preds = %88
  %96 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %97 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %98 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %102

99:                                               ; preds = %88
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 272, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.kmeans_splitter, i64 0, i64 0)) #8
  %100 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %101 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

102:                                              ; preds = %95
  %103 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %104 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @num_points, align 4
  %107 = icmp sge i32 %105, %106
  %108 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %109 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %110 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %111 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %107, label %112, label %117

112:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  %113 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %114 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %115 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %116 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %204

117:                                              ; preds = %102
  %118 = call noalias i8* @malloc(i64 32) #6
  %119 = bitcast i8* %118 to %struct.kmeans_map_data_t*
  store %struct.kmeans_map_data_t* %119, %struct.kmeans_map_data_t** %10, align 8
  %120 = load %struct.map_args_t*, %struct.map_args_t** %8, align 8
  %121 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %120, i32 0, i32 0
  store i64 1, i64* %121, align 8
  %122 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %10, align 8
  %123 = bitcast %struct.kmeans_map_data_t* %122 to i8*
  %124 = load %struct.map_args_t*, %struct.map_args_t** %8, align 8
  %125 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %124, i32 0, i32 1
  store i8* %123, i8** %125, align 8
  %126 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %127 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %130 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @dim, align 4
  %133 = mul nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %128, i64 %134
  %136 = bitcast i32* %135 to i8*
  %137 = bitcast i8* %136 to i32*
  %138 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %10, align 8
  %139 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %138, i32 0, i32 1
  store i32* %137, i32** %139, align 8
  %140 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %141 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %140, i32 0, i32 1
  %142 = load %struct.keyval_t*, %struct.keyval_t** %141, align 8
  %143 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %10, align 8
  %144 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %143, i32 0, i32 2
  store %struct.keyval_t* %142, %struct.keyval_t** %144, align 8
  %145 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %146 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %149 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  %153 = bitcast i32* %152 to i8*
  %154 = bitcast i8* %153 to i32*
  %155 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %10, align 8
  %156 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %155, i32 0, i32 3
  store i32* %154, i32** %156, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %159 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %163 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @num_points, align 4
  %166 = icmp sge i32 %164, %165
  %167 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %168 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 57 seq_cst
  %169 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %170 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %171 = atomicrmw add i64* @memOpAtomicCounter, i64 30 seq_cst
  br i1 %166, label %172, label %186

172:                                              ; preds = %117
  %173 = load i32, i32* @num_points, align 4
  %174 = load %struct.kmeans_data_t*, %struct.kmeans_data_t** %9, align 8
  %175 = getelementptr inbounds %struct.kmeans_data_t, %struct.kmeans_data_t* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %173, %176
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %177, %178
  %180 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %10, align 8
  %181 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %183 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %184 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %185 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %194

186:                                              ; preds = %117
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %10, align 8
  %189 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  %190 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %191 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %192 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %193 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %194

194:                                              ; preds = %186, %172
  %195 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %10, align 8
  %196 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @num_pts, align 4
  %199 = add nsw i32 %198, %197
  store i32 %199, i32* @num_pts, align 4
  store i32 1, i32* %5, align 4
  %200 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %201 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %202 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %203 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  br label %204

204:                                              ; preds = %194, %112
  %205 = load i32, i32* %5, align 4
  %206 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %207 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %208 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret i32 %205
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @kmeans_locator(%struct.map_args_t*) #0 {
  %2 = atomicrmw add i64* @kmeans_locator.glob, i64 1 seq_cst
  %3 = alloca %struct.map_args_t*, align 8
  %4 = alloca %struct.kmeans_map_data_t*, align 8
  store %struct.map_args_t* %0, %struct.map_args_t** %3, align 8
  %5 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %6 = icmp ne %struct.map_args_t* %5, null
  %7 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %8 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %9 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %6, label %11, label %15

11:                                               ; preds = %1
  %12 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %18

15:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 301, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.kmeans_locator, i64 0, i64 0)) #8
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

18:                                               ; preds = %11
  %19 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %20 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast i8* %21 to %struct.kmeans_map_data_t*
  store %struct.kmeans_map_data_t* %22, %struct.kmeans_map_data_t** %4, align 8
  %23 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %4, align 8
  %24 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 10 seq_cst
  %29 = atomicrmw add i64* @memOpAtomicCounter, i64 5 seq_cst
  ret i8* %26
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @kmeans_map(%struct.map_args_t*) #0 {
  %2 = atomicrmw add i64* @kmeans_map.glob, i64 1 seq_cst
  %3 = alloca %struct.map_args_t*, align 8
  %4 = alloca %struct.kmeans_map_data_t*, align 8
  store %struct.map_args_t* %0, %struct.map_args_t** %3, align 8
  %5 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %6 = icmp ne %struct.map_args_t* %5, null
  %7 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %8 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 7 seq_cst
  %9 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %10 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %6, label %11, label %15

11:                                               ; preds = %1
  %12 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %18

15:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 314, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.kmeans_map, i64 0, i64 0)) #8
  %16 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %17 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

18:                                               ; preds = %11
  %19 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %20 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 1
  %23 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %24 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %25 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %26 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %22, label %27, label %31

27:                                               ; preds = %18
  %28 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %29 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %34

31:                                               ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 315, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__PRETTY_FUNCTION__.kmeans_map, i64 0, i64 0)) #8
  %32 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %33 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

34:                                               ; preds = %27
  %35 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %36 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.kmeans_map_data_t*
  store %struct.kmeans_map_data_t* %38, %struct.kmeans_map_data_t** %4, align 8
  %39 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %4, align 8
  %40 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %4, align 8
  %43 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %42, i32 0, i32 2
  %44 = load %struct.keyval_t*, %struct.keyval_t** %43, align 8
  %45 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %4, align 8
  %46 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.kmeans_map_data_t*, %struct.kmeans_map_data_t** %4, align 8
  %49 = getelementptr inbounds %struct.kmeans_map_data_t, %struct.kmeans_map_data_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  call void @find_clusters(i32* %41, %struct.keyval_t* %44, i32* %47, i32 %50)
  %51 = load %struct.map_args_t*, %struct.map_args_t** %3, align 8
  %52 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  call void @free(i8* %53) #6
  %54 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %55 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 23 seq_cst
  %56 = atomicrmw add i64* @memOpAtomicCounter, i64 13 seq_cst
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @kmeans_reduce(i8*, %struct.iterator_t*) #0 {
  %3 = atomicrmw add i64* @kmeans_reduce.glob, i64 1 seq_cst
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iterator_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.iterator_t* %1, %struct.iterator_t** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  %13 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %14 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %15 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %16 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br i1 %12, label %17, label %21

17:                                               ; preds = %2
  %18 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %19 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %20 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %24

21:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 327, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.kmeans_reduce, i64 0, i64 0)) #8
  %22 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %23 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

24:                                               ; preds = %17
  %25 = load %struct.iterator_t*, %struct.iterator_t** %5, align 8
  %26 = icmp ne %struct.iterator_t* %25, null
  %27 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %28 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %29 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %30 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %26, label %31, label %35

31:                                               ; preds = %24
  %32 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %33 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %34 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %38

35:                                               ; preds = %24
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 328, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.kmeans_reduce, i64 0, i64 0)) #8
  %36 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %37 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

38:                                               ; preds = %31
  %39 = load %struct.iterator_t*, %struct.iterator_t** %5, align 8
  %40 = call i32 @iter_size(%struct.iterator_t* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @dim, align 4
  %42 = sext i32 %41 to i64
  %43 = call noalias i8* @calloc(i64 %42, i64 4) #6
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %7, align 8
  %45 = load i32, i32* @dim, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = call noalias i8* @malloc(i64 %47) #6
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %8, align 8
  store i32 0, i32* %6, align 4
  %50 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %51 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 16 seq_cst
  %52 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %53 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %54 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br label %55

55:                                               ; preds = %63, %38
  %56 = load %struct.iterator_t*, %struct.iterator_t** %5, align 8
  %57 = call i32 @iter_next(%struct.iterator_t* %56, i8** %9)
  %58 = icmp ne i32 %57, 0
  %59 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %60 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %61 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %62 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %58, label %63, label %73

63:                                               ; preds = %55
  %64 = load i32*, i32** %7, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = bitcast i8* %65 to i32*
  call void @add_to_sum(i32* %64, i32* %66)
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %70 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %71 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %72 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %55

73:                                               ; preds = %55
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %74, %75
  %77 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %78 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %79 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %80 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %76, label %81, label %85

81:                                               ; preds = %73
  %82 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %84 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %88

85:                                               ; preds = %73
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 345, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.kmeans_reduce, i64 0, i64 0)) #8
  %86 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %87 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

88:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  %89 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %90 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  %91 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %92 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %93

93:                                               ; preds = %117, %88
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @dim, align 4
  %96 = icmp slt i32 %94, %95
  %97 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %98 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %99 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %100 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %96, label %101, label %124

101:                                              ; preds = %93
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %10, align 4
  %108 = sdiv i32 %106, %107
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %114 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %115 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %116 = atomicrmw add i64* @memOpAtomicCounter, i64 7 seq_cst
  br label %117

117:                                              ; preds = %101
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  %120 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %121 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %122 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %123 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %93

124:                                              ; preds = %93
  %125 = load i32*, i32** %7, align 8
  %126 = bitcast i32* %125 to i8*
  call void @free(i8* %126) #6
  %127 = load i8*, i8** %4, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = bitcast i32* %128 to i8*
  call void @emit(i8* %127, i8* %129)
  %130 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %131 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %132 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  ret void
}

declare dso_local i32 @iter_size(%struct.iterator_t*) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @calloc(i64, i64) #2

declare dso_local i32 @iter_next(%struct.iterator_t*, i8**) #1

declare dso_local void @emit(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = atomicrmw add i64* @main.glob, i64 1 seq_cst
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca %struct.final_data_t, align 8
  %8 = alloca %struct.map_reduce_args_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  call void @get_time(%struct.timeval* %12)
  %15 = load i32, i32* %5, align 4
  %16 = load i8**, i8*** %6, align 8
  call void @parse_args(i32 %15, i8** %16)
  %17 = load i32, i32* @num_points, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = load i32, i32* @dim, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %19, %21
  %23 = call noalias i8* @malloc(i64 %22) #6
  %24 = bitcast i8* %23 to i32*
  store i32* %24, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 0), align 8
  %25 = load i32*, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 0), align 8
  %26 = load i32, i32* @num_points, align 4
  call void @generate_points(i32* %25, i32 %26)
  %27 = load i32, i32* @num_means, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 16, %28
  %30 = call noalias i8* @malloc(i64 %29) #6
  %31 = bitcast i8* %30 to %struct.keyval_t*
  store %struct.keyval_t* %31, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %32 = load i32, i32* @dim, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = load i32, i32* @num_means, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = call noalias i8* @malloc(i64 %37) #6
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %10, align 8
  store i32 0, i32* %9, align 4
  %40 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %41 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 48 seq_cst
  %42 = atomicrmw add i64* @mulAtomicCounter, i64 5 seq_cst
  %43 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %44 = atomicrmw add i64* @memOpAtomicCounter, i64 16 seq_cst
  br label %45

45:                                               ; preds = %77, %2
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @num_means, align 4
  %48 = icmp slt i32 %46, %47
  %49 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %50 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %51 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %52 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %48, label %53, label %84

53:                                               ; preds = %45
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @dim, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = bitcast i32* %59 to i8*
  %61 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %61, i64 %63
  %65 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %64, i32 0, i32 1
  store i8* %60, i8** %65, align 8
  %66 = call noalias i8* @malloc(i64 8) #6
  %67 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %67, i64 %69
  %71 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %70, i32 0, i32 0
  store i8* %66, i8** %71, align 8
  %72 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %73 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 21 seq_cst
  %74 = atomicrmw add i64* @mulAtomicCounter, i64 1 seq_cst
  %75 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %76 = atomicrmw add i64* @memOpAtomicCounter, i64 9 seq_cst
  br label %77

77:                                               ; preds = %53
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %81 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %82 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %83 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %45

84:                                               ; preds = %45
  %85 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %86 = load i32, i32* @num_means, align 4
  call void @generate_means(%struct.keyval_t* %85, i32 %86)
  store i32 0, i32* getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 3), align 8
  %87 = load i32, i32* @dim, align 4
  %88 = sext i32 %87 to i64
  %89 = mul i64 4, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 4), align 4
  %91 = load i32, i32* @num_points, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  %94 = call noalias i8* @malloc(i64 %93) #6
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 2), align 8
  %96 = load i32*, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 2), align 8
  %97 = bitcast i32* %96 to i8*
  %98 = load i32, i32* @num_points, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  call void @llvm.memset.p0i8.i64(i8* align 4 %97, i8 -1, i64 %100, i1 false)
  store i32 1, i32* @modified, align 4
  %101 = call i32 (...) @map_reduce_init()
  %102 = icmp ne i32 %101, 0
  %103 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %104 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 25 seq_cst
  %105 = atomicrmw add i64* @mulAtomicCounter, i64 3 seq_cst
  %106 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %107 = atomicrmw add i64* @memOpAtomicCounter, i64 10 seq_cst
  br i1 %102, label %108, label %125

108:                                              ; preds = %84
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0))
  %109 = call i32 (...) @map_reduce_init()
  %110 = icmp eq i32 %109, 0
  %111 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %112 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %113 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %110, label %114, label %118

114:                                              ; preds = %108
  %115 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %116 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %117 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %121

118:                                              ; preds = %108
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 395, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %119 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %120 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

121:                                              ; preds = %114
  %122 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %123 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %124 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %125

125:                                              ; preds = %121, %84
  %126 = bitcast %struct.map_reduce_args_t* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %126, i8 0, i64 120, i1 false)
  %127 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 0
  store i8* bitcast (%struct.kmeans_data_t* @kmeans_data to i8*), i8** %127, align 8
  %128 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 3
  store void (%struct.map_args_t*)* @kmeans_map, void (%struct.map_args_t*)** %128, align 8
  %129 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 4
  store void (i8*, %struct.iterator_t*)* @kmeans_reduce, void (i8*, %struct.iterator_t*)** %129, align 8
  %130 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 6
  store i32 (i8*, i32, %struct.map_args_t*)* @kmeans_splitter, i32 (i8*, i32, %struct.map_args_t*)** %130, align 8
  %131 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 7
  store i8* (%struct.map_args_t*)* @kmeans_locator, i8* (%struct.map_args_t*)** %131, align 8
  %132 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 8
  store i32 (i8*, i8*)* @mykeycmp, i32 (i8*, i8*)** %132, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 4), align 4
  %134 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 2
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 10
  store i32 (i32, i8*, i32)* null, i32 (i32, i8*, i32)** %135, align 8
  %136 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 9
  store %struct.final_data_t* %7, %struct.final_data_t** %136, align 8
  %137 = load i32, i32* @num_points, align 4
  %138 = load i32, i32* @num_means, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* @dim, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 1
  store i64 %143, i64* %144, align 8
  %145 = call i8* @GETENV(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  %146 = call i32 @atoi(i8* %145) #7
  %147 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 12
  store i32 %146, i32* %147, align 4
  %148 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %149 = call i32 @atoi(i8* %148) #7
  %150 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 13
  store i32 %149, i32* %150, align 8
  %151 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %152 = call i32 @atoi(i8* %151) #7
  %153 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 14
  store i32 %152, i32* %153, align 4
  %154 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %155 = call i32 @atoi(i8* %154) #7
  %156 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 15
  store i32 %155, i32* %156, align 8
  %157 = call i8* @GETENV(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %158 = call i32 @atoi(i8* %157) #7
  %159 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 16
  store i32 %158, i32* %159, align 4
  %160 = call i8* @GETENV(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %161 = call double @atof(i8* %160) #7
  %162 = fptrunc double %161 to float
  %163 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 18
  store float %162, float* %163, align 4
  %164 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %8, i32 0, i32 11
  store i8 1, i8* %164, align 8
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.28, i64 0, i64 0))
  call void @get_time(%struct.timeval* %13)
  store i8 1, i8* %11, align 1
  %166 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %167 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 61 seq_cst
  %168 = atomicrmw add i64* @mulAtomicCounter, i64 2 seq_cst
  %169 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %170 = atomicrmw add i64* @memOpAtomicCounter, i64 22 seq_cst
  br label %171

171:                                              ; preds = %286, %125
  %172 = load i32, i32* @modified, align 4
  %173 = icmp eq i32 %172, 1
  %174 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %175 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %176 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %177 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %173, label %178, label %291

178:                                              ; preds = %171
  store i32 0, i32* @modified, align 4
  store i32 0, i32* getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 3), align 8
  call void @get_time(%struct.timeval* %12)
  %179 = call i32 @map_reduce(%struct.map_reduce_args_t* %8)
  %180 = icmp slt i32 %179, 0
  %181 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %182 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %183 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %184 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %180, label %185, label %204

185:                                              ; preds = %178
  call void @perror(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i64 0, i64 0))
  %186 = call i32 @map_reduce(%struct.map_reduce_args_t* %8)
  %187 = icmp slt i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = icmp eq i32 %188, 0
  %190 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %191 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 6 seq_cst
  %192 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %189, label %193, label %197

193:                                              ; preds = %185
  %194 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %195 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %196 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %200

197:                                              ; preds = %185
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 433, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %198 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %199 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

200:                                              ; preds = %193
  %201 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %202 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %203 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %204

204:                                              ; preds = %200, %178
  call void @get_time(%struct.timeval* %13)
  call void @get_time(%struct.timeval* %12)
  store i32 0, i32* %9, align 4
  %205 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %206 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %207 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %208 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %209

209:                                              ; preds = %263, %204
  %210 = load i32, i32* %9, align 4
  %211 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %7, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp slt i32 %210, %212
  %214 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %215 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %216 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %217 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %213, label %218, label %270

218:                                              ; preds = %209
  %219 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %7, i32 0, i32 1
  %220 = load %struct.keyval_t*, %struct.keyval_t** %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %220, i64 %222
  %224 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = bitcast i8* %225 to i32*
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %14, align 4
  %228 = load i8, i8* %11, align 1
  %229 = trunc i8 %228 to i1
  %230 = zext i1 %229 to i32
  %231 = icmp eq i32 %230, 0
  %232 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %233 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 15 seq_cst
  %234 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %235 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br i1 %231, label %236, label %247

236:                                              ; preds = %218
  %237 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %237, i64 %239
  %241 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  call void @free(i8* %242) #6
  %243 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %244 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 8 seq_cst
  %245 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %246 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
  br label %247

247:                                              ; preds = %236, %218
  %248 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %248, i64 %250
  %252 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %7, i32 0, i32 1
  %253 = load %struct.keyval_t*, %struct.keyval_t** %252, align 8
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %253, i64 %255
  %257 = bitcast %struct.keyval_t* %251 to i8*
  %258 = bitcast %struct.keyval_t* %256 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %257, i8* align 8 %258, i64 16, i1 false)
  %259 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %260 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %261 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %262 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br label %263

263:                                              ; preds = %247
  %264 = load i32, i32* %9, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %9, align 4
  %266 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %267 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %268 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %269 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %209

270:                                              ; preds = %209
  %271 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %7, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp sgt i32 %272, 0
  %274 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %275 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %276 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %277 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br i1 %273, label %278, label %286

278:                                              ; preds = %270
  %279 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %7, i32 0, i32 1
  %280 = load %struct.keyval_t*, %struct.keyval_t** %279, align 8
  %281 = bitcast %struct.keyval_t* %280 to i8*
  call void @free(i8* %281) #6
  %282 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %283 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 5 seq_cst
  %284 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %285 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %286

286:                                              ; preds = %278, %270
  call void @get_time(%struct.timeval* %13)
  store i8 0, i8* %11, align 1
  %287 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %288 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 3 seq_cst
  %289 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %290 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  br label %171

291:                                              ; preds = %171
  call void @get_time(%struct.timeval* %12)
  %292 = call i32 (...) @map_reduce_finalize()
  %293 = icmp ne i32 %292, 0
  %294 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %295 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %296 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %293, label %297, label %314

297:                                              ; preds = %291
  call void @perror(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i64 0, i64 0))
  %298 = call i32 (...) @map_reduce_finalize()
  %299 = icmp eq i32 %298, 0
  %300 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %301 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %302 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br i1 %299, label %303, label %307

303:                                              ; preds = %297
  %304 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %305 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %306 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %310

307:                                              ; preds = %297
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 464, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8
  %308 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %309 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 2 seq_cst
  unreachable

310:                                              ; preds = %303
  %311 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %312 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 1 seq_cst
  %313 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  br label %314

314:                                              ; preds = %310, %291
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %315, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0))
  %318 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %318, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0))
  %320 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %321 = load i32, i32* @num_means, align 4
  call void @dump_means(%struct.keyval_t* %320, i32 %321)
  %322 = load i32*, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 0), align 8
  %323 = bitcast i32* %322 to i8*
  call void @free(i8* %323) #6
  store i32 0, i32* %9, align 4
  %324 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %325 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 13 seq_cst
  %326 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %327 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %328

328:                                              ; preds = %353, %314
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* @num_means, align 4
  %331 = icmp slt i32 %329, %330
  %332 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %333 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %334 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %335 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br i1 %331, label %336, label %360

336:                                              ; preds = %328
  %337 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %338 = load i32, i32* %9, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %337, i64 %339
  %341 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  call void @free(i8* %342) #6
  %343 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %343, i64 %345
  %347 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %346, i32 0, i32 1
  %348 = load i8*, i8** %347, align 8
  call void @free(i8* %348) #6
  %349 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %350 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 15 seq_cst
  %351 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %352 = atomicrmw add i64* @memOpAtomicCounter, i64 6 seq_cst
  br label %353

353:                                              ; preds = %336
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %9, align 4
  %356 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %357 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %358 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %359 = atomicrmw add i64* @memOpAtomicCounter, i64 2 seq_cst
  br label %328

360:                                              ; preds = %328
  %361 = load %struct.keyval_t*, %struct.keyval_t** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 1), align 8
  %362 = bitcast %struct.keyval_t* %361 to i8*
  call void @free(i8* %362) #6
  %363 = load i32*, i32** %10, align 8
  %364 = bitcast i32* %363 to i8*
  call void @free(i8* %364) #6
  %365 = load i32*, i32** getelementptr inbounds (%struct.kmeans_data_t, %struct.kmeans_data_t* @kmeans_data, i32 0, i32 2), align 8
  %366 = bitcast i32* %365 to i8*
  call void @free(i8* %366) #6
  call void @get_time(%struct.timeval* %13)
  %367 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %368 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %369 = atomicrmw add i64* @memOpAtomicCounter, i64 3 seq_cst
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
  %dump_means.val = load i64, i64* @dump_means.glob
  %printf5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.5, i32 0, i32 0), i64 %dump_means.val)
  %fprintf.val = load i64, i64* @fprintf.glob
  %printf6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @formatLong.6, i32 0, i32 0), i64 %fprintf.val)
  %dump_points.val = load i64, i64* @dump_points.glob
  %printf7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.7, i32 0, i32 0), i64 %dump_points.val)
  %parse_args.val = load i64, i64* @parse_args.glob
  %printf8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.8, i32 0, i32 0), i64 %parse_args.val)
  %getopt.val = load i64, i64* @getopt.glob
  %printf9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.9, i32 0, i32 0), i64 %getopt.val)
  %atoi.val = load i64, i64* @atoi.glob
  %printf10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.10, i32 0, i32 0), i64 %atoi.val)
  %printf.val = load i64, i64* @printf.glob
  %printf11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.11, i32 0, i32 0), i64 %printf.val)
  %exit.val = load i64, i64* @exit.glob
  %printf12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.12, i32 0, i32 0), i64 %exit.val)
  %generate_points.val = load i64, i64* @generate_points.glob
  %printf13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @formatLong.13, i32 0, i32 0), i64 %generate_points.val)
  %rand.val = load i64, i64* @rand.glob
  %printf14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.14, i32 0, i32 0), i64 %rand.val)
  %generate_means.val = load i64, i64* @generate_means.glob
  %printf15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @formatLong.15, i32 0, i32 0), i64 %generate_means.val)
  %add_to_sum.val = load i64, i64* @add_to_sum.glob
  %printf16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.16, i32 0, i32 0), i64 %add_to_sum.val)
  %mykeycmp.val = load i64, i64* @mykeycmp.glob
  %printf17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @formatLong.17, i32 0, i32 0), i64 %mykeycmp.val)
  %find_clusters.val = load i64, i64* @find_clusters.glob
  %printf18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.18, i32 0, i32 0), i64 %find_clusters.val)
  %get_sq_dist.val = load i64, i64* @get_sq_dist.glob
  %printf19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @formatLong.19, i32 0, i32 0), i64 %get_sq_dist.val)
  %emit_intermediate.val = load i64, i64* @emit_intermediate.glob
  %printf20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @formatLong.20, i32 0, i32 0), i64 %emit_intermediate.val)
  %kmeans_splitter.val = load i64, i64* @kmeans_splitter.glob
  %printf21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @formatLong.21, i32 0, i32 0), i64 %kmeans_splitter.val)
  %__assert_fail.val = load i64, i64* @__assert_fail.glob
  %printf22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.22, i32 0, i32 0), i64 %__assert_fail.val)
  %malloc.val = load i64, i64* @malloc.glob
  %printf23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.23, i32 0, i32 0), i64 %malloc.val)
  %kmeans_locator.val = load i64, i64* @kmeans_locator.glob
  %printf24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @formatLong.24, i32 0, i32 0), i64 %kmeans_locator.val)
  %kmeans_map.val = load i64, i64* @kmeans_map.glob
  %printf25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.25, i32 0, i32 0), i64 %kmeans_map.val)
  %free.val = load i64, i64* @free.glob
  %printf26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.26, i32 0, i32 0), i64 %free.val)
  %kmeans_reduce.val = load i64, i64* @kmeans_reduce.glob
  %printf27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @formatLong.27, i32 0, i32 0), i64 %kmeans_reduce.val)
  %iter_size.val = load i64, i64* @iter_size.glob
  %printf28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @formatLong.28, i32 0, i32 0), i64 %iter_size.val)
  %calloc.val = load i64, i64* @calloc.glob
  %printf29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.29, i32 0, i32 0), i64 %calloc.val)
  %iter_next.val = load i64, i64* @iter_next.glob
  %printf30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @formatLong.30, i32 0, i32 0), i64 %iter_next.val)
  %emit.val = load i64, i64* @emit.glob
  %printf31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.31, i32 0, i32 0), i64 %emit.val)
  %main.val = load i64, i64* @main.glob
  %printf32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.32, i32 0, i32 0), i64 %main.val)
  %get_time.val = load i64, i64* @get_time.glob
  %printf33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @formatLong.33, i32 0, i32 0), i64 %get_time.val)
  %llvm.memset.p0i8.i64.val = load i64, i64* @llvm.memset.p0i8.i64.glob
  %printf34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @formatLong.34, i32 0, i32 0), i64 %llvm.memset.p0i8.i64.val)
  %map_reduce_init.val = load i64, i64* @map_reduce_init.glob
  %printf35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @formatLong.35, i32 0, i32 0), i64 %map_reduce_init.val)
  %perror.val = load i64, i64* @perror.glob
  %printf36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.36, i32 0, i32 0), i64 %perror.val)
  %GETENV.val = load i64, i64* @GETENV.glob
  %printf37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.37, i32 0, i32 0), i64 %GETENV.val)
  %atof.val = load i64, i64* @atof.glob
  %printf38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @formatLong.38, i32 0, i32 0), i64 %atof.val)
  %map_reduce.val = load i64, i64* @map_reduce.glob
  %printf39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @formatLong.39, i32 0, i32 0), i64 %map_reduce.val)
  %llvm.memcpy.p0i8.p0i8.i64.val = load i64, i64* @llvm.memcpy.p0i8.p0i8.i64.glob
  %printf40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @formatLong.40, i32 0, i32 0), i64 %llvm.memcpy.p0i8.p0i8.i64.val)
  %map_reduce_finalize.val = load i64, i64* @map_reduce_finalize.glob
  %printf41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @formatLong.41, i32 0, i32 0), i64 %map_reduce_finalize.val)
  %getenv.val = load i64, i64* @getenv.glob
  %printf42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @formatLong.42, i32 0, i32 0), i64 %getenv.val)
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @get_time(%struct.timeval*) #0 {
  %2 = atomicrmw add i64* @get_time.glob, i64 1 seq_cst
  %3 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  %4 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %5 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 4 seq_cst
  %6 = atomicrmw add i64* @memOpAtomicCounter, i64 1 seq_cst
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

declare dso_local i32 @map_reduce_init(...) #1

declare dso_local void @perror(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @GETENV(i8*) #0 {
  %2 = atomicrmw add i64* @GETENV.glob, i64 1 seq_cst
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @getenv(i8* %6) #6
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  %10 = atomicrmw add i64* @basicBlockAtomicCounter, i64 1 seq_cst
  %11 = atomicrmw add i64* @llvmInstrAtomicCounter, i64 11 seq_cst
  %12 = atomicrmw add i64* @branchAtomicCounter, i64 1 seq_cst
  %13 = atomicrmw add i64* @memOpAtomicCounter, i64 4 seq_cst
  br i1 %9, label %19, label %14

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8** %3, align 8
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
