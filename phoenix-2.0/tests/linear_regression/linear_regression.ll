; ModuleID = 'linear_regression.c'
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.final_data_t, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stat, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.map_reduce_args_t, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.keyval_t*, align 8
  %29 = alloca double, align 8
  %30 = alloca double, align 8
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  %33 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  call void @get_time(%struct.timeval* %14)
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %2
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %41)
  call void @exit(i32 1) #6
  unreachable

43:                                               ; preds = %2
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 1
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %9, align 8
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 (i8*, i32, ...) @open(i8* %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  call void @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i8*, i32, ...) @open(i8* %52, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  %55 = zext i1 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %59

58:                                               ; preds = %51
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 188, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %43
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @fstat(i32 %61, %struct.stat* %10) #7
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  call void @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @fstat(i32 %65, %struct.stat* %10) #7
  %67 = icmp slt i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %72

71:                                               ; preds = %64
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 190, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72, %60
  %74 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  %77 = load i32, i32* %7, align 4
  %78 = call i8* @mmap(i8* null, i64 %76, i32 3, i32 2, i32 %77, i64 0) #7
  store i8* %78, i8** %8, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %73
  call void @perror(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.7, i64 0, i64 0))
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  %84 = load i32, i32* %7, align 4
  %85 = call i8* @mmap(i8* null, i64 %83, i32 3, i32 2, i32 %84, i64 0) #7
  store i8* %85, i8** %8, align 8
  %86 = icmp eq i8* %85, null
  %87 = zext i1 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %91

90:                                               ; preds = %80
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 194, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %91, %73
  %93 = call i32 (...) @map_reduce_init()
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  call void @perror(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %96 = call i32 (...) @map_reduce_init()
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %100

99:                                               ; preds = %95
  call void @__assert_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 205, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

100:                                              ; preds = %98
  br label %101

101:                                              ; preds = %100, %92
  %102 = bitcast %struct.map_reduce_args_t* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %102, i8 0, i64 120, i1 false)
  %103 = load i8*, i8** %8, align 8
  %104 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 0
  store i8* %103, i8** %104, align 8
  %105 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 3
  store void (%struct.map_args_t*)* @linear_regression_map, void (%struct.map_args_t*)** %105, align 8
  %106 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 4
  store void (i8*, %struct.iterator_t*)* @linear_regression_reduce, void (i8*, %struct.iterator_t*)** %106, align 8
  %107 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 5
  store i8* (%struct.iterator_t*)* @linear_regression_combiner, i8* (%struct.iterator_t*)** %107, align 8
  %108 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 6
  store i32 (i8*, i32, %struct.map_args_t*)* null, i32 (i8*, i32, %struct.map_args_t*)** %108, align 8
  %109 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 8
  store i32 (i8*, i8*)* @intkeycmp, i32 (i8*, i8*)** %109, align 8
  %110 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 2
  store i32 2, i32* %110, align 8
  %111 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 10
  store i32 (i32, i8*, i32)* @linear_regression_partition, i32 (i32, i8*, i32)** %111, align 8
  %112 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 9
  store %struct.final_data_t* %6, %struct.final_data_t** %112, align 8
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = srem i64 %116, %119
  %121 = sub nsw i64 %114, %120
  %122 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 1
  store i64 %121, i64* %122, align 8
  %123 = call i8* @GETENV(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %124 = call i32 @atoi(i8* %123) #8
  %125 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 12
  store i32 %124, i32* %125, align 4
  %126 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %127 = call i32 @atoi(i8* %126) #8
  %128 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 13
  store i32 %127, i32* %128, align 8
  %129 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %130 = call i32 @atoi(i8* %129) #8
  %131 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 14
  store i32 %130, i32* %131, align 4
  %132 = call i8* @GETENV(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %133 = call i32 @atoi(i8* %132) #8
  %134 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 15
  store i32 %133, i32* %134, align 8
  %135 = call i8* @GETENV(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0))
  %136 = call i32 @atoi(i8* %135) #8
  %137 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 16
  store i32 %136, i32* %137, align 4
  %138 = call i8* @GETENV(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  %139 = call double @atof(i8* %138) #8
  %140 = fptrunc double %139 to float
  %141 = getelementptr inbounds %struct.map_reduce_args_t, %struct.map_reduce_args_t* %16, i32 0, i32 18
  store float %140, float* %141, align 4
  %142 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %143 = call i32 @gettimeofday(%struct.timeval* %12, %struct.timezone* null) #7
  call void @get_time(%struct.timeval* %15)
  call void @get_time(%struct.timeval* %14)
  %144 = call i32 @map_reduce(%struct.map_reduce_args_t* %16)
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %101
  call void @perror(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  %147 = call i32 @map_reduce(%struct.map_reduce_args_t* %16)
  %148 = icmp slt i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %153

152:                                              ; preds = %146
  call void @__assert_fail(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 238, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

153:                                              ; preds = %151
  br label %154

154:                                              ; preds = %153, %101
  call void @get_time(%struct.timeval* %15)
  call void @get_time(%struct.timeval* %14)
  %155 = call i32 (...) @map_reduce_finalize()
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  call void @perror(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i64 0, i64 0))
  %158 = call i32 (...) @map_reduce_finalize()
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %162

161:                                              ; preds = %157
  call void @__assert_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162, %154
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  store i64 0, i64* %27, align 8
  store i32 0, i32* %11, align 4
  br label %164

164:                                              ; preds = %214, %163
  %165 = load i32, i32* %11, align 4
  %166 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %6, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %165, %167
  br i1 %168, label %169, label %217

169:                                              ; preds = %164
  %170 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %6, i32 0, i32 1
  %171 = load %struct.keyval_t*, %struct.keyval_t** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %171, i64 %173
  store %struct.keyval_t* %174, %struct.keyval_t** %28, align 8
  %175 = load %struct.keyval_t*, %struct.keyval_t** %28, align 8
  %176 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = ptrtoint i8* %177 to i64
  switch i64 %178, label %209 [
    i64 0, label %179
    i64 1, label %185
    i64 2, label %191
    i64 3, label %197
    i64 4, label %203
  ]

179:                                              ; preds = %169
  %180 = load %struct.keyval_t*, %struct.keyval_t** %28, align 8
  %181 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = bitcast i8* %182 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %23, align 8
  br label %210

185:                                              ; preds = %169
  %186 = load %struct.keyval_t*, %struct.keyval_t** %28, align 8
  %187 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = bitcast i8* %188 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %24, align 8
  br label %210

191:                                              ; preds = %169
  %192 = load %struct.keyval_t*, %struct.keyval_t** %28, align 8
  %193 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = bitcast i8* %194 to i64*
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %25, align 8
  br label %210

197:                                              ; preds = %169
  %198 = load %struct.keyval_t*, %struct.keyval_t** %28, align 8
  %199 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = bitcast i8* %200 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %26, align 8
  br label %210

203:                                              ; preds = %169
  %204 = load %struct.keyval_t*, %struct.keyval_t** %28, align 8
  %205 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %204, i32 0, i32 1
  %206 = load i8*, i8** %205, align 8
  %207 = bitcast i8* %206 to i64*
  %208 = load i64, i64* %207, align 8
  store i64 %208, i64* %27, align 8
  br label %210

209:                                              ; preds = %169
  call void @perror(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  call void @__assert_fail(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 275, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

210:                                              ; preds = %203, %197, %191, %185, %179
  %211 = load %struct.keyval_t*, %struct.keyval_t** %28, align 8
  %212 = getelementptr inbounds %struct.keyval_t, %struct.keyval_t* %211, i32 0, i32 1
  %213 = load i8*, i8** %212, align 8
  call void @free(i8* %213) #7
  br label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %164

217:                                              ; preds = %164
  %218 = load i64, i64* %23, align 8
  %219 = sitofp i64 %218 to double
  store double %219, double* %29, align 8
  %220 = load i64, i64* %24, align 8
  %221 = sitofp i64 %220 to double
  store double %221, double* %30, align 8
  %222 = load i64, i64* %25, align 8
  %223 = sitofp i64 %222 to double
  store double %223, double* %31, align 8
  %224 = load i64, i64* %26, align 8
  %225 = sitofp i64 %224 to double
  store double %225, double* %32, align 8
  %226 = load i64, i64* %27, align 8
  %227 = sitofp i64 %226 to double
  store double %227, double* %33, align 8
  %228 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %229 = load i64, i64* %228, align 8
  %230 = udiv i64 %229, 2
  store i64 %230, i64* %17, align 8
  %231 = load i64, i64* %17, align 8
  %232 = sitofp i64 %231 to double
  %233 = load double, double* %33, align 8
  %234 = fmul double %232, %233
  %235 = load double, double* %29, align 8
  %236 = load double, double* %30, align 8
  %237 = fmul double %235, %236
  %238 = fsub double %234, %237
  %239 = load i64, i64* %17, align 8
  %240 = sitofp i64 %239 to double
  %241 = load double, double* %31, align 8
  %242 = fmul double %240, %241
  %243 = load double, double* %29, align 8
  %244 = load double, double* %29, align 8
  %245 = fmul double %243, %244
  %246 = fsub double %242, %245
  %247 = fdiv double %238, %246
  store double %247, double* %19, align 8
  %248 = load i64, i64* %24, align 8
  %249 = sitofp i64 %248 to double
  %250 = load double, double* %19, align 8
  %251 = load i64, i64* %23, align 8
  %252 = sitofp i64 %251 to double
  %253 = fmul double %250, %252
  %254 = fsub double %249, %253
  %255 = load i64, i64* %17, align 8
  %256 = sitofp i64 %255 to double
  %257 = fdiv double %254, %256
  store double %257, double* %18, align 8
  %258 = load i64, i64* %23, align 8
  %259 = sitofp i64 %258 to double
  %260 = load i64, i64* %17, align 8
  %261 = sitofp i64 %260 to double
  %262 = fdiv double %259, %261
  store double %262, double* %20, align 8
  %263 = load i64, i64* %24, align 8
  %264 = sitofp i64 %263 to double
  %265 = load i64, i64* %17, align 8
  %266 = sitofp i64 %265 to double
  %267 = fdiv double %264, %266
  store double %267, double* %21, align 8
  %268 = load i64, i64* %17, align 8
  %269 = sitofp i64 %268 to double
  %270 = load double, double* %33, align 8
  %271 = fmul double %269, %270
  %272 = load double, double* %29, align 8
  %273 = load double, double* %30, align 8
  %274 = fmul double %272, %273
  %275 = fsub double %271, %274
  %276 = load i64, i64* %17, align 8
  %277 = sitofp i64 %276 to double
  %278 = load double, double* %33, align 8
  %279 = fmul double %277, %278
  %280 = load double, double* %29, align 8
  %281 = load double, double* %30, align 8
  %282 = fmul double %280, %281
  %283 = fsub double %279, %282
  %284 = fmul double %275, %283
  %285 = load i64, i64* %17, align 8
  %286 = sitofp i64 %285 to double
  %287 = load double, double* %31, align 8
  %288 = fmul double %286, %287
  %289 = load double, double* %29, align 8
  %290 = load double, double* %29, align 8
  %291 = fmul double %289, %290
  %292 = fsub double %288, %291
  %293 = load i64, i64* %17, align 8
  %294 = sitofp i64 %293 to double
  %295 = load double, double* %32, align 8
  %296 = fmul double %294, %295
  %297 = load double, double* %30, align 8
  %298 = load double, double* %30, align 8
  %299 = fmul double %297, %298
  %300 = fsub double %296, %299
  %301 = fmul double %292, %300
  %302 = fdiv double %284, %301
  store double %302, double* %22, align 8
  %303 = call i32 @gettimeofday(%struct.timeval* %13, %struct.timezone* null) #7
  %304 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = sub nsw i64 %305, %307
  %309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i64 %308)
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0))
  %311 = load double, double* %18, align 8
  %312 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), double %311)
  %313 = load double, double* %19, align 8
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), double %313)
  %315 = load double, double* %20, align 8
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), double %315)
  %317 = load double, double* %21, align 8
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0), double %317)
  %319 = load double, double* %22, align 8
  %320 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0), double %319)
  %321 = load i64, i64* %23, align 8
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i64 %321)
  %323 = load i64, i64* %24, align 8
  %324 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i64 %323)
  %325 = load i64, i64* %25, align 8
  %326 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i64 %325)
  %327 = load i64, i64* %26, align 8
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i64 %327)
  %329 = load i64, i64* %27, align 8
  %330 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i64 %329)
  %331 = getelementptr inbounds %struct.final_data_t, %struct.final_data_t* %6, i32 0, i32 1
  %332 = load %struct.keyval_t*, %struct.keyval_t** %331, align 8
  %333 = bitcast %struct.keyval_t* %332 to i8*
  call void @free(i8* %333) #7
  %334 = load i8*, i8** %8, align 8
  %335 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %336, 1
  %338 = call i32 @munmap(i8* %334, i64 %337) #7
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %352

340:                                              ; preds = %217
  call void @perror(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.34, i64 0, i64 0))
  %341 = load i8*, i8** %8, align 8
  %342 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 8
  %343 = load i64, i64* %342, align 8
  %344 = add nsw i64 %343, 1
  %345 = call i32 @munmap(i8* %341, i64 %344) #7
  %346 = icmp slt i32 %345, 0
  %347 = zext i1 %346 to i32
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %340
  br label %351

350:                                              ; preds = %340
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

351:                                              ; preds = %349
  br label %352

352:                                              ; preds = %351, %217
  %353 = load i32, i32* %7, align 4
  %354 = call i32 @close(i32 %353)
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %352
  call void @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i64 0, i64 0))
  %357 = load i32, i32* %7, align 4
  %358 = call i32 @close(i32 %357)
  %359 = icmp slt i32 %358, 0
  %360 = zext i1 %359 to i32
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %356
  br label %364

363:                                              ; preds = %356
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 316, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6
  unreachable

364:                                              ; preds = %362
  br label %365

365:                                              ; preds = %364, %352
  call void @get_time(%struct.timeval* %15)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_time(%struct.timeval*) #0 {
  %2 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
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
  %2 = alloca %struct.map_args_t*, align 8
  %3 = alloca %struct.POINT_T*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.map_args_t* %0, %struct.map_args_t** %2, align 8
  %17 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %18 = icmp ne %struct.map_args_t* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %21

20:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.linear_regression_map, i64 0, i64 0)) #6
  unreachable

21:                                               ; preds = %19
  %22 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %23 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.POINT_T*
  store %struct.POINT_T* %25, %struct.POINT_T** %3, align 8
  %26 = load %struct.POINT_T*, %struct.POINT_T** %3, align 8
  %27 = icmp ne %struct.POINT_T* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %30

29:                                               ; preds = %21
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 81, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.linear_regression_map, i64 0, i64 0)) #6
  unreachable

30:                                               ; preds = %28
  %31 = call i8* @CALLOC(i64 8, i64 1)
  %32 = bitcast i8* %31 to i64*
  store i64* %32, i64** %5, align 8
  %33 = call i8* @CALLOC(i64 8, i64 1)
  %34 = bitcast i8* %33 to i64*
  store i64* %34, i64** %6, align 8
  %35 = call i8* @CALLOC(i64 8, i64 1)
  %36 = bitcast i8* %35 to i64*
  store i64* %36, i64** %7, align 8
  %37 = call i8* @CALLOC(i64 8, i64 1)
  %38 = bitcast i8* %37 to i64*
  store i64* %38, i64** %8, align 8
  %39 = call i8* @CALLOC(i64 8, i64 1)
  %40 = bitcast i8* %39 to i64*
  store i64* %40, i64** %9, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %84, %30
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.map_args_t*, %struct.map_args_t** %2, align 8
  %45 = getelementptr inbounds %struct.map_args_t, %struct.map_args_t* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %43, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %41
  %49 = load %struct.POINT_T*, %struct.POINT_T** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %49, i64 %51
  %53 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i64
  store i64 %55, i64* %10, align 8
  %56 = load %struct.POINT_T*, %struct.POINT_T** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %56, i64 %58
  %60 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %59, i32 0, i32 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i64
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i64, i64* %12, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %12, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = mul nsw i64 %66, %67
  %69 = load i64, i64* %13, align 8
  %70 = add nsw i64 %69, %68
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* %14, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = mul nsw i64 %74, %75
  %77 = load i64, i64* %15, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = mul nsw i64 %79, %80
  %82 = load i64, i64* %16, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %16, align 8
  br label %84

84:                                               ; preds = %48
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %41

87:                                               ; preds = %41
  %88 = load i64, i64* %12, align 8
  %89 = load i64*, i64** %5, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* %13, align 8
  %91 = load i64*, i64** %6, align 8
  store i64 %90, i64* %91, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i64*, i64** %7, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i64, i64* %15, align 8
  %95 = load i64*, i64** %8, align 8
  store i64 %94, i64* %95, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i64*, i64** %9, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64*, i64** %5, align 8
  %99 = bitcast i64* %98 to i8*
  call void @emit_intermediate(i8* null, i8* %99, i32 8)
  %100 = load i64*, i64** %6, align 8
  %101 = bitcast i64* %100 to i8*
  call void @emit_intermediate(i8* inttoptr (i64 2 to i8*), i8* %101, i32 8)
  %102 = load i64*, i64** %7, align 8
  %103 = bitcast i64* %102 to i8*
  call void @emit_intermediate(i8* inttoptr (i64 1 to i8*), i8* %103, i32 8)
  %104 = load i64*, i64** %8, align 8
  %105 = bitcast i64* %104 to i8*
  call void @emit_intermediate(i8* inttoptr (i64 3 to i8*), i8* %105, i32 8)
  %106 = load i64*, i64** %9, align 8
  %107 = bitcast i64* %106 to i8*
  call void @emit_intermediate(i8* inttoptr (i64 4 to i8*), i8* %107, i32 8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linear_regression_reduce(i8*, %struct.iterator_t*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.iterator_t*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.iterator_t* %1, %struct.iterator_t** %4, align 8
  %8 = call i8* @CALLOC(i64 8, i64 1)
  %9 = bitcast i8* %8 to i64*
  store i64* %9, i64** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.iterator_t*, %struct.iterator_t** %4, align 8
  %11 = icmp ne %struct.iterator_t* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %14

13:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 132, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__PRETTY_FUNCTION__.linear_regression_reduce, i64 0, i64 0)) #6
  unreachable

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %20, %14
  %16 = load %struct.iterator_t*, %struct.iterator_t** %4, align 8
  %17 = bitcast i64** %7 to i8**
  %18 = call i32 @iter_next(%struct.iterator_t* %16, i8** %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = bitcast i64* %25 to i8*
  call void @free(i8* %26) #7
  br label %15

27:                                               ; preds = %15
  %28 = load i64, i64* %6, align 8
  %29 = load i64*, i64** %5, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i64*, i64** %5, align 8
  %32 = bitcast i64* %31 to i8*
  call void @emit(i8* %30, i8* %32)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @linear_regression_combiner(%struct.iterator_t*) #0 {
  %2 = alloca %struct.iterator_t*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.iterator_t* %0, %struct.iterator_t** %2, align 8
  %6 = call i8* @CALLOC(i64 8, i64 1)
  %7 = bitcast i8* %6 to i64*
  store i64* %7, i64** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load %struct.iterator_t*, %struct.iterator_t** %2, align 8
  %9 = icmp ne %struct.iterator_t* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %12

11:                                               ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.linear_regression_combiner, i64 0, i64 0)) #6
  unreachable

12:                                               ; preds = %10
  br label %13

13:                                               ; preds = %18, %12
  %14 = load %struct.iterator_t*, %struct.iterator_t** %2, align 8
  %15 = bitcast i64** %5 to i8**
  %16 = call i32 @iter_next(%struct.iterator_t* %14, i8** %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add nsw i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = bitcast i64* %23 to i8*
  call void @free(i8* %24) #7
  br label %13

25:                                               ; preds = %13
  %26 = load i64, i64* %4, align 8
  %27 = load i64*, i64** %3, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = bitcast i64* %28 to i8*
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intkeycmp(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %22

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %22

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linear_regression_partition(i32, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = bitcast i8** %5 to i8*
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @default_partition(i32 %7, i8* %8, i32 %9)
  ret i32 %10
}

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @GETENV(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i8* @getenv(i8* %5) #7
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %10, %9
  %13 = load i8*, i8** %2, align 8
  ret i8* %13
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
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call noalias i8* @calloc(i64 %6, i64 %7) #7
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %13

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0), i32 59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.CALLOC, i64 0, i64 0)) #6
  unreachable

13:                                               ; preds = %11
  %14 = load i8*, i8** %5, align 8
  ret i8* %14
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
