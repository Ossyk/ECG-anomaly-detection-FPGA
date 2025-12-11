; ModuleID = 'C:/Users/oussk/Downloads/ald_v2/hw_vitis/ecg_cnn/ecg_hls/ecg_hls_component/ecg_cnn/hls/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<12, 3, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<12, 3, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<12, true>" }
%"struct.ssdm_int<12, true>" = type { i12 }
%"struct.ap_uint<32>" = type { %"struct.ap_fixed_base<32, 32, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<32, 32, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_ecg_cnn_ir(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="720" "maxi" %input, %"struct.ap_uint<32>"* noalias nocapture nonnull "maxi" %output) local_unnamed_addr #0 {
entry:
  %0 = bitcast %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %input to [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]*
  %input_copy = alloca [720 x i12], align 512
  %1 = bitcast %"struct.ap_uint<32>"* %output to [1 x %"struct.ap_uint<32>"]*
  %output_copy = alloca [1 x i32], align 512
  %2 = getelementptr [1 x i32], [1 x i32]* %output_copy, i64 0, i64 0
  call fastcc void @copy_in([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [720 x i12]* nonnull align 512 %input_copy, [1 x %"struct.ap_uint<32>"]* nonnull %1, [1 x i32]* nonnull align 512 %output_copy)
  call void @apatb_ecg_cnn_hw([720 x i12]* %input_copy, i32* %2)
  call void @copy_back([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %0, [720 x i12]* %input_copy, [1 x %"struct.ap_uint<32>"]* %1, [1 x i32]* %output_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [720 x i12]* noalias nocapture align 512 "unpacked"="1.0", [1 x %"struct.ap_uint<32>"]* noalias readonly "unpacked"="2", [1 x i32]* noalias nocapture align 512 "unpacked"="3.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a720struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>.70"([720 x i12]* align 512 %1, [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a1struct.ap_uint<32>"([1 x i32]* align 512 %3, [1 x %"struct.ap_uint<32>"]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a720struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0" %dst, [720 x i12]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a720struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %dst, [720 x i12]* %src, i64 720)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a720struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* "unpacked"="0" %dst, [720 x i12]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [720 x i12], [720 x i12]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"], [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = bitcast i12* %src.addr.0.0.05 to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i12
  store i12 %3, i12* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1struct.ap_uint<32>"([1 x i32]* noalias nocapture align 512 "unpacked"="0.0" %dst, [1 x %"struct.ap_uint<32>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1struct.ap_uint<32>"([1 x i32]* %dst, [1 x %"struct.ap_uint<32>"]* nonnull %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1struct.ap_uint<32>"([1 x i32]* nocapture "unpacked"="0.0" %dst, [1 x %"struct.ap_uint<32>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1 x %"struct.ap_uint<32>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1 x %"struct.ap_uint<32>"], [1 x %"struct.ap_uint<32>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [1 x i32], [1 x i32]* %dst, i64 0, i64 %for.loop.idx2
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [720 x i12]* noalias nocapture readonly align 512 "unpacked"="1.0", [1 x %"struct.ap_uint<32>"]* noalias "unpacked"="2", [1 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a720struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %0, [720 x i12]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a1struct.ap_uint<32>.60"([1 x %"struct.ap_uint<32>"]* %2, [1 x i32]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a1struct.ap_uint<32>.60"([1 x %"struct.ap_uint<32>"]* noalias "unpacked"="0" %dst, [1 x i32]* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a1struct.ap_uint<32>.63"([1 x %"struct.ap_uint<32>"]* nonnull %dst, [1 x i32]* %src, i64 1)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a1struct.ap_uint<32>.63"([1 x %"struct.ap_uint<32>"]* "unpacked"="0" %dst, [1 x i32]* nocapture readonly "unpacked"="1.0" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1 x %"struct.ap_uint<32>"]* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [1 x i32], [1 x i32]* %src, i64 0, i64 %for.loop.idx2
  %dst.addr.0.0.06 = getelementptr [1 x %"struct.ap_uint<32>"], [1 x %"struct.ap_uint<32>"]* %dst, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.addr.0.0.05, align 4
  store i32 %1, i32* %dst.addr.0.0.06, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0a720struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>.70"([720 x i12]* noalias nocapture align 512 "unpacked"="0.0" %dst, [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @"arraycpy_hls.p0a720struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>.73"([720 x i12]* %dst, [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* nonnull %src, i64 720)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define void @"arraycpy_hls.p0a720struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>.73"([720 x i12]* nocapture "unpacked"="0.0" %dst, [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* readonly "unpacked"="1" %src, i64 "unpacked"="2" %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"], [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %src, i64 0, i64 %for.loop.idx2, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [720 x i12], [720 x i12]* %dst, i64 0, i64 %for.loop.idx2
  %1 = bitcast i12* %src.addr.0.0.05 to i16*
  %2 = load i16, i16* %1
  %3 = trunc i16 %2 to i12
  store i12 %3, i12* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

declare i8* @malloc(i64)

declare void @free(i8*)

declare void @apatb_ecg_cnn_hw([720 x i12]*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [720 x i12]* noalias nocapture readonly align 512 "unpacked"="1.0", [1 x %"struct.ap_uint<32>"]* noalias "unpacked"="2", [1 x i32]* noalias nocapture readonly align 512 "unpacked"="3.0") unnamed_addr #4 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a1struct.ap_uint<32>.60"([1 x %"struct.ap_uint<32>"]* %2, [1 x i32]* align 512 %3)
  ret void
}

declare void @ecg_cnn_hw_stub(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly, %"struct.ap_uint<32>"* noalias nocapture nonnull)

define void @ecg_cnn_hw_stub_wrapper([720 x i12]*, i32*) #5 {
entry:
  %2 = call i8* @malloc(i64 1440)
  %3 = bitcast i8* %2 to [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]*
  %4 = call i8* @malloc(i64 4)
  %5 = bitcast i8* %4 to [1 x %"struct.ap_uint<32>"]*
  %6 = bitcast i32* %1 to [1 x i32]*
  call void @copy_out([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %3, [720 x i12]* %0, [1 x %"struct.ap_uint<32>"]* %5, [1 x i32]* %6)
  %7 = bitcast [720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %3 to %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"*
  %8 = bitcast [1 x %"struct.ap_uint<32>"]* %5 to %"struct.ap_uint<32>"*
  call void @ecg_cnn_hw_stub(%"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"* %7, %"struct.ap_uint<32>"* %8)
  call void @copy_in([720 x %"struct.ap_fixed<12, 3, AP_TRN, AP_WRAP, 0>"]* %3, [720 x i12]* %0, [1 x %"struct.ap_uint<32>"]* %5, [1 x i32]* %6)
  call void @free(i8* %2)
  call void @free(i8* %4)
  ret void
}

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
