; ModuleID = 'linear_regression-seq.c'
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.POINT_T*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %2
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %35)
  call void @exit(i32 1) #4
  unreachable

37:                                               ; preds = %2
  %38 = load i8**, i8*** %5, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %8, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 (i8*, i32, ...) @open(i8* %42, i32 0)
  store i32 %43, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  call void @perror(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 (i8*, i32, ...) @open(i8* %46, i32 0)
  store i32 %47, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %53

52:                                               ; preds = %45
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @fstat(i32 %55, %struct.stat* %9) #5
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  call void @perror(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @fstat(i32 %59, %struct.stat* %9) #5
  %61 = icmp slt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %66

65:                                               ; preds = %58
  call void @__assert_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  %71 = load i32, i32* %6, align 4
  %72 = call i8* @mmap(i8* null, i64 %70, i32 3, i32 2, i32 %71, i64 0) #5
  store i8* %72, i8** %7, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %67
  call void @perror(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.7, i64 0, i64 0))
  %75 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  %78 = load i32, i32* %6, align 4
  %79 = call i8* @mmap(i8* null, i64 %77, i32 3, i32 2, i32 %78, i64 0) #5
  store i8* %79, i8** %7, align 8
  %80 = icmp eq i8* %79, null
  %81 = zext i1 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %85

84:                                               ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i8*, i8** %7, align 8
  %88 = bitcast i8* %87 to %struct.POINT_T*
  store %struct.POINT_T* %88, %struct.POINT_T** %11, align 8
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = udiv i64 %90, 2
  store i64 %91, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %10, align 8
  br label %92

92:                                               ; preds = %161, %86
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* %12, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %164

96:                                               ; preds = %92
  %97 = load %struct.POINT_T*, %struct.POINT_T** %11, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %97, i64 %98
  %100 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %99, i32 0, i32 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i64
  %103 = load i64, i64* %13, align 8
  %104 = add nsw i64 %103, %102
  store i64 %104, i64* %13, align 8
  %105 = load %struct.POINT_T*, %struct.POINT_T** %11, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %105, i64 %106
  %108 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %107, i32 0, i32 0
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load %struct.POINT_T*, %struct.POINT_T** %11, align 8
  %112 = load i64, i64* %10, align 8
  %113 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %111, i64 %112
  %114 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %113, i32 0, i32 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = mul nsw i32 %110, %116
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %15, align 8
  %120 = add nsw i64 %119, %118
  store i64 %120, i64* %15, align 8
  %121 = load %struct.POINT_T*, %struct.POINT_T** %11, align 8
  %122 = load i64, i64* %10, align 8
  %123 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %121, i64 %122
  %124 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %123, i32 0, i32 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i64
  %127 = load i64, i64* %14, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %14, align 8
  %129 = load %struct.POINT_T*, %struct.POINT_T** %11, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %129, i64 %130
  %132 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %131, i32 0, i32 1
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = load %struct.POINT_T*, %struct.POINT_T** %11, align 8
  %136 = load i64, i64* %10, align 8
  %137 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %135, i64 %136
  %138 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %137, i32 0, i32 1
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = mul nsw i32 %134, %140
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %16, align 8
  %144 = add nsw i64 %143, %142
  store i64 %144, i64* %16, align 8
  %145 = load %struct.POINT_T*, %struct.POINT_T** %11, align 8
  %146 = load i64, i64* %10, align 8
  %147 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %145, i64 %146
  %148 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %147, i32 0, i32 0
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = load %struct.POINT_T*, %struct.POINT_T** %11, align 8
  %152 = load i64, i64* %10, align 8
  %153 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %151, i64 %152
  %154 = getelementptr inbounds %struct.POINT_T, %struct.POINT_T* %153, i32 0, i32 1
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = mul nsw i32 %150, %156
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %17, align 8
  %160 = add nsw i64 %159, %158
  store i64 %160, i64* %17, align 8
  br label %161

161:                                              ; preds = %96
  %162 = load i64, i64* %10, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* %10, align 8
  br label %92

164:                                              ; preds = %92
  %165 = load i64, i64* %13, align 8
  %166 = sitofp i64 %165 to double
  store double %166, double* %23, align 8
  %167 = load i64, i64* %14, align 8
  %168 = sitofp i64 %167 to double
  store double %168, double* %24, align 8
  %169 = load i64, i64* %15, align 8
  %170 = sitofp i64 %169 to double
  store double %170, double* %25, align 8
  %171 = load i64, i64* %16, align 8
  %172 = sitofp i64 %171 to double
  store double %172, double* %26, align 8
  %173 = load i64, i64* %17, align 8
  %174 = sitofp i64 %173 to double
  store double %174, double* %27, align 8
  %175 = load i64, i64* %12, align 8
  %176 = sitofp i64 %175 to double
  %177 = load double, double* %27, align 8
  %178 = fmul double %176, %177
  %179 = load double, double* %23, align 8
  %180 = load double, double* %24, align 8
  %181 = fmul double %179, %180
  %182 = fsub double %178, %181
  %183 = load i64, i64* %12, align 8
  %184 = sitofp i64 %183 to double
  %185 = load double, double* %25, align 8
  %186 = fmul double %184, %185
  %187 = load double, double* %23, align 8
  %188 = load double, double* %23, align 8
  %189 = fmul double %187, %188
  %190 = fsub double %186, %189
  %191 = fdiv double %182, %190
  store double %191, double* %19, align 8
  %192 = load i64, i64* %14, align 8
  %193 = sitofp i64 %192 to double
  %194 = load double, double* %19, align 8
  %195 = load i64, i64* %13, align 8
  %196 = sitofp i64 %195 to double
  %197 = fmul double %194, %196
  %198 = fsub double %193, %197
  %199 = load i64, i64* %12, align 8
  %200 = sitofp i64 %199 to double
  %201 = fdiv double %198, %200
  store double %201, double* %18, align 8
  %202 = load i64, i64* %13, align 8
  %203 = sitofp i64 %202 to double
  %204 = load i64, i64* %12, align 8
  %205 = sitofp i64 %204 to double
  %206 = fdiv double %203, %205
  store double %206, double* %20, align 8
  %207 = load i64, i64* %14, align 8
  %208 = sitofp i64 %207 to double
  %209 = load i64, i64* %12, align 8
  %210 = sitofp i64 %209 to double
  %211 = fdiv double %208, %210
  store double %211, double* %21, align 8
  %212 = load i64, i64* %12, align 8
  %213 = sitofp i64 %212 to double
  %214 = load double, double* %27, align 8
  %215 = fmul double %213, %214
  %216 = load double, double* %23, align 8
  %217 = load double, double* %24, align 8
  %218 = fmul double %216, %217
  %219 = fsub double %215, %218
  %220 = load i64, i64* %12, align 8
  %221 = sitofp i64 %220 to double
  %222 = load double, double* %27, align 8
  %223 = fmul double %221, %222
  %224 = load double, double* %23, align 8
  %225 = load double, double* %24, align 8
  %226 = fmul double %224, %225
  %227 = fsub double %223, %226
  %228 = fmul double %219, %227
  %229 = load i64, i64* %12, align 8
  %230 = sitofp i64 %229 to double
  %231 = load double, double* %25, align 8
  %232 = fmul double %230, %231
  %233 = load double, double* %23, align 8
  %234 = load double, double* %23, align 8
  %235 = fmul double %233, %234
  %236 = fsub double %232, %235
  %237 = load i64, i64* %12, align 8
  %238 = sitofp i64 %237 to double
  %239 = load double, double* %26, align 8
  %240 = fmul double %238, %239
  %241 = load double, double* %24, align 8
  %242 = load double, double* %24, align 8
  %243 = fmul double %241, %242
  %244 = fsub double %240, %243
  %245 = fmul double %236, %244
  %246 = fdiv double %228, %245
  store double %246, double* %22, align 8
  %247 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %248 = load double, double* %18, align 8
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), double %248)
  %250 = load double, double* %19, align 8
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), double %250)
  %252 = load double, double* %20, align 8
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), double %252)
  %254 = load double, double* %21, align 8
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), double %254)
  %256 = load double, double* %22, align 8
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), double %256)
  %258 = load i64, i64* %13, align 8
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i64 %258)
  %260 = load i64, i64* %14, align 8
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i64 %260)
  %262 = load i64, i64* %15, align 8
  %263 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i64 %262)
  %264 = load i64, i64* %16, align 8
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i64 %264)
  %266 = load i64, i64* %17, align 8
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i64 %266)
  %268 = load i8*, i8** %7, align 8
  %269 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %270 = load i64, i64* %269, align 8
  %271 = add nsw i64 %270, 1
  %272 = call i32 @munmap(i8* %268, i64 %271) #5
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %164
  call void @perror(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.20, i64 0, i64 0))
  %275 = load i8*, i8** %7, align 8
  %276 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 8
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %277, 1
  %279 = call i32 @munmap(i8* %275, i64 %278) #5
  %280 = icmp slt i32 %279, 0
  %281 = zext i1 %280 to i32
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %274
  br label %285

284:                                              ; preds = %274
  call void @__assert_fail(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

285:                                              ; preds = %283
  br label %286

286:                                              ; preds = %285, %164
  %287 = load i32, i32* %6, align 4
  %288 = call i32 @close(i32 %287)
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %299

290:                                              ; preds = %286
  call void @perror(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0))
  %291 = load i32, i32* %6, align 4
  %292 = call i32 @close(i32 %291)
  %293 = icmp slt i32 %292, 0
  %294 = zext i1 %293 to i32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %290
  br label %298

297:                                              ; preds = %290
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #4
  unreachable

298:                                              ; preds = %296
  br label %299

299:                                              ; preds = %298, %286
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
