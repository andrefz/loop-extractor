; ModuleID = 'extr_union_vnops.c_unionfs_rename.bc'
source_filename = "extr_union_vnops.c_unionfs_rename.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.vnode = type { i64, i32, i32* }
%struct.thread = type { i32 }
%struct.vop_rename_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode*, %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32 }
%struct.unionfs_mount = type { i32 }
%struct.unionfs_node = type { %struct.vnode*, %struct.vnode* }

@.str = private unnamed_addr constant [23 x i8] c"unionfs_rename: enter\0A\00", align 1
@NULLVP = common dso_local global %struct.vnode* null, align 8, !dbg !0
@curthread = common dso_local global %struct.thread* null, align 8, !dbg !23
@unionfs_vnodeops = common dso_local global i32 0, align 4, !dbg !29
@ENODEV = common dso_local global i32 0, align 4, !dbg !11
@EXDEV = common dso_local global i32 0, align 4, !dbg !13
@LK_EXCLUSIVE = common dso_local global i32 0, align 4, !dbg !17
@LK_RELEASE = common dso_local global i32 0, align 4, !dbg !19
@DOWHITEOUT = common dso_local global i32 0, align 4, !dbg !6
@EINVAL = common dso_local global i32 0, align 4, !dbg !9
@LK_RETRY = common dso_local global i32 0, align 4, !dbg !21
@.str.1 = private unnamed_addr constant [28 x i8] c"unionfs_rename: leave (%d)\0A\00", align 1
@HASBUF = common dso_local global i32 0, align 4, !dbg !15
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rename_args*)* @unionfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind uwtable
define internal i32 @unionfs_rename(%struct.vop_rename_args*) #0 !dbg !44 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_rename_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.componentname*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca %struct.vnode*, align 8
  %17 = alloca %struct.vnode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.unionfs_mount*, align 8
  %20 = alloca %struct.unionfs_node*, align 8
  store %struct.vop_rename_args* %0, %struct.vop_rename_args** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.vop_rename_args** %3, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %4, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata %struct.vnode** %5, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata %struct.vnode** %6, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata %struct.componentname** %7, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata %struct.vnode** %8, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata %struct.vnode** %9, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata %struct.componentname** %10, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct.vnode** %11, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata %struct.vnode** %12, metadata !79, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.declare(metadata %struct.thread** %13, metadata !81, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata %struct.vnode** %14, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata %struct.vnode** %15, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata %struct.vnode** %16, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata %struct.vnode** %17, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %18, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata %struct.unionfs_mount** %19, metadata !93, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata %struct.unionfs_node** %20, metadata !99, metadata !DIExpression()), !dbg !105
  %21 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)), !dbg !106
  store i32 0, i32* %4, align 4, !dbg !107
  %22 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8, !dbg !108
  %23 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %22, i32 0, i32 5, !dbg !109
  %24 = load %struct.vnode*, %struct.vnode** %23, align 8, !dbg !109
  store %struct.vnode* %24, %struct.vnode** %5, align 8, !dbg !110
  %25 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8, !dbg !111
  %26 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %25, i32 0, i32 4, !dbg !112
  %27 = load %struct.vnode*, %struct.vnode** %26, align 8, !dbg !112
  store %struct.vnode* %27, %struct.vnode** %6, align 8, !dbg !113
  %28 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8, !dbg !114
  %29 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %28, i32 0, i32 3, !dbg !115
  %30 = load %struct.componentname*, %struct.componentname** %29, align 8, !dbg !115
  store %struct.componentname* %30, %struct.componentname** %7, align 8, !dbg !116
  %31 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8, !dbg !117
  %32 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %31, i32 0, i32 2, !dbg !118
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8, !dbg !118
  store %struct.vnode* %33, %struct.vnode** %8, align 8, !dbg !119
  %34 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8, !dbg !120
  %35 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %34, i32 0, i32 1, !dbg !121
  %36 = load %struct.vnode*, %struct.vnode** %35, align 8, !dbg !121
  store %struct.vnode* %36, %struct.vnode** %9, align 8, !dbg !122
  %37 = load %struct.vop_rename_args*, %struct.vop_rename_args** %3, align 8, !dbg !123
  %38 = getelementptr inbounds %struct.vop_rename_args, %struct.vop_rename_args* %37, i32 0, i32 0, !dbg !124
  %39 = load %struct.componentname*, %struct.componentname** %38, align 8, !dbg !124
  store %struct.componentname* %39, %struct.componentname** %10, align 8, !dbg !125
  %40 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !126
  store %struct.vnode* %40, %struct.vnode** %11, align 8, !dbg !127
  %41 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !128
  store %struct.vnode* %41, %struct.vnode** %12, align 8, !dbg !129
  %42 = load %struct.thread*, %struct.thread** @curthread, align 8, !dbg !130
  store %struct.thread* %42, %struct.thread** %13, align 8, !dbg !131
  %43 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !132
  store %struct.vnode* %43, %struct.vnode** %14, align 8, !dbg !133
  %44 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !134
  store %struct.vnode* %44, %struct.vnode** %15, align 8, !dbg !135
  %45 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !136
  store %struct.vnode* %45, %struct.vnode** %16, align 8, !dbg !137
  %46 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !138
  store %struct.vnode* %46, %struct.vnode** %17, align 8, !dbg !139
  store i32 0, i32* %18, align 4, !dbg !140
  %47 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !141
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 0, !dbg !143
  %49 = load i64, i64* %48, align 8, !dbg !143
  %50 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !144
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 0, !dbg !145
  %52 = load i64, i64* %51, align 8, !dbg !145
  %53 = icmp ne i64 %49, %52, !dbg !146
  br i1 %53, label %66, label %54, !dbg !147

54:                                               ; preds = %1
  %55 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !148
  %56 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !149
  %57 = icmp ne %struct.vnode* %55, %56, !dbg !150
  br i1 %57, label %58, label %76, !dbg !151

58:                                               ; preds = %54
  %59 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !152
  %60 = getelementptr inbounds %struct.vnode, %struct.vnode* %59, i32 0, i32 0, !dbg !153
  %61 = load i64, i64* %60, align 8, !dbg !153
  %62 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !154
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 0, !dbg !155
  %64 = load i64, i64* %63, align 8, !dbg !155
  %65 = icmp ne i64 %61, %64, !dbg !156
  br i1 %65, label %66, label %76, !dbg !157

66:                                               ; preds = %58, %1
  %67 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !158
  %68 = getelementptr inbounds %struct.vnode, %struct.vnode* %67, i32 0, i32 2, !dbg !161
  %69 = load i32*, i32** %68, align 8, !dbg !161
  %70 = icmp ne i32* %69, @unionfs_vnodeops, !dbg !162
  br i1 %70, label %71, label %73, !dbg !163

71:                                               ; preds = %66
  %72 = load i32, i32* @ENODEV, align 4, !dbg !164
  store i32 %72, i32* %4, align 4, !dbg !165
  br label %75, !dbg !166

73:                                               ; preds = %66
  %74 = load i32, i32* @EXDEV, align 4, !dbg !167
  store i32 %74, i32* %4, align 4, !dbg !168
  br label %75

75:                                               ; preds = %73, %71
  br label %398, !dbg !169

76:                                               ; preds = %58, %54
  %77 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !170
  %78 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !172
  %79 = icmp eq %struct.vnode* %77, %78, !dbg !173
  br i1 %79, label %80, label %81, !dbg !174

80:                                               ; preds = %76
  br label %398, !dbg !175

81:                                               ; preds = %76
  %82 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !176
  %83 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %82), !dbg !177
  %84 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !178
  %85 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %84), !dbg !179
  %86 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !180
  %87 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %86), !dbg !181
  %88 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !182
  %89 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !184
  %90 = icmp ne %struct.vnode* %88, %89, !dbg !185
  br i1 %90, label %91, label %94, !dbg !186

91:                                               ; preds = %81
  %92 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !187
  %93 = call i32 @KASSERT_UNIONFS_VNODE(%struct.vnode* %92), !dbg !188
  br label %94, !dbg !188

94:                                               ; preds = %91, %81
  %95 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !189
  %96 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %95), !dbg !190
  store %struct.unionfs_node* %96, %struct.unionfs_node** %20, align 8, !dbg !191
  %97 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !192
  %98 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %97, i32 0, i32 1, !dbg !194
  %99 = load %struct.vnode*, %struct.vnode** %98, align 8, !dbg !194
  %100 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !195
  %101 = icmp eq %struct.vnode* %99, %100, !dbg !196
  br i1 %101, label %102, label %104, !dbg !197

102:                                              ; preds = %94
  %103 = load i32, i32* @ENODEV, align 4, !dbg !198
  store i32 %103, i32* %4, align 4, !dbg !200
  br label %398, !dbg !201

104:                                              ; preds = %94
  %105 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !202
  %106 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %105, i32 0, i32 1, !dbg !203
  %107 = load %struct.vnode*, %struct.vnode** %106, align 8, !dbg !203
  store %struct.vnode* %107, %struct.vnode** %14, align 8, !dbg !204
  %108 = load %struct.vnode*, %struct.vnode** %14, align 8, !dbg !205
  %109 = call i32 @vref(%struct.vnode* %108), !dbg !206
  %110 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !207
  %111 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %110), !dbg !208
  store %struct.unionfs_node* %111, %struct.unionfs_node** %20, align 8, !dbg !209
  %112 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !210
  %113 = getelementptr inbounds %struct.vnode, %struct.vnode* %112, i32 0, i32 0, !dbg !211
  %114 = load i64, i64* %113, align 8, !dbg !211
  %115 = call %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(i64 %114), !dbg !212
  store %struct.unionfs_mount* %115, %struct.unionfs_mount** %19, align 8, !dbg !213
  %116 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !214
  %117 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %116, i32 0, i32 1, !dbg !216
  %118 = load %struct.vnode*, %struct.vnode** %117, align 8, !dbg !216
  %119 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !217
  %120 = icmp eq %struct.vnode* %118, %119, !dbg !218
  br i1 %120, label %121, label %168, !dbg !219

121:                                              ; preds = %104
  %122 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !220
  %123 = getelementptr inbounds %struct.vnode, %struct.vnode* %122, i32 0, i32 1, !dbg !222
  %124 = load i32, i32* %123, align 8, !dbg !222
  switch i32 %124, label %165 [
    i32 128, label %125
    i32 129, label %145
  ], !dbg !223

125:                                              ; preds = %121
  %126 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !224
  %127 = load i32, i32* @LK_EXCLUSIVE, align 4, !dbg !227
  %128 = call i32 @vn_lock(%struct.vnode* %126, i32 %127), !dbg !228
  store i32 %128, i32* %4, align 4, !dbg !229
  %129 = icmp ne i32 %128, 0, !dbg !230
  br i1 %129, label %130, label %131, !dbg !231

130:                                              ; preds = %125
  br label %398, !dbg !232

131:                                              ; preds = %125
  %132 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !233
  %133 = load %struct.componentname*, %struct.componentname** %7, align 8, !dbg !234
  %134 = getelementptr inbounds %struct.componentname, %struct.componentname* %133, i32 0, i32 1, !dbg !235
  %135 = load i32, i32* %134, align 4, !dbg !235
  %136 = load %struct.thread*, %struct.thread** %13, align 8, !dbg !236
  %137 = call i32 @unionfs_copyfile(%struct.unionfs_node* %132, i32 1, i32 %135, %struct.thread* %136), !dbg !237
  store i32 %137, i32* %4, align 4, !dbg !238
  %138 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !239
  %139 = load i32, i32* @LK_RELEASE, align 4, !dbg !240
  %140 = call i32 @VOP_UNLOCK(%struct.vnode* %138, i32 %139), !dbg !241
  %141 = load i32, i32* %4, align 4, !dbg !242
  %142 = icmp ne i32 %141, 0, !dbg !244
  br i1 %142, label %143, label %144, !dbg !245

143:                                              ; preds = %131
  br label %398, !dbg !246

144:                                              ; preds = %131
  br label %167, !dbg !247

145:                                              ; preds = %121
  %146 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !248
  %147 = load i32, i32* @LK_EXCLUSIVE, align 4, !dbg !250
  %148 = call i32 @vn_lock(%struct.vnode* %146, i32 %147), !dbg !251
  store i32 %148, i32* %4, align 4, !dbg !252
  %149 = icmp ne i32 %148, 0, !dbg !253
  br i1 %149, label %150, label %151, !dbg !254

150:                                              ; preds = %145
  br label %398, !dbg !255

151:                                              ; preds = %145
  %152 = load %struct.unionfs_mount*, %struct.unionfs_mount** %19, align 8, !dbg !256
  %153 = load %struct.vnode*, %struct.vnode** %14, align 8, !dbg !257
  %154 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !258
  %155 = load %struct.componentname*, %struct.componentname** %7, align 8, !dbg !259
  %156 = load %struct.thread*, %struct.thread** %13, align 8, !dbg !260
  %157 = call i32 @unionfs_mkshadowdir(%struct.unionfs_mount* %152, %struct.vnode* %153, %struct.unionfs_node* %154, %struct.componentname* %155, %struct.thread* %156), !dbg !261
  store i32 %157, i32* %4, align 4, !dbg !262
  %158 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !263
  %159 = load i32, i32* @LK_RELEASE, align 4, !dbg !264
  %160 = call i32 @VOP_UNLOCK(%struct.vnode* %158, i32 %159), !dbg !265
  %161 = load i32, i32* %4, align 4, !dbg !266
  %162 = icmp ne i32 %161, 0, !dbg !268
  br i1 %162, label %163, label %164, !dbg !269

163:                                              ; preds = %151
  br label %398, !dbg !270

164:                                              ; preds = %151
  br label %167, !dbg !271

165:                                              ; preds = %121
  %166 = load i32, i32* @ENODEV, align 4, !dbg !272
  store i32 %166, i32* %4, align 4, !dbg !273
  br label %398, !dbg !274

167:                                              ; preds = %164, %144
  store i32 1, i32* %18, align 4, !dbg !275
  br label %168, !dbg !276

168:                                              ; preds = %167, %104
  %169 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !277
  %170 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %169, i32 0, i32 0, !dbg !279
  %171 = load %struct.vnode*, %struct.vnode** %170, align 8, !dbg !279
  %172 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !280
  %173 = icmp ne %struct.vnode* %171, %172, !dbg !281
  br i1 %173, label %174, label %180, !dbg !282

174:                                              ; preds = %168
  %175 = load i32, i32* @DOWHITEOUT, align 4, !dbg !283
  %176 = load %struct.componentname*, %struct.componentname** %7, align 8, !dbg !284
  %177 = getelementptr inbounds %struct.componentname, %struct.componentname* %176, i32 0, i32 0, !dbg !285
  %178 = load i32, i32* %177, align 4, !dbg !286
  %179 = or i32 %178, %175, !dbg !286
  store i32 %179, i32* %177, align 4, !dbg !286
  br label %180, !dbg !284

180:                                              ; preds = %174, %168
  %181 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !287
  %182 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %181, i32 0, i32 1, !dbg !288
  %183 = load %struct.vnode*, %struct.vnode** %182, align 8, !dbg !288
  store %struct.vnode* %183, %struct.vnode** %15, align 8, !dbg !289
  %184 = load %struct.vnode*, %struct.vnode** %15, align 8, !dbg !290
  %185 = call i32 @vref(%struct.vnode* %184), !dbg !291
  %186 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !292
  %187 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %186), !dbg !293
  store %struct.unionfs_node* %187, %struct.unionfs_node** %20, align 8, !dbg !294
  %188 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !295
  %189 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %188, i32 0, i32 1, !dbg !297
  %190 = load %struct.vnode*, %struct.vnode** %189, align 8, !dbg !297
  %191 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !298
  %192 = icmp eq %struct.vnode* %190, %191, !dbg !299
  br i1 %192, label %193, label %195, !dbg !300

193:                                              ; preds = %180
  %194 = load i32, i32* @ENODEV, align 4, !dbg !301
  store i32 %194, i32* %4, align 4, !dbg !303
  br label %398, !dbg !304

195:                                              ; preds = %180
  %196 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !305
  %197 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %196, i32 0, i32 1, !dbg !306
  %198 = load %struct.vnode*, %struct.vnode** %197, align 8, !dbg !306
  store %struct.vnode* %198, %struct.vnode** %16, align 8, !dbg !307
  %199 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !308
  %200 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %199, i32 0, i32 0, !dbg !309
  %201 = load %struct.vnode*, %struct.vnode** %200, align 8, !dbg !309
  store %struct.vnode* %201, %struct.vnode** %11, align 8, !dbg !310
  %202 = load %struct.vnode*, %struct.vnode** %16, align 8, !dbg !311
  %203 = call i32 @vref(%struct.vnode* %202), !dbg !312
  %204 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !313
  %205 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !315
  %206 = icmp eq %struct.vnode* %204, %205, !dbg !316
  br i1 %206, label %207, label %211, !dbg !317

207:                                              ; preds = %195
  %208 = load %struct.vnode*, %struct.vnode** %16, align 8, !dbg !318
  store %struct.vnode* %208, %struct.vnode** %17, align 8, !dbg !320
  %209 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !321
  %210 = call i32 @vref(%struct.vnode* %209), !dbg !322
  br label %243, !dbg !323

211:                                              ; preds = %195
  %212 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !324
  %213 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !326
  %214 = icmp ne %struct.vnode* %212, %213, !dbg !327
  br i1 %214, label %215, label %242, !dbg !328

215:                                              ; preds = %211
  %216 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !329
  %217 = call %struct.unionfs_node* @VTOUNIONFS(%struct.vnode* %216), !dbg !331
  store %struct.unionfs_node* %217, %struct.unionfs_node** %20, align 8, !dbg !332
  %218 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !333
  %219 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %218, i32 0, i32 1, !dbg !335
  %220 = load %struct.vnode*, %struct.vnode** %219, align 8, !dbg !335
  %221 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !336
  %222 = icmp eq %struct.vnode* %220, %221, !dbg !337
  br i1 %222, label %223, label %225, !dbg !338

223:                                              ; preds = %215
  %224 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !339
  store %struct.vnode* %224, %struct.vnode** %17, align 8, !dbg !340
  br label %241, !dbg !341

225:                                              ; preds = %215
  %226 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !342
  %227 = getelementptr inbounds %struct.vnode, %struct.vnode* %226, i32 0, i32 1, !dbg !345
  %228 = load i32, i32* %227, align 8, !dbg !345
  %229 = icmp eq i32 %228, 129, !dbg !346
  br i1 %229, label %230, label %232, !dbg !347

230:                                              ; preds = %225
  %231 = load i32, i32* @EINVAL, align 4, !dbg !348
  store i32 %231, i32* %4, align 4, !dbg !350
  br label %398, !dbg !351

232:                                              ; preds = %225
  %233 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !352
  %234 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %233, i32 0, i32 1, !dbg !353
  %235 = load %struct.vnode*, %struct.vnode** %234, align 8, !dbg !353
  store %struct.vnode* %235, %struct.vnode** %17, align 8, !dbg !354
  %236 = load %struct.unionfs_node*, %struct.unionfs_node** %20, align 8, !dbg !355
  %237 = getelementptr inbounds %struct.unionfs_node, %struct.unionfs_node* %236, i32 0, i32 0, !dbg !356
  %238 = load %struct.vnode*, %struct.vnode** %237, align 8, !dbg !356
  store %struct.vnode* %238, %struct.vnode** %12, align 8, !dbg !357
  %239 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !358
  %240 = call i32 @vref(%struct.vnode* %239), !dbg !359
  br label %241

241:                                              ; preds = %232, %223
  br label %242, !dbg !360

242:                                              ; preds = %241, %211
  br label %243

243:                                              ; preds = %242, %207
  %244 = load %struct.vnode*, %struct.vnode** %15, align 8, !dbg !361
  %245 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !363
  %246 = icmp eq %struct.vnode* %244, %245, !dbg !364
  br i1 %246, label %247, label %248, !dbg !365

247:                                              ; preds = %243
  br label %398, !dbg !366

248:                                              ; preds = %243
  %249 = load i32, i32* %18, align 4, !dbg !367
  %250 = icmp ne i32 %249, 0, !dbg !369
  br i1 %250, label %251, label %303, !dbg !370

251:                                              ; preds = %248
  %252 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !371
  %253 = load i32, i32* @LK_EXCLUSIVE, align 4, !dbg !374
  %254 = call i32 @vn_lock(%struct.vnode* %252, i32 %253), !dbg !375
  store i32 %254, i32* %4, align 4, !dbg !376
  %255 = icmp ne i32 %254, 0, !dbg !377
  br i1 %255, label %256, label %257, !dbg !378

256:                                              ; preds = %251
  br label %398, !dbg !379

257:                                              ; preds = %251
  %258 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !380
  %259 = load %struct.componentname*, %struct.componentname** %7, align 8, !dbg !381
  %260 = load %struct.thread*, %struct.thread** %13, align 8, !dbg !382
  %261 = call i32 @unionfs_relookup_for_delete(%struct.vnode* %258, %struct.componentname* %259, %struct.thread* %260), !dbg !383
  store i32 %261, i32* %4, align 4, !dbg !384
  %262 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !385
  %263 = load i32, i32* @LK_RELEASE, align 4, !dbg !386
  %264 = call i32 @VOP_UNLOCK(%struct.vnode* %262, i32 %263), !dbg !387
  %265 = load i32, i32* %4, align 4, !dbg !388
  %266 = icmp ne i32 %265, 0, !dbg !390
  br i1 %266, label %267, label %268, !dbg !391

267:                                              ; preds = %257
  br label %398, !dbg !392

268:                                              ; preds = %257
  %269 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !393
  %270 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !395
  %271 = icmp ne %struct.vnode* %269, %270, !dbg !396
  br i1 %271, label %272, label %280, !dbg !397

272:                                              ; preds = %268
  %273 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !398
  %274 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !399
  %275 = icmp ne %struct.vnode* %273, %274, !dbg !400
  br i1 %275, label %276, label %280, !dbg !401

276:                                              ; preds = %272
  %277 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !402
  %278 = load i32, i32* @LK_RELEASE, align 4, !dbg !403
  %279 = call i32 @VOP_UNLOCK(%struct.vnode* %277, i32 %278), !dbg !404
  br label %280, !dbg !404

280:                                              ; preds = %276, %272, %268
  %281 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !405
  %282 = load %struct.componentname*, %struct.componentname** %10, align 8, !dbg !406
  %283 = load %struct.thread*, %struct.thread** %13, align 8, !dbg !407
  %284 = call i32 @unionfs_relookup_for_rename(%struct.vnode* %281, %struct.componentname* %282, %struct.thread* %283), !dbg !408
  store i32 %284, i32* %4, align 4, !dbg !409
  %285 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !410
  %286 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !412
  %287 = icmp ne %struct.vnode* %285, %286, !dbg !413
  br i1 %287, label %288, label %298, !dbg !414

288:                                              ; preds = %280
  %289 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !415
  %290 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !416
  %291 = icmp ne %struct.vnode* %289, %290, !dbg !417
  br i1 %291, label %292, label %298, !dbg !418

292:                                              ; preds = %288
  %293 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !419
  %294 = load i32, i32* @LK_EXCLUSIVE, align 4, !dbg !420
  %295 = load i32, i32* @LK_RETRY, align 4, !dbg !421
  %296 = or i32 %294, %295, !dbg !422
  %297 = call i32 @vn_lock(%struct.vnode* %293, i32 %296), !dbg !423
  br label %298, !dbg !423

298:                                              ; preds = %292, %288, %280
  %299 = load i32, i32* %4, align 4, !dbg !424
  %300 = icmp ne i32 %299, 0, !dbg !426
  br i1 %300, label %301, label %302, !dbg !427

301:                                              ; preds = %298
  br label %398, !dbg !428

302:                                              ; preds = %298
  br label %303, !dbg !429

303:                                              ; preds = %302, %248
  %304 = load %struct.vnode*, %struct.vnode** %14, align 8, !dbg !430
  %305 = load %struct.vnode*, %struct.vnode** %15, align 8, !dbg !431
  %306 = load %struct.componentname*, %struct.componentname** %7, align 8, !dbg !432
  %307 = load %struct.vnode*, %struct.vnode** %16, align 8, !dbg !433
  %308 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !434
  %309 = load %struct.componentname*, %struct.componentname** %10, align 8, !dbg !435
  %310 = call i32 @VOP_RENAME(%struct.vnode* %304, %struct.vnode* %305, %struct.componentname* %306, %struct.vnode* %307, %struct.vnode* %308, %struct.componentname* %309), !dbg !436
  store i32 %310, i32* %4, align 4, !dbg !437
  %311 = load i32, i32* %4, align 4, !dbg !438
  %312 = icmp eq i32 %311, 0, !dbg !440
  br i1 %312, label %313, label %338, !dbg !441

313:                                              ; preds = %303
  %314 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !442
  %315 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !445
  %316 = icmp ne %struct.vnode* %314, %315, !dbg !446
  br i1 %316, label %317, label %325, !dbg !447

317:                                              ; preds = %313
  %318 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !448
  %319 = getelementptr inbounds %struct.vnode, %struct.vnode* %318, i32 0, i32 1, !dbg !449
  %320 = load i32, i32* %319, align 8, !dbg !449
  %321 = icmp eq i32 %320, 129, !dbg !450
  br i1 %321, label %322, label %325, !dbg !451

322:                                              ; preds = %317
  %323 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !452
  %324 = call i32 @cache_purge(%struct.vnode* %323), !dbg !453
  br label %325, !dbg !453

325:                                              ; preds = %322, %317, %313
  %326 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !454
  %327 = getelementptr inbounds %struct.vnode, %struct.vnode* %326, i32 0, i32 1, !dbg !456
  %328 = load i32, i32* %327, align 8, !dbg !456
  %329 = icmp eq i32 %328, 129, !dbg !457
  br i1 %329, label %330, label %337, !dbg !458

330:                                              ; preds = %325
  %331 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !459
  %332 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !460
  %333 = icmp ne %struct.vnode* %331, %332, !dbg !461
  br i1 %333, label %334, label %337, !dbg !462

334:                                              ; preds = %330
  %335 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !463
  %336 = call i32 @cache_purge(%struct.vnode* %335), !dbg !464
  br label %337, !dbg !464

337:                                              ; preds = %334, %330, %325
  br label %338, !dbg !465

338:                                              ; preds = %337, %303
  %339 = load %struct.vnode*, %struct.vnode** %11, align 8, !dbg !466
  %340 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !468
  %341 = icmp ne %struct.vnode* %339, %340, !dbg !469
  br i1 %341, label %342, label %346, !dbg !470

342:                                              ; preds = %338
  %343 = load %struct.vnode*, %struct.vnode** %11, align 8, !dbg !471
  %344 = load i32, i32* @LK_RELEASE, align 4, !dbg !472
  %345 = call i32 @VOP_UNLOCK(%struct.vnode* %343, i32 %344), !dbg !473
  br label %346, !dbg !473

346:                                              ; preds = %342, %338
  %347 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !474
  %348 = load %struct.vnode*, %struct.vnode** %16, align 8, !dbg !476
  %349 = icmp ne %struct.vnode* %347, %348, !dbg !477
  br i1 %349, label %350, label %353, !dbg !478

350:                                              ; preds = %346
  %351 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !479
  %352 = call i32 @vrele(%struct.vnode* %351), !dbg !480
  br label %353, !dbg !480

353:                                              ; preds = %350, %346
  %354 = load %struct.vnode*, %struct.vnode** %12, align 8, !dbg !481
  %355 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !483
  %356 = icmp ne %struct.vnode* %354, %355, !dbg !484
  br i1 %356, label %357, label %361, !dbg !485

357:                                              ; preds = %353
  %358 = load %struct.vnode*, %struct.vnode** %12, align 8, !dbg !486
  %359 = load i32, i32* @LK_RELEASE, align 4, !dbg !487
  %360 = call i32 @VOP_UNLOCK(%struct.vnode* %358, i32 %359), !dbg !488
  br label %361, !dbg !488

361:                                              ; preds = %357, %353
  %362 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !489
  %363 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !491
  %364 = icmp ne %struct.vnode* %362, %363, !dbg !492
  br i1 %364, label %365, label %380, !dbg !493

365:                                              ; preds = %361
  %366 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !494
  %367 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !495
  %368 = icmp ne %struct.vnode* %366, %367, !dbg !496
  br i1 %368, label %369, label %380, !dbg !497

369:                                              ; preds = %365
  %370 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !498
  %371 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !501
  %372 = icmp eq %struct.vnode* %370, %371, !dbg !502
  br i1 %372, label %373, label %376, !dbg !503

373:                                              ; preds = %369
  %374 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !504
  %375 = call i32 @vput(%struct.vnode* %374), !dbg !505
  br label %379, !dbg !505

376:                                              ; preds = %369
  %377 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !506
  %378 = call i32 @vrele(%struct.vnode* %377), !dbg !507
  br label %379

379:                                              ; preds = %376, %373
  br label %380, !dbg !508

380:                                              ; preds = %379, %365, %361
  %381 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !509
  %382 = load %struct.vnode*, %struct.vnode** %14, align 8, !dbg !511
  %383 = icmp ne %struct.vnode* %381, %382, !dbg !512
  br i1 %383, label %384, label %387, !dbg !513

384:                                              ; preds = %380
  %385 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !514
  %386 = call i32 @vrele(%struct.vnode* %385), !dbg !515
  br label %387, !dbg !515

387:                                              ; preds = %384, %380
  %388 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !516
  %389 = load %struct.vnode*, %struct.vnode** %15, align 8, !dbg !518
  %390 = icmp ne %struct.vnode* %388, %389, !dbg !519
  br i1 %390, label %391, label %394, !dbg !520

391:                                              ; preds = %387
  %392 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !521
  %393 = call i32 @vrele(%struct.vnode* %392), !dbg !522
  br label %394, !dbg !522

394:                                              ; preds = %391, %387
  %395 = load i32, i32* %4, align 4, !dbg !523
  %396 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %395), !dbg !524
  %397 = load i32, i32* %4, align 4, !dbg !525
  store i32 %397, i32* %2, align 4, !dbg !526
  br label %455, !dbg !526

398:                                              ; preds = %301, %267, %256, %247, %230, %193, %165, %163, %150, %143, %130, %102, %80, %75
  call void @llvm.dbg.label(metadata !527), !dbg !528
  %399 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !529
  %400 = call i32 @vput(%struct.vnode* %399), !dbg !530
  %401 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !531
  %402 = load %struct.vnode*, %struct.vnode** %16, align 8, !dbg !533
  %403 = icmp ne %struct.vnode* %401, %402, !dbg !534
  br i1 %403, label %404, label %407, !dbg !535

404:                                              ; preds = %398
  %405 = load %struct.vnode*, %struct.vnode** %16, align 8, !dbg !536
  %406 = call i32 @vrele(%struct.vnode* %405), !dbg !537
  br label %407, !dbg !537

407:                                              ; preds = %404, %398
  %408 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !538
  %409 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !540
  %410 = icmp ne %struct.vnode* %408, %409, !dbg !541
  br i1 %410, label %411, label %422, !dbg !542

411:                                              ; preds = %407
  %412 = load %struct.vnode*, %struct.vnode** %8, align 8, !dbg !543
  %413 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !546
  %414 = icmp ne %struct.vnode* %412, %413, !dbg !547
  br i1 %414, label %415, label %418, !dbg !548

415:                                              ; preds = %411
  %416 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !549
  %417 = call i32 @vput(%struct.vnode* %416), !dbg !550
  br label %421, !dbg !550

418:                                              ; preds = %411
  %419 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !551
  %420 = call i32 @vrele(%struct.vnode* %419), !dbg !552
  br label %421

421:                                              ; preds = %418, %415
  br label %422, !dbg !553

422:                                              ; preds = %421, %407
  %423 = load %struct.vnode*, %struct.vnode** %9, align 8, !dbg !554
  %424 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !556
  %425 = icmp ne %struct.vnode* %423, %424, !dbg !557
  br i1 %425, label %426, label %433, !dbg !558

426:                                              ; preds = %422
  %427 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !559
  %428 = load %struct.vnode*, %struct.vnode** @NULLVP, align 8, !dbg !560
  %429 = icmp ne %struct.vnode* %427, %428, !dbg !561
  br i1 %429, label %430, label %433, !dbg !562

430:                                              ; preds = %426
  %431 = load %struct.vnode*, %struct.vnode** %17, align 8, !dbg !563
  %432 = call i32 @vrele(%struct.vnode* %431), !dbg !564
  br label %433, !dbg !564

433:                                              ; preds = %430, %426, %422
  %434 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !565
  %435 = load %struct.vnode*, %struct.vnode** %14, align 8, !dbg !567
  %436 = icmp ne %struct.vnode* %434, %435, !dbg !568
  br i1 %436, label %437, label %440, !dbg !569

437:                                              ; preds = %433
  %438 = load %struct.vnode*, %struct.vnode** %14, align 8, !dbg !570
  %439 = call i32 @vrele(%struct.vnode* %438), !dbg !571
  br label %440, !dbg !571

440:                                              ; preds = %437, %433
  %441 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !572
  %442 = load %struct.vnode*, %struct.vnode** %15, align 8, !dbg !574
  %443 = icmp ne %struct.vnode* %441, %442, !dbg !575
  br i1 %443, label %444, label %447, !dbg !576

444:                                              ; preds = %440
  %445 = load %struct.vnode*, %struct.vnode** %15, align 8, !dbg !577
  %446 = call i32 @vrele(%struct.vnode* %445), !dbg !578
  br label %447, !dbg !578

447:                                              ; preds = %444, %440
  %448 = load %struct.vnode*, %struct.vnode** %5, align 8, !dbg !579
  %449 = call i32 @vrele(%struct.vnode* %448), !dbg !580
  %450 = load %struct.vnode*, %struct.vnode** %6, align 8, !dbg !581
  %451 = call i32 @vrele(%struct.vnode* %450), !dbg !582
  %452 = load i32, i32* %4, align 4, !dbg !583
  %453 = call i32 (i8*, ...) @UNIONFS_INTERNAL_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %452), !dbg !584
  %454 = load i32, i32* %4, align 4, !dbg !585
  store i32 %454, i32* %2, align 4, !dbg !586
  br label %455, !dbg !586

455:                                              ; preds = %447, %394
  %456 = load i32, i32* %2, align 4, !dbg !587
  ret i32 %456, !dbg !587
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @UNIONFS_INTERNAL_DEBUG(i8*, ...) #2

declare dso_local i32 @KASSERT_UNIONFS_VNODE(%struct.vnode*) #2

declare dso_local %struct.unionfs_node* @VTOUNIONFS(%struct.vnode*) #2

declare dso_local i32 @vref(%struct.vnode*) #2

declare dso_local %struct.unionfs_mount* @MOUNTTOUNIONFSMOUNT(i64) #2

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #2

declare dso_local i32 @unionfs_copyfile(%struct.unionfs_node*, i32, i32, %struct.thread*) #2

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #2

declare dso_local i32 @unionfs_mkshadowdir(%struct.unionfs_mount*, %struct.vnode*, %struct.unionfs_node*, %struct.componentname*, %struct.thread*) #2

declare dso_local i32 @unionfs_relookup_for_delete(%struct.vnode*, %struct.componentname*, %struct.thread*) #2

declare dso_local i32 @unionfs_relookup_for_rename(%struct.vnode*, %struct.componentname*, %struct.thread*) #2

declare dso_local i32 @VOP_RENAME(%struct.vnode*, %struct.vnode*, %struct.componentname*, %struct.vnode*, %struct.vnode*, %struct.componentname*) #2

declare dso_local i32 @cache_purge(%struct.vnode*) #2

declare dso_local i32 @vrele(%struct.vnode*) #2

declare dso_local i32 @vput(%struct.vnode*) #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "NULLVP", scope: !2, file: !3, line: 31, type: !31, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.0-2 (tags/RELEASE_900/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, nameTableKind: None)
!3 = !DIFile(filename: "extr_union_vnops.c_unionfs_rename.c", directory: "/home/anderson/IOSProject/IntelligentOptimizationSelection/Benchmarks/Angha/extr_union_vnops_unionfs_rename")
!4 = !{}
!5 = !{!6, !9, !11, !13, !15, !17, !19, !21, !0, !23, !29}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "DOWHITEOUT", scope: !2, file: !3, line: 21, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "EINVAL", scope: !2, file: !3, line: 22, type: !8, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "ENODEV", scope: !2, file: !3, line: 23, type: !8, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "EXDEV", scope: !2, file: !3, line: 24, type: !8, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "HASBUF", scope: !2, file: !3, line: 25, type: !8, isLocal: false, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "LK_EXCLUSIVE", scope: !2, file: !3, line: 27, type: !8, isLocal: false, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "LK_RELEASE", scope: !2, file: !3, line: 28, type: !8, isLocal: false, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "LK_RETRY", scope: !2, file: !3, line: 29, type: !8, isLocal: false, isDefinition: true)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "curthread", scope: !2, file: !3, line: 39, type: !25, isLocal: false, isDefinition: true)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread", file: !3, line: 17, size: 32, elements: !27)
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !26, file: !3, line: 17, baseType: !8, size: 32)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "unionfs_vnodeops", scope: !2, file: !3, line: 45, type: !8, isLocal: false, isDefinition: true)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vnode", file: !3, line: 14, size: 192, elements: !33)
!33 = !{!34, !37, !38}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "v_mount", scope: !32, file: !3, line: 14, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "scalar_t__", file: !3, line: 4, baseType: !36)
!36 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "v_type", scope: !32, file: !3, line: 14, baseType: !8, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "v_op", scope: !32, file: !3, line: 14, baseType: !39, size: 64, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!40 = !{i32 2, !"Dwarf Version", i32 4}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{!"clang version 9.0.0-2 (tags/RELEASE_900/final)"}
!44 = distinct !DISubprogram(name: "unionfs_rename", scope: !3, file: !3, line: 52, type: !45, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!45 = !DISubroutineType(types: !46)
!46 = !{!8, !47}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vop_rename_args", file: !3, line: 13, size: 384, elements: !49)
!49 = !{!50, !56, !57, !58, !59, !60}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "a_tcnp", scope: !48, file: !3, line: 13, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "componentname", file: !3, line: 18, size: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "cn_flags", scope: !52, file: !3, line: 18, baseType: !8, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "cn_cred", scope: !52, file: !3, line: 18, baseType: !8, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "a_tvp", scope: !48, file: !3, line: 13, baseType: !31, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "a_tdvp", scope: !48, file: !3, line: 13, baseType: !31, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "a_fcnp", scope: !48, file: !3, line: 13, baseType: !51, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "a_fvp", scope: !48, file: !3, line: 13, baseType: !31, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "a_fdvp", scope: !48, file: !3, line: 13, baseType: !31, size: 64, offset: 320)
!61 = !DILocalVariable(name: "ap", arg: 1, scope: !44, file: !3, line: 52, type: !47)
!62 = !DILocation(line: 52, column: 40, scope: !44)
!63 = !DILocalVariable(name: "error", scope: !44, file: !3, line: 54, type: !8)
!64 = !DILocation(line: 54, column: 7, scope: !44)
!65 = !DILocalVariable(name: "fdvp", scope: !44, file: !3, line: 55, type: !31)
!66 = !DILocation(line: 55, column: 18, scope: !44)
!67 = !DILocalVariable(name: "fvp", scope: !44, file: !3, line: 56, type: !31)
!68 = !DILocation(line: 56, column: 18, scope: !44)
!69 = !DILocalVariable(name: "fcnp", scope: !44, file: !3, line: 57, type: !51)
!70 = !DILocation(line: 57, column: 24, scope: !44)
!71 = !DILocalVariable(name: "tdvp", scope: !44, file: !3, line: 58, type: !31)
!72 = !DILocation(line: 58, column: 18, scope: !44)
!73 = !DILocalVariable(name: "tvp", scope: !44, file: !3, line: 59, type: !31)
!74 = !DILocation(line: 59, column: 18, scope: !44)
!75 = !DILocalVariable(name: "tcnp", scope: !44, file: !3, line: 60, type: !51)
!76 = !DILocation(line: 60, column: 24, scope: !44)
!77 = !DILocalVariable(name: "ltdvp", scope: !44, file: !3, line: 61, type: !31)
!78 = !DILocation(line: 61, column: 18, scope: !44)
!79 = !DILocalVariable(name: "ltvp", scope: !44, file: !3, line: 62, type: !31)
!80 = !DILocation(line: 62, column: 18, scope: !44)
!81 = !DILocalVariable(name: "td", scope: !44, file: !3, line: 63, type: !25)
!82 = !DILocation(line: 63, column: 18, scope: !44)
!83 = !DILocalVariable(name: "rfdvp", scope: !44, file: !3, line: 66, type: !31)
!84 = !DILocation(line: 66, column: 18, scope: !44)
!85 = !DILocalVariable(name: "rfvp", scope: !44, file: !3, line: 67, type: !31)
!86 = !DILocation(line: 67, column: 18, scope: !44)
!87 = !DILocalVariable(name: "rtdvp", scope: !44, file: !3, line: 68, type: !31)
!88 = !DILocation(line: 68, column: 18, scope: !44)
!89 = !DILocalVariable(name: "rtvp", scope: !44, file: !3, line: 69, type: !31)
!90 = !DILocation(line: 69, column: 18, scope: !44)
!91 = !DILocalVariable(name: "needrelookup", scope: !44, file: !3, line: 71, type: !8)
!92 = !DILocation(line: 71, column: 7, scope: !44)
!93 = !DILocalVariable(name: "ump", scope: !44, file: !3, line: 72, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unionfs_mount", file: !3, line: 16, size: 32, elements: !96)
!96 = !{!97}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !95, file: !3, line: 16, baseType: !8, size: 32)
!98 = !DILocation(line: 72, column: 24, scope: !44)
!99 = !DILocalVariable(name: "unp", scope: !44, file: !3, line: 73, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unionfs_node", file: !3, line: 15, size: 128, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "un_lowervp", scope: !101, file: !3, line: 15, baseType: !31, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "un_uppervp", scope: !101, file: !3, line: 15, baseType: !31, size: 64, offset: 64)
!105 = !DILocation(line: 73, column: 23, scope: !44)
!106 = !DILocation(line: 75, column: 2, scope: !44)
!107 = !DILocation(line: 77, column: 8, scope: !44)
!108 = !DILocation(line: 78, column: 9, scope: !44)
!109 = !DILocation(line: 78, column: 13, scope: !44)
!110 = !DILocation(line: 78, column: 7, scope: !44)
!111 = !DILocation(line: 79, column: 8, scope: !44)
!112 = !DILocation(line: 79, column: 12, scope: !44)
!113 = !DILocation(line: 79, column: 6, scope: !44)
!114 = !DILocation(line: 80, column: 9, scope: !44)
!115 = !DILocation(line: 80, column: 13, scope: !44)
!116 = !DILocation(line: 80, column: 7, scope: !44)
!117 = !DILocation(line: 81, column: 9, scope: !44)
!118 = !DILocation(line: 81, column: 13, scope: !44)
!119 = !DILocation(line: 81, column: 7, scope: !44)
!120 = !DILocation(line: 82, column: 8, scope: !44)
!121 = !DILocation(line: 82, column: 12, scope: !44)
!122 = !DILocation(line: 82, column: 6, scope: !44)
!123 = !DILocation(line: 83, column: 9, scope: !44)
!124 = !DILocation(line: 83, column: 13, scope: !44)
!125 = !DILocation(line: 83, column: 7, scope: !44)
!126 = !DILocation(line: 84, column: 10, scope: !44)
!127 = !DILocation(line: 84, column: 8, scope: !44)
!128 = !DILocation(line: 85, column: 9, scope: !44)
!129 = !DILocation(line: 85, column: 7, scope: !44)
!130 = !DILocation(line: 86, column: 7, scope: !44)
!131 = !DILocation(line: 86, column: 5, scope: !44)
!132 = !DILocation(line: 87, column: 10, scope: !44)
!133 = !DILocation(line: 87, column: 8, scope: !44)
!134 = !DILocation(line: 88, column: 9, scope: !44)
!135 = !DILocation(line: 88, column: 7, scope: !44)
!136 = !DILocation(line: 89, column: 10, scope: !44)
!137 = !DILocation(line: 89, column: 8, scope: !44)
!138 = !DILocation(line: 90, column: 9, scope: !44)
!139 = !DILocation(line: 90, column: 7, scope: !44)
!140 = !DILocation(line: 91, column: 15, scope: !44)
!141 = !DILocation(line: 99, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !44, file: !3, line: 99, column: 6)
!143 = !DILocation(line: 99, column: 11, scope: !142)
!144 = !DILocation(line: 99, column: 22, scope: !142)
!145 = !DILocation(line: 99, column: 28, scope: !142)
!146 = !DILocation(line: 99, column: 19, scope: !142)
!147 = !DILocation(line: 99, column: 36, scope: !142)
!148 = !DILocation(line: 100, column: 7, scope: !142)
!149 = !DILocation(line: 100, column: 14, scope: !142)
!150 = !DILocation(line: 100, column: 11, scope: !142)
!151 = !DILocation(line: 100, column: 21, scope: !142)
!152 = !DILocation(line: 100, column: 24, scope: !142)
!153 = !DILocation(line: 100, column: 29, scope: !142)
!154 = !DILocation(line: 100, column: 40, scope: !142)
!155 = !DILocation(line: 100, column: 45, scope: !142)
!156 = !DILocation(line: 100, column: 37, scope: !142)
!157 = !DILocation(line: 99, column: 6, scope: !44)
!158 = !DILocation(line: 101, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 101, column: 7)
!160 = distinct !DILexicalBlock(scope: !142, file: !3, line: 100, column: 55)
!161 = !DILocation(line: 101, column: 12, scope: !159)
!162 = !DILocation(line: 101, column: 17, scope: !159)
!163 = !DILocation(line: 101, column: 7, scope: !160)
!164 = !DILocation(line: 102, column: 12, scope: !159)
!165 = !DILocation(line: 102, column: 10, scope: !159)
!166 = !DILocation(line: 102, column: 4, scope: !159)
!167 = !DILocation(line: 104, column: 12, scope: !159)
!168 = !DILocation(line: 104, column: 10, scope: !159)
!169 = !DILocation(line: 105, column: 3, scope: !160)
!170 = !DILocation(line: 109, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !44, file: !3, line: 109, column: 6)
!172 = !DILocation(line: 109, column: 13, scope: !171)
!173 = !DILocation(line: 109, column: 10, scope: !171)
!174 = !DILocation(line: 109, column: 6, scope: !44)
!175 = !DILocation(line: 110, column: 3, scope: !171)
!176 = !DILocation(line: 116, column: 24, scope: !44)
!177 = !DILocation(line: 116, column: 2, scope: !44)
!178 = !DILocation(line: 117, column: 24, scope: !44)
!179 = !DILocation(line: 117, column: 2, scope: !44)
!180 = !DILocation(line: 118, column: 24, scope: !44)
!181 = !DILocation(line: 118, column: 2, scope: !44)
!182 = !DILocation(line: 119, column: 6, scope: !183)
!183 = distinct !DILexicalBlock(scope: !44, file: !3, line: 119, column: 6)
!184 = !DILocation(line: 119, column: 13, scope: !183)
!185 = !DILocation(line: 119, column: 10, scope: !183)
!186 = !DILocation(line: 119, column: 6, scope: !44)
!187 = !DILocation(line: 120, column: 25, scope: !183)
!188 = !DILocation(line: 120, column: 3, scope: !183)
!189 = !DILocation(line: 122, column: 19, scope: !44)
!190 = !DILocation(line: 122, column: 8, scope: !44)
!191 = !DILocation(line: 122, column: 6, scope: !44)
!192 = !DILocation(line: 126, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !44, file: !3, line: 126, column: 6)
!194 = !DILocation(line: 126, column: 11, scope: !193)
!195 = !DILocation(line: 126, column: 25, scope: !193)
!196 = !DILocation(line: 126, column: 22, scope: !193)
!197 = !DILocation(line: 126, column: 6, scope: !44)
!198 = !DILocation(line: 127, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !193, file: !3, line: 126, column: 33)
!200 = !DILocation(line: 127, column: 9, scope: !199)
!201 = !DILocation(line: 128, column: 3, scope: !199)
!202 = !DILocation(line: 130, column: 10, scope: !44)
!203 = !DILocation(line: 130, column: 15, scope: !44)
!204 = !DILocation(line: 130, column: 8, scope: !44)
!205 = !DILocation(line: 131, column: 7, scope: !44)
!206 = !DILocation(line: 131, column: 2, scope: !44)
!207 = !DILocation(line: 133, column: 19, scope: !44)
!208 = !DILocation(line: 133, column: 8, scope: !44)
!209 = !DILocation(line: 133, column: 6, scope: !44)
!210 = !DILocation(line: 137, column: 28, scope: !44)
!211 = !DILocation(line: 137, column: 33, scope: !44)
!212 = !DILocation(line: 137, column: 8, scope: !44)
!213 = !DILocation(line: 137, column: 6, scope: !44)
!214 = !DILocation(line: 138, column: 6, scope: !215)
!215 = distinct !DILexicalBlock(scope: !44, file: !3, line: 138, column: 6)
!216 = !DILocation(line: 138, column: 11, scope: !215)
!217 = !DILocation(line: 138, column: 25, scope: !215)
!218 = !DILocation(line: 138, column: 22, scope: !215)
!219 = !DILocation(line: 138, column: 6, scope: !44)
!220 = !DILocation(line: 139, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !215, file: !3, line: 138, column: 33)
!222 = !DILocation(line: 139, column: 16, scope: !221)
!223 = !DILocation(line: 139, column: 3, scope: !221)
!224 = !DILocation(line: 141, column: 25, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !3, line: 141, column: 8)
!226 = distinct !DILexicalBlock(scope: !221, file: !3, line: 139, column: 24)
!227 = !DILocation(line: 141, column: 30, scope: !225)
!228 = !DILocation(line: 141, column: 17, scope: !225)
!229 = !DILocation(line: 141, column: 15, scope: !225)
!230 = !DILocation(line: 141, column: 45, scope: !225)
!231 = !DILocation(line: 141, column: 8, scope: !226)
!232 = !DILocation(line: 142, column: 5, scope: !225)
!233 = !DILocation(line: 143, column: 29, scope: !226)
!234 = !DILocation(line: 143, column: 37, scope: !226)
!235 = !DILocation(line: 143, column: 43, scope: !226)
!236 = !DILocation(line: 143, column: 52, scope: !226)
!237 = !DILocation(line: 143, column: 12, scope: !226)
!238 = !DILocation(line: 143, column: 10, scope: !226)
!239 = !DILocation(line: 144, column: 15, scope: !226)
!240 = !DILocation(line: 144, column: 20, scope: !226)
!241 = !DILocation(line: 144, column: 4, scope: !226)
!242 = !DILocation(line: 145, column: 8, scope: !243)
!243 = distinct !DILexicalBlock(scope: !226, file: !3, line: 145, column: 8)
!244 = !DILocation(line: 145, column: 14, scope: !243)
!245 = !DILocation(line: 145, column: 8, scope: !226)
!246 = !DILocation(line: 146, column: 5, scope: !243)
!247 = !DILocation(line: 147, column: 4, scope: !226)
!248 = !DILocation(line: 149, column: 25, scope: !249)
!249 = distinct !DILexicalBlock(scope: !226, file: !3, line: 149, column: 8)
!250 = !DILocation(line: 149, column: 30, scope: !249)
!251 = !DILocation(line: 149, column: 17, scope: !249)
!252 = !DILocation(line: 149, column: 15, scope: !249)
!253 = !DILocation(line: 149, column: 45, scope: !249)
!254 = !DILocation(line: 149, column: 8, scope: !226)
!255 = !DILocation(line: 150, column: 5, scope: !249)
!256 = !DILocation(line: 151, column: 32, scope: !226)
!257 = !DILocation(line: 151, column: 37, scope: !226)
!258 = !DILocation(line: 151, column: 44, scope: !226)
!259 = !DILocation(line: 151, column: 49, scope: !226)
!260 = !DILocation(line: 151, column: 55, scope: !226)
!261 = !DILocation(line: 151, column: 12, scope: !226)
!262 = !DILocation(line: 151, column: 10, scope: !226)
!263 = !DILocation(line: 152, column: 15, scope: !226)
!264 = !DILocation(line: 152, column: 20, scope: !226)
!265 = !DILocation(line: 152, column: 4, scope: !226)
!266 = !DILocation(line: 153, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !226, file: !3, line: 153, column: 8)
!268 = !DILocation(line: 153, column: 14, scope: !267)
!269 = !DILocation(line: 153, column: 8, scope: !226)
!270 = !DILocation(line: 154, column: 5, scope: !267)
!271 = !DILocation(line: 155, column: 4, scope: !226)
!272 = !DILocation(line: 157, column: 12, scope: !226)
!273 = !DILocation(line: 157, column: 10, scope: !226)
!274 = !DILocation(line: 158, column: 4, scope: !226)
!275 = !DILocation(line: 161, column: 16, scope: !221)
!276 = !DILocation(line: 162, column: 2, scope: !221)
!277 = !DILocation(line: 164, column: 6, scope: !278)
!278 = distinct !DILexicalBlock(scope: !44, file: !3, line: 164, column: 6)
!279 = !DILocation(line: 164, column: 11, scope: !278)
!280 = !DILocation(line: 164, column: 25, scope: !278)
!281 = !DILocation(line: 164, column: 22, scope: !278)
!282 = !DILocation(line: 164, column: 6, scope: !44)
!283 = !DILocation(line: 165, column: 21, scope: !278)
!284 = !DILocation(line: 165, column: 3, scope: !278)
!285 = !DILocation(line: 165, column: 9, scope: !278)
!286 = !DILocation(line: 165, column: 18, scope: !278)
!287 = !DILocation(line: 166, column: 9, scope: !44)
!288 = !DILocation(line: 166, column: 14, scope: !44)
!289 = !DILocation(line: 166, column: 7, scope: !44)
!290 = !DILocation(line: 167, column: 7, scope: !44)
!291 = !DILocation(line: 167, column: 2, scope: !44)
!292 = !DILocation(line: 169, column: 19, scope: !44)
!293 = !DILocation(line: 169, column: 8, scope: !44)
!294 = !DILocation(line: 169, column: 6, scope: !44)
!295 = !DILocation(line: 173, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !44, file: !3, line: 173, column: 6)
!297 = !DILocation(line: 173, column: 11, scope: !296)
!298 = !DILocation(line: 173, column: 25, scope: !296)
!299 = !DILocation(line: 173, column: 22, scope: !296)
!300 = !DILocation(line: 173, column: 6, scope: !44)
!301 = !DILocation(line: 174, column: 11, scope: !302)
!302 = distinct !DILexicalBlock(scope: !296, file: !3, line: 173, column: 33)
!303 = !DILocation(line: 174, column: 9, scope: !302)
!304 = !DILocation(line: 175, column: 3, scope: !302)
!305 = !DILocation(line: 177, column: 10, scope: !44)
!306 = !DILocation(line: 177, column: 15, scope: !44)
!307 = !DILocation(line: 177, column: 8, scope: !44)
!308 = !DILocation(line: 178, column: 10, scope: !44)
!309 = !DILocation(line: 178, column: 15, scope: !44)
!310 = !DILocation(line: 178, column: 8, scope: !44)
!311 = !DILocation(line: 179, column: 7, scope: !44)
!312 = !DILocation(line: 179, column: 2, scope: !44)
!313 = !DILocation(line: 181, column: 6, scope: !314)
!314 = distinct !DILexicalBlock(scope: !44, file: !3, line: 181, column: 6)
!315 = !DILocation(line: 181, column: 14, scope: !314)
!316 = !DILocation(line: 181, column: 11, scope: !314)
!317 = !DILocation(line: 181, column: 6, scope: !44)
!318 = !DILocation(line: 182, column: 10, scope: !319)
!319 = distinct !DILexicalBlock(scope: !314, file: !3, line: 181, column: 19)
!320 = !DILocation(line: 182, column: 8, scope: !319)
!321 = !DILocation(line: 183, column: 8, scope: !319)
!322 = !DILocation(line: 183, column: 3, scope: !319)
!323 = !DILocation(line: 184, column: 2, scope: !319)
!324 = !DILocation(line: 184, column: 13, scope: !325)
!325 = distinct !DILexicalBlock(scope: !314, file: !3, line: 184, column: 13)
!326 = !DILocation(line: 184, column: 20, scope: !325)
!327 = !DILocation(line: 184, column: 17, scope: !325)
!328 = !DILocation(line: 184, column: 13, scope: !314)
!329 = !DILocation(line: 185, column: 20, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !3, line: 184, column: 28)
!331 = !DILocation(line: 185, column: 9, scope: !330)
!332 = !DILocation(line: 185, column: 7, scope: !330)
!333 = !DILocation(line: 189, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !330, file: !3, line: 189, column: 7)
!335 = !DILocation(line: 189, column: 12, scope: !334)
!336 = !DILocation(line: 189, column: 26, scope: !334)
!337 = !DILocation(line: 189, column: 23, scope: !334)
!338 = !DILocation(line: 189, column: 7, scope: !330)
!339 = !DILocation(line: 190, column: 11, scope: !334)
!340 = !DILocation(line: 190, column: 9, scope: !334)
!341 = !DILocation(line: 190, column: 4, scope: !334)
!342 = !DILocation(line: 192, column: 8, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 192, column: 8)
!344 = distinct !DILexicalBlock(scope: !334, file: !3, line: 191, column: 8)
!345 = !DILocation(line: 192, column: 13, scope: !343)
!346 = !DILocation(line: 192, column: 20, scope: !343)
!347 = !DILocation(line: 192, column: 8, scope: !344)
!348 = !DILocation(line: 193, column: 13, scope: !349)
!349 = distinct !DILexicalBlock(scope: !343, file: !3, line: 192, column: 29)
!350 = !DILocation(line: 193, column: 11, scope: !349)
!351 = !DILocation(line: 194, column: 5, scope: !349)
!352 = !DILocation(line: 196, column: 11, scope: !344)
!353 = !DILocation(line: 196, column: 16, scope: !344)
!354 = !DILocation(line: 196, column: 9, scope: !344)
!355 = !DILocation(line: 197, column: 11, scope: !344)
!356 = !DILocation(line: 197, column: 16, scope: !344)
!357 = !DILocation(line: 197, column: 9, scope: !344)
!358 = !DILocation(line: 198, column: 9, scope: !344)
!359 = !DILocation(line: 198, column: 4, scope: !344)
!360 = !DILocation(line: 200, column: 2, scope: !330)
!361 = !DILocation(line: 202, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !44, file: !3, line: 202, column: 6)
!363 = !DILocation(line: 202, column: 14, scope: !362)
!364 = !DILocation(line: 202, column: 11, scope: !362)
!365 = !DILocation(line: 202, column: 6, scope: !44)
!366 = !DILocation(line: 203, column: 3, scope: !362)
!367 = !DILocation(line: 205, column: 6, scope: !368)
!368 = distinct !DILexicalBlock(scope: !44, file: !3, line: 205, column: 6)
!369 = !DILocation(line: 205, column: 19, scope: !368)
!370 = !DILocation(line: 205, column: 6, scope: !44)
!371 = !DILocation(line: 206, column: 24, scope: !372)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 206, column: 7)
!373 = distinct !DILexicalBlock(scope: !368, file: !3, line: 205, column: 25)
!374 = !DILocation(line: 206, column: 30, scope: !372)
!375 = !DILocation(line: 206, column: 16, scope: !372)
!376 = !DILocation(line: 206, column: 14, scope: !372)
!377 = !DILocation(line: 206, column: 45, scope: !372)
!378 = !DILocation(line: 206, column: 7, scope: !373)
!379 = !DILocation(line: 207, column: 4, scope: !372)
!380 = !DILocation(line: 208, column: 39, scope: !373)
!381 = !DILocation(line: 208, column: 45, scope: !373)
!382 = !DILocation(line: 208, column: 51, scope: !373)
!383 = !DILocation(line: 208, column: 11, scope: !373)
!384 = !DILocation(line: 208, column: 9, scope: !373)
!385 = !DILocation(line: 209, column: 14, scope: !373)
!386 = !DILocation(line: 209, column: 20, scope: !373)
!387 = !DILocation(line: 209, column: 3, scope: !373)
!388 = !DILocation(line: 210, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !373, file: !3, line: 210, column: 7)
!390 = !DILocation(line: 210, column: 13, scope: !389)
!391 = !DILocation(line: 210, column: 7, scope: !373)
!392 = !DILocation(line: 211, column: 4, scope: !389)
!393 = !DILocation(line: 214, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !373, file: !3, line: 214, column: 7)
!395 = !DILocation(line: 214, column: 14, scope: !394)
!396 = !DILocation(line: 214, column: 11, scope: !394)
!397 = !DILocation(line: 214, column: 21, scope: !394)
!398 = !DILocation(line: 214, column: 24, scope: !394)
!399 = !DILocation(line: 214, column: 31, scope: !394)
!400 = !DILocation(line: 214, column: 28, scope: !394)
!401 = !DILocation(line: 214, column: 7, scope: !373)
!402 = !DILocation(line: 215, column: 15, scope: !394)
!403 = !DILocation(line: 215, column: 20, scope: !394)
!404 = !DILocation(line: 215, column: 4, scope: !394)
!405 = !DILocation(line: 216, column: 39, scope: !373)
!406 = !DILocation(line: 216, column: 45, scope: !373)
!407 = !DILocation(line: 216, column: 51, scope: !373)
!408 = !DILocation(line: 216, column: 11, scope: !373)
!409 = !DILocation(line: 216, column: 9, scope: !373)
!410 = !DILocation(line: 217, column: 7, scope: !411)
!411 = distinct !DILexicalBlock(scope: !373, file: !3, line: 217, column: 7)
!412 = !DILocation(line: 217, column: 14, scope: !411)
!413 = !DILocation(line: 217, column: 11, scope: !411)
!414 = !DILocation(line: 217, column: 21, scope: !411)
!415 = !DILocation(line: 217, column: 24, scope: !411)
!416 = !DILocation(line: 217, column: 31, scope: !411)
!417 = !DILocation(line: 217, column: 28, scope: !411)
!418 = !DILocation(line: 217, column: 7, scope: !373)
!419 = !DILocation(line: 218, column: 12, scope: !411)
!420 = !DILocation(line: 218, column: 17, scope: !411)
!421 = !DILocation(line: 218, column: 32, scope: !411)
!422 = !DILocation(line: 218, column: 30, scope: !411)
!423 = !DILocation(line: 218, column: 4, scope: !411)
!424 = !DILocation(line: 219, column: 7, scope: !425)
!425 = distinct !DILexicalBlock(scope: !373, file: !3, line: 219, column: 7)
!426 = !DILocation(line: 219, column: 13, scope: !425)
!427 = !DILocation(line: 219, column: 7, scope: !373)
!428 = !DILocation(line: 220, column: 4, scope: !425)
!429 = !DILocation(line: 221, column: 2, scope: !373)
!430 = !DILocation(line: 223, column: 21, scope: !44)
!431 = !DILocation(line: 223, column: 28, scope: !44)
!432 = !DILocation(line: 223, column: 34, scope: !44)
!433 = !DILocation(line: 223, column: 40, scope: !44)
!434 = !DILocation(line: 223, column: 47, scope: !44)
!435 = !DILocation(line: 223, column: 53, scope: !44)
!436 = !DILocation(line: 223, column: 10, scope: !44)
!437 = !DILocation(line: 223, column: 8, scope: !44)
!438 = !DILocation(line: 225, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !44, file: !3, line: 225, column: 6)
!440 = !DILocation(line: 225, column: 12, scope: !439)
!441 = !DILocation(line: 225, column: 6, scope: !44)
!442 = !DILocation(line: 226, column: 7, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !3, line: 226, column: 7)
!444 = distinct !DILexicalBlock(scope: !439, file: !3, line: 225, column: 18)
!445 = !DILocation(line: 226, column: 15, scope: !443)
!446 = !DILocation(line: 226, column: 12, scope: !443)
!447 = !DILocation(line: 226, column: 22, scope: !443)
!448 = !DILocation(line: 226, column: 25, scope: !443)
!449 = !DILocation(line: 226, column: 31, scope: !443)
!450 = !DILocation(line: 226, column: 38, scope: !443)
!451 = !DILocation(line: 226, column: 7, scope: !444)
!452 = !DILocation(line: 227, column: 16, scope: !443)
!453 = !DILocation(line: 227, column: 4, scope: !443)
!454 = !DILocation(line: 228, column: 7, scope: !455)
!455 = distinct !DILexicalBlock(scope: !444, file: !3, line: 228, column: 7)
!456 = !DILocation(line: 228, column: 12, scope: !455)
!457 = !DILocation(line: 228, column: 19, scope: !455)
!458 = !DILocation(line: 228, column: 27, scope: !455)
!459 = !DILocation(line: 228, column: 30, scope: !455)
!460 = !DILocation(line: 228, column: 38, scope: !455)
!461 = !DILocation(line: 228, column: 35, scope: !455)
!462 = !DILocation(line: 228, column: 7, scope: !444)
!463 = !DILocation(line: 229, column: 16, scope: !455)
!464 = !DILocation(line: 229, column: 4, scope: !455)
!465 = !DILocation(line: 230, column: 2, scope: !444)
!466 = !DILocation(line: 232, column: 6, scope: !467)
!467 = distinct !DILexicalBlock(scope: !44, file: !3, line: 232, column: 6)
!468 = !DILocation(line: 232, column: 15, scope: !467)
!469 = !DILocation(line: 232, column: 12, scope: !467)
!470 = !DILocation(line: 232, column: 6, scope: !44)
!471 = !DILocation(line: 233, column: 14, scope: !467)
!472 = !DILocation(line: 233, column: 21, scope: !467)
!473 = !DILocation(line: 233, column: 3, scope: !467)
!474 = !DILocation(line: 234, column: 6, scope: !475)
!475 = distinct !DILexicalBlock(scope: !44, file: !3, line: 234, column: 6)
!476 = !DILocation(line: 234, column: 14, scope: !475)
!477 = !DILocation(line: 234, column: 11, scope: !475)
!478 = !DILocation(line: 234, column: 6, scope: !44)
!479 = !DILocation(line: 235, column: 9, scope: !475)
!480 = !DILocation(line: 235, column: 3, scope: !475)
!481 = !DILocation(line: 236, column: 6, scope: !482)
!482 = distinct !DILexicalBlock(scope: !44, file: !3, line: 236, column: 6)
!483 = !DILocation(line: 236, column: 14, scope: !482)
!484 = !DILocation(line: 236, column: 11, scope: !482)
!485 = !DILocation(line: 236, column: 6, scope: !44)
!486 = !DILocation(line: 237, column: 14, scope: !482)
!487 = !DILocation(line: 237, column: 20, scope: !482)
!488 = !DILocation(line: 237, column: 3, scope: !482)
!489 = !DILocation(line: 238, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !44, file: !3, line: 238, column: 6)
!491 = !DILocation(line: 238, column: 13, scope: !490)
!492 = !DILocation(line: 238, column: 10, scope: !490)
!493 = !DILocation(line: 238, column: 18, scope: !490)
!494 = !DILocation(line: 238, column: 21, scope: !490)
!495 = !DILocation(line: 238, column: 28, scope: !490)
!496 = !DILocation(line: 238, column: 25, scope: !490)
!497 = !DILocation(line: 238, column: 6, scope: !44)
!498 = !DILocation(line: 239, column: 7, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 239, column: 7)
!500 = distinct !DILexicalBlock(scope: !490, file: !3, line: 238, column: 36)
!501 = !DILocation(line: 239, column: 15, scope: !499)
!502 = !DILocation(line: 239, column: 12, scope: !499)
!503 = !DILocation(line: 239, column: 7, scope: !500)
!504 = !DILocation(line: 240, column: 9, scope: !499)
!505 = !DILocation(line: 240, column: 4, scope: !499)
!506 = !DILocation(line: 242, column: 10, scope: !499)
!507 = !DILocation(line: 242, column: 4, scope: !499)
!508 = !DILocation(line: 243, column: 2, scope: !500)
!509 = !DILocation(line: 244, column: 6, scope: !510)
!510 = distinct !DILexicalBlock(scope: !44, file: !3, line: 244, column: 6)
!511 = !DILocation(line: 244, column: 14, scope: !510)
!512 = !DILocation(line: 244, column: 11, scope: !510)
!513 = !DILocation(line: 244, column: 6, scope: !44)
!514 = !DILocation(line: 245, column: 9, scope: !510)
!515 = !DILocation(line: 245, column: 3, scope: !510)
!516 = !DILocation(line: 246, column: 6, scope: !517)
!517 = distinct !DILexicalBlock(scope: !44, file: !3, line: 246, column: 6)
!518 = !DILocation(line: 246, column: 13, scope: !517)
!519 = !DILocation(line: 246, column: 10, scope: !517)
!520 = !DILocation(line: 246, column: 6, scope: !44)
!521 = !DILocation(line: 247, column: 9, scope: !517)
!522 = !DILocation(line: 247, column: 3, scope: !517)
!523 = !DILocation(line: 249, column: 57, scope: !44)
!524 = !DILocation(line: 249, column: 2, scope: !44)
!525 = !DILocation(line: 251, column: 10, scope: !44)
!526 = !DILocation(line: 251, column: 2, scope: !44)
!527 = !DILabel(scope: !44, name: "unionfs_rename_abort", file: !3, line: 253)
!528 = !DILocation(line: 253, column: 1, scope: !44)
!529 = !DILocation(line: 254, column: 7, scope: !44)
!530 = !DILocation(line: 254, column: 2, scope: !44)
!531 = !DILocation(line: 255, column: 6, scope: !532)
!532 = distinct !DILexicalBlock(scope: !44, file: !3, line: 255, column: 6)
!533 = !DILocation(line: 255, column: 14, scope: !532)
!534 = !DILocation(line: 255, column: 11, scope: !532)
!535 = !DILocation(line: 255, column: 6, scope: !44)
!536 = !DILocation(line: 256, column: 9, scope: !532)
!537 = !DILocation(line: 256, column: 3, scope: !532)
!538 = !DILocation(line: 257, column: 6, scope: !539)
!539 = distinct !DILexicalBlock(scope: !44, file: !3, line: 257, column: 6)
!540 = !DILocation(line: 257, column: 13, scope: !539)
!541 = !DILocation(line: 257, column: 10, scope: !539)
!542 = !DILocation(line: 257, column: 6, scope: !44)
!543 = !DILocation(line: 258, column: 7, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 258, column: 7)
!545 = distinct !DILexicalBlock(scope: !539, file: !3, line: 257, column: 21)
!546 = !DILocation(line: 258, column: 15, scope: !544)
!547 = !DILocation(line: 258, column: 12, scope: !544)
!548 = !DILocation(line: 258, column: 7, scope: !545)
!549 = !DILocation(line: 259, column: 9, scope: !544)
!550 = !DILocation(line: 259, column: 4, scope: !544)
!551 = !DILocation(line: 261, column: 10, scope: !544)
!552 = !DILocation(line: 261, column: 4, scope: !544)
!553 = !DILocation(line: 262, column: 2, scope: !545)
!554 = !DILocation(line: 263, column: 6, scope: !555)
!555 = distinct !DILexicalBlock(scope: !44, file: !3, line: 263, column: 6)
!556 = !DILocation(line: 263, column: 13, scope: !555)
!557 = !DILocation(line: 263, column: 10, scope: !555)
!558 = !DILocation(line: 263, column: 18, scope: !555)
!559 = !DILocation(line: 263, column: 21, scope: !555)
!560 = !DILocation(line: 263, column: 29, scope: !555)
!561 = !DILocation(line: 263, column: 26, scope: !555)
!562 = !DILocation(line: 263, column: 6, scope: !44)
!563 = !DILocation(line: 264, column: 9, scope: !555)
!564 = !DILocation(line: 264, column: 3, scope: !555)
!565 = !DILocation(line: 265, column: 6, scope: !566)
!566 = distinct !DILexicalBlock(scope: !44, file: !3, line: 265, column: 6)
!567 = !DILocation(line: 265, column: 14, scope: !566)
!568 = !DILocation(line: 265, column: 11, scope: !566)
!569 = !DILocation(line: 265, column: 6, scope: !44)
!570 = !DILocation(line: 266, column: 9, scope: !566)
!571 = !DILocation(line: 266, column: 3, scope: !566)
!572 = !DILocation(line: 267, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !44, file: !3, line: 267, column: 6)
!574 = !DILocation(line: 267, column: 13, scope: !573)
!575 = !DILocation(line: 267, column: 10, scope: !573)
!576 = !DILocation(line: 267, column: 6, scope: !44)
!577 = !DILocation(line: 268, column: 9, scope: !573)
!578 = !DILocation(line: 268, column: 3, scope: !573)
!579 = !DILocation(line: 269, column: 8, scope: !44)
!580 = !DILocation(line: 269, column: 2, scope: !44)
!581 = !DILocation(line: 270, column: 8, scope: !44)
!582 = !DILocation(line: 270, column: 2, scope: !44)
!583 = !DILocation(line: 272, column: 57, scope: !44)
!584 = !DILocation(line: 272, column: 2, scope: !44)
!585 = !DILocation(line: 274, column: 10, scope: !44)
!586 = !DILocation(line: 274, column: 2, scope: !44)
!587 = !DILocation(line: 275, column: 1, scope: !44)
