; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frmt_spec = internal constant [4 x i8] c"%f \00"

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #0

; Function Attrs: nounwind
define void @main() local_unnamed_addr #1 !dbg !3 {
  br label %.preheader, !dbg !7

.preheader:                                       ; preds = %0, %.preheader
  %1 = phi i64 [ 0, %0 ], [ %12, %.preheader ]
  %2 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double 1.000000e+00), !dbg !9
  %putchar3 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.1 = icmp eq i64 %1, 0, !dbg !10
  %.sink.1 = select i1 %.not.1, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %3 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.1), !dbg !9
  %putchar3.1 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.2 = icmp ult i64 %1, 2, !dbg !10
  %.sink.2 = select i1 %.not.2, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.2), !dbg !9
  %putchar3.2 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.3 = icmp ult i64 %1, 3, !dbg !10
  %.sink.3 = select i1 %.not.3, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %5 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.3), !dbg !9
  %putchar3.3 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.4 = icmp ult i64 %1, 4, !dbg !10
  %.sink.4 = select i1 %.not.4, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.4), !dbg !9
  %putchar3.4 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.5 = icmp ult i64 %1, 5, !dbg !10
  %.sink.5 = select i1 %.not.5, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %7 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.5), !dbg !9
  %putchar3.5 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.6 = icmp ult i64 %1, 6, !dbg !10
  %.sink.6 = select i1 %.not.6, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %8 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.6), !dbg !9
  %putchar3.6 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.7 = icmp ult i64 %1, 7, !dbg !10
  %.sink.7 = select i1 %.not.7, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %9 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.7), !dbg !9
  %putchar3.7 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.8 = icmp ult i64 %1, 8, !dbg !10
  %.sink.8 = select i1 %.not.8, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %10 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.8), !dbg !9
  %putchar3.8 = tail call i32 @putchar(i32 10), !dbg !9
  %.not.9 = icmp ult i64 %1, 9, !dbg !10
  %.sink.9 = select i1 %.not.9, double 2.000000e+00, double 1.000000e+00, !dbg !10
  %11 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([4 x i8], [4 x i8]* @frmt_spec, i64 0, i64 0), double %.sink.9), !dbg !9
  %putchar3.9 = tail call i32 @putchar(i32 10), !dbg !9
  %12 = add nuw nsw i64 %1, 1, !dbg !7
  %exitcond5.not = icmp eq i64 %12, 10, !dbg !7
  br i1 %exitcond5.not, label %13, label %.preheader, !dbg !7

13:                                               ; preds = %.preheader
  ret void, !dbg !11
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #0

attributes #0 = { nofree nounwind }
attributes #1 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 2, type: !5, scopeLine: 2, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "test/affine_for.mlir", directory: "/home/tony/Documents/University/4th_Semester/Seminar/mlir-relay")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 6, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 0, scope: !8)
!10 = !DILocation(line: 8, column: 13, scope: !8)
!11 = !DILocation(line: 18, column: 5, scope: !8)

