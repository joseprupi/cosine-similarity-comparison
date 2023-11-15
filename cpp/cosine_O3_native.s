	.file	"cosine.cpp"
# GNU C++14 (Debian 10.2.1-6) version 10.2.1 20210110 (x86_64-linux-gnu)
#	compiled by GNU C version 10.2.1 20210110, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.0, isl version isl-0.23-GMP

# warning: MPFR header version 4.1.0 differs from library version 4.0.2.
# warning: MPC header version 1.2.0 differs from library version 1.1.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE cosine.cpp
# -march=znver2 -mmmx -mno-3dnow -msse -msse2 -msse3 -mssse3 -msse4a -mcx16
# -msahf -mmovbe -maes -msha -mpclmul -mpopcnt -mabm -mno-lwp -mfma
# -mno-fma4 -mno-xop -mbmi -mno-sgx -mbmi2 -mno-pconfig -mwbnoinvd -mno-tbm
# -mavx -mavx2 -msse4.2 -msse4.1 -mlzcnt -mno-rtm -mno-hle -mrdrnd -mf16c
# -mfsgsbase -mrdseed -mprfchw -madx -mfxsr -mxsave -mxsaveopt -mno-avx512f
# -mno-avx512er -mno-avx512cd -mno-avx512pf -mno-prefetchwt1 -mclflushopt
# -mxsavec -mxsaves -mno-avx512dq -mno-avx512bw -mno-avx512vl
# -mno-avx512ifma -mno-avx512vbmi -mno-avx5124fmaps -mno-avx5124vnniw
# -mclwb -mmwaitx -mclzero -mno-pku -mrdpid -mno-gfni -mno-shstk
# -mno-avx512vbmi2 -mno-avx512vnni -mno-vaes -mno-vpclmulqdq
# -mno-avx512bitalg -mno-avx512vpopcntdq -mno-movdiri -mno-movdir64b
# -mno-waitpkg -mno-cldemote -mno-ptwrite -mno-avx512bf16 -mno-enqcmd
# -mno-avx512vp2intersect --param=l1-cache-size=32
# --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver2
# -auxbase-strip cosine_O3_native.s -O3 -fverbose-asm
# -fasynchronous-unwind-tables
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-functions -falign-jumps -falign-labels -falign-loops
# -fallocation-dce -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -fexceptions -fexpensive-optimizations
# -ffinite-loops -fforward-propagate -ffp-int-builtin-inexact
# -ffunction-cse -fgcse -fgcse-after-reload -fgcse-lm -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-cp-clone -fipa-icf
# -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
# -fipa-ra -fipa-reference -fipa-reference-addressable -fipa-sra
# -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -floop-interchange
# -floop-unroll-and-jam -flra-remat -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining
# -fpeel-loops -fpeephole -fpeephole2 -fplt -fpredictive-commoning
# -fprefetch-loop-arrays -free -freg-struct-return -freorder-blocks
# -freorder-blocks-and-partition -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-loops -fsplit-paths -fsplit-wide-types -fssa-backprop
# -fssa-phiopt -fstdarg-opt -fstore-merging -fstrict-aliasing
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-distribution
# -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-loop-vectorize -ftree-parallelize-loops=
# -ftree-partial-pre -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc
# -ftree-scev-cprop -ftree-sink -ftree-slp-vectorize -ftree-slsr -ftree-sra
# -ftree-switch-conversion -ftree-tail-merge -ftree-ter -ftree-vrp
# -funit-at-a-time -funswitch-loops -funwind-tables -fverbose-asm
# -fversion-loops-for-strides -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -mabm -madx -maes -malign-stringops
# -mavx -mavx2 -mbmi -mbmi2 -mclflushopt -mclwb -mclzero -mcx16 -mf16c
# -mfancy-math-387 -mfma -mfp-ret-in-387 -mfsgsbase -mfxsr -mglibc
# -mieee-fp -mlong-double-80 -mlzcnt -mmmx -mmovbe -mmwaitx -mpclmul
# -mpopcnt -mprfchw -mpush-args -mrdpid -mrdrnd -mrdseed -mred-zone -msahf
# -msha -msse -msse2 -msse3 -msse4 -msse4.1 -msse4.2 -msse4a -mssse3 -mstv
# -mtls-direct-seg-refs -mvzeroupper -mwbnoinvd -mxsave -mxsavec -mxsaveopt
# -mxsaves

	.text
	.p2align 4
	.globl	_Z17cosine_similarityPfS_
	.type	_Z17cosine_similarityPfS_, @function
_Z17cosine_similarityPfS_:
.LFB3678:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$40, %rsp	#,
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %ecx	# SIZE, SIZE.0_35
	testl	%ecx, %ecx	# SIZE.0_35
	jle	.L14	#,
	leal	-1(%rcx), %r8d	#, _56
	cmpl	$6, %r8d	#, _56
	jbe	.L15	#,
	movl	%ecx, %edx	# SIZE.0_35, bnd.60
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm3, %xmm3, %xmm3	# tmp262
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# ivtmp.94
	shrl	$3, %edx	#,
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm7	# tmp262, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm5	# tmp262, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm6	# tmp262, dot
	salq	$5, %rdx	#, _4
	.p2align 4
	.p2align 3
.L4:
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovups	(%rdi,%rax), %ymm4	# MEM[base: A_20(D), index: ivtmp.94_164, offset: 0B], tmp268
	vmulps	(%rsi,%rax), %ymm4, %ymm1	# MEM[base: B_21(D), index: ivtmp.94_164, offset: 0B], tmp268, vect__10.69
	vshufps	$85, %xmm1, %xmm1, %xmm0	#, tmp214, tmp214, stmp_dot_22.70
	vshufps	$255, %xmm1, %xmm1, %xmm4	#, tmp214, tmp214, stmp_dot_22.70
	vaddss	%xmm1, %xmm6, %xmm2	# stmp_dot_22.70, dot, stmp_dot_22.70
	vextractf128	$0x1, %ymm1, %xmm6	# vect__10.69, tmp218
	vaddss	%xmm0, %xmm2, %xmm2	# stmp_dot_22.70, stmp_dot_22.70, stmp_dot_22.70
	vunpckhps	%xmm1, %xmm1, %xmm0	# tmp214, tmp214, stmp_dot_22.70
	vaddss	%xmm0, %xmm2, %xmm2	# stmp_dot_22.70, stmp_dot_22.70, stmp_dot_22.70
	vshufps	$85, %xmm6, %xmm6, %xmm0	#, tmp218, tmp218, stmp_dot_22.70
	vaddss	%xmm4, %xmm2, %xmm2	# stmp_dot_22.70, stmp_dot_22.70, stmp_dot_22.70
	vaddss	%xmm6, %xmm2, %xmm2	# stmp_dot_22.70, stmp_dot_22.70, stmp_dot_22.70
	vaddss	%xmm0, %xmm2, %xmm2	# stmp_dot_22.70, stmp_dot_22.70, stmp_dot_22.70
	vunpckhps	%xmm6, %xmm6, %xmm0	# tmp218, tmp218, stmp_dot_22.70
# cosine.cpp:16:         dot += A[i] * B[i];
	vshufps	$255, %xmm6, %xmm6, %xmm6	#, tmp218, tmp218, stmp_dot_22.70
	vaddss	%xmm0, %xmm2, %xmm2	# stmp_dot_22.70, stmp_dot_22.70, stmp_dot_22.70
	vaddss	%xmm6, %xmm2, %xmm6	# stmp_dot_22.70, stmp_dot_22.70, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmovups	(%rdi,%rax), %ymm2	# MEM[base: A_20(D), index: ivtmp.94_164, offset: 0B], tmp269
	vmulps	%ymm2, %ymm2, %ymm2	#, tmp269, vect__12.71
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp224, tmp224, stmp_denom_a_23.72
	vshufps	$255, %xmm2, %xmm2, %xmm4	#, tmp224, tmp224, stmp_denom_a_23.72
	vaddss	%xmm2, %xmm5, %xmm0	# stmp_denom_a_23.72, denom_a, stmp_denom_a_23.72
	vextractf128	$0x1, %ymm2, %xmm5	# vect__12.71, tmp228
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_23.72, stmp_denom_a_23.72, stmp_denom_a_23.72
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp224, tmp224, stmp_denom_a_23.72
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_23.72, stmp_denom_a_23.72, stmp_denom_a_23.72
	vshufps	$85, %xmm5, %xmm5, %xmm1	#, tmp228, tmp228, stmp_denom_a_23.72
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_denom_a_23.72, stmp_denom_a_23.72, stmp_denom_a_23.72
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmovups	(%rsi,%rax), %ymm4	# MEM[base: B_21(D), index: ivtmp.94_164, offset: 0B], tmp270
	addq	$32, %rax	#, ivtmp.94
	vaddss	%xmm5, %xmm0, %xmm0	# stmp_denom_a_23.72, stmp_denom_a_23.72, stmp_denom_a_23.72
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_23.72, stmp_denom_a_23.72, stmp_denom_a_23.72
	vunpckhps	%xmm5, %xmm5, %xmm1	# tmp228, tmp228, stmp_denom_a_23.72
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vshufps	$255, %xmm5, %xmm5, %xmm5	#, tmp228, tmp228, stmp_denom_a_23.72
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulps	%ymm4, %ymm4, %ymm4	#, tmp270, vect__13.73
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_23.72, stmp_denom_a_23.72, stmp_denom_a_23.72
	vshufps	$85, %xmm4, %xmm4, %xmm2	#, tmp234, tmp234, stmp_denom_b_24.74
	vshufps	$255, %xmm4, %xmm4, %xmm1	#, tmp234, tmp234, stmp_denom_b_24.74
	vaddss	%xmm5, %xmm0, %xmm5	# stmp_denom_a_23.72, stmp_denom_a_23.72, denom_a
	vaddss	%xmm4, %xmm7, %xmm0	# stmp_denom_b_24.74, denom_b, stmp_denom_b_24.74
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_b_24.74, stmp_denom_b_24.74, stmp_denom_b_24.74
	vunpckhps	%xmm4, %xmm4, %xmm2	# tmp234, tmp234, stmp_denom_b_24.74
	vextractf128	$0x1, %ymm4, %xmm4	# vect__13.73, tmp238
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_b_24.74, stmp_denom_b_24.74, stmp_denom_b_24.74
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_b_24.74, stmp_denom_b_24.74, stmp_denom_b_24.74
	vshufps	$85, %xmm4, %xmm4, %xmm1	#, tmp238, tmp238, stmp_denom_b_24.74
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_denom_b_24.74, stmp_denom_b_24.74, stmp_denom_b_24.74
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_b_24.74, stmp_denom_b_24.74, stmp_denom_b_24.74
	vunpckhps	%xmm4, %xmm4, %xmm1	# tmp238, tmp238, stmp_denom_b_24.74
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vshufps	$255, %xmm4, %xmm4, %xmm4	#, tmp238, tmp238, stmp_denom_b_24.74
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_b_24.74, stmp_denom_b_24.74, stmp_denom_b_24.74
	vaddss	%xmm4, %xmm0, %xmm7	# stmp_denom_b_24.74, stmp_denom_b_24.74, denom_b
	cmpq	%rax, %rdx	# ivtmp.94, _4
	jne	.L4	#,
	movl	%ecx, %eax	# SIZE.0_35, niters_vector_mult_vf.61
	andl	$-8, %eax	#,
	movl	%eax, %edx	# niters_vector_mult_vf.61, tmp.78
	cmpl	%eax, %ecx	# niters_vector_mult_vf.61, SIZE.0_35
	je	.L23	#,
	vzeroupper
.L3:
	movl	%ecx, %r9d	# SIZE.0_35, niters.75
	subl	%eax, %r8d	# niters_vector_mult_vf.61, tmp244
	subl	%eax, %r9d	# niters_vector_mult_vf.61, niters.75
	cmpl	$2, %r8d	#, tmp244
	jbe	.L6	#,
	salq	$2, %rax	#, _181
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovups	(%rdi,%rax), %xmm4	# MEM <vector(4) float> [(float *)vectp_A.80_179], MEM <vector(4) float> [(float *)vectp_A.80_179]
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovups	(%rsi,%rax), %xmm1	# MEM <vector(4) float> [(float *)vectp_B.83_185], MEM <vector(4) float> [(float *)vectp_B.83_185]
	movl	%r9d, %eax	# niters.75, niters_vector_mult_vf.77
	andl	$-4, %eax	#, niters_vector_mult_vf.77
	addl	%eax, %edx	# niters_vector_mult_vf.77, tmp.78
# cosine.cpp:16:         dot += A[i] * B[i];
	vmulps	%xmm1, %xmm4, %xmm8	# MEM <vector(4) float> [(float *)vectp_B.83_185], MEM <vector(4) float> [(float *)vectp_A.80_179], vect__44.85
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_B.83_185], MEM <vector(4) float> [(float *)vectp_B.83_185], vect__18.89
	vaddss	%xmm8, %xmm6, %xmm2	# stmp_dot_42.86, dot, stmp_dot_42.86
	vshufps	$85, %xmm8, %xmm8, %xmm6	#, vect__44.85, vect__44.85, stmp_dot_42.86
	vaddss	%xmm6, %xmm2, %xmm2	# stmp_dot_42.86, stmp_dot_42.86, stmp_dot_42.86
	vunpckhps	%xmm8, %xmm8, %xmm6	# vect__44.85, vect__44.85, stmp_dot_42.86
# cosine.cpp:16:         dot += A[i] * B[i];
	vaddss	%xmm6, %xmm2, %xmm2	# stmp_dot_42.86, stmp_dot_42.86, stmp_dot_42.86
	vshufps	$255, %xmm8, %xmm8, %xmm6	#, vect__44.85, vect__44.85, stmp_dot_42.86
	vaddss	%xmm6, %xmm2, %xmm6	# stmp_dot_42.86, stmp_dot_42.86, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmulps	%xmm4, %xmm4, %xmm2	# MEM <vector(4) float> [(float *)vectp_A.80_179], MEM <vector(4) float> [(float *)vectp_A.80_179], vect__36.87
	vaddss	%xmm1, %xmm7, %xmm4	# stmp_denom_b_17.90, denom_b, stmp_denom_b_17.90
	vshufps	$85, %xmm1, %xmm1, %xmm7	#, vect__18.89, vect__18.89, stmp_denom_b_17.90
	vaddss	%xmm2, %xmm5, %xmm0	# stmp_denom_a_32.88, denom_a, stmp_denom_a_32.88
	vshufps	$85, %xmm2, %xmm2, %xmm5	#, vect__36.87, vect__36.87, stmp_denom_a_32.88
	vaddss	%xmm7, %xmm4, %xmm4	# stmp_denom_b_17.90, stmp_denom_b_17.90, stmp_denom_b_17.90
	vunpckhps	%xmm1, %xmm1, %xmm7	# vect__18.89, vect__18.89, stmp_denom_b_17.90
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__18.89, vect__18.89, stmp_denom_b_17.90
	vaddss	%xmm5, %xmm0, %xmm5	# stmp_denom_a_32.88, stmp_denom_a_32.88, stmp_denom_a_32.88
	vunpckhps	%xmm2, %xmm2, %xmm0	# vect__36.87, vect__36.87, stmp_denom_a_32.88
	vaddss	%xmm7, %xmm4, %xmm7	# stmp_denom_b_17.90, stmp_denom_b_17.90, stmp_denom_b_17.90
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vshufps	$255, %xmm2, %xmm2, %xmm2	#, vect__36.87, vect__36.87, stmp_denom_a_32.88
	vaddss	%xmm0, %xmm5, %xmm5	# stmp_denom_a_32.88, stmp_denom_a_32.88, stmp_denom_a_32.88
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vaddss	%xmm1, %xmm7, %xmm7	# stmp_denom_b_17.90, stmp_denom_b_17.90, denom_b
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vaddss	%xmm2, %xmm5, %xmm5	# stmp_denom_a_32.88, stmp_denom_a_32.88, denom_a
	cmpl	%eax, %r9d	# niters_vector_mult_vf.77, niters.75
	je	.L5	#,
.L6:
# cosine.cpp:16:         dot += A[i] * B[i];
	movslq	%edx, %rax	# tmp.78, tmp.78
# cosine.cpp:16:         dot += A[i] * B[i];
	salq	$2, %rax	#, _8
	vmovss	(%rdi,%rax), %xmm1	# *_9, _10
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	(%rsi,%rax), %xmm0	# *_12, _13
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	leal	1(%rdx), %eax	#, i
# cosine.cpp:16:         dot += A[i] * B[i];
	vfmadd231ss	%xmm0, %xmm1, %xmm6	# _13, _10, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm5	# _10, _10, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm7	# _13, _13, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%eax, %ecx	# i, SIZE.0_35
	jle	.L5	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	cltq
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	addl	$2, %edx	#, i
# cosine.cpp:16:         dot += A[i] * B[i];
	salq	$2, %rax	#, _142
	vmovss	(%rdi,%rax), %xmm1	# *_141, _140
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	(%rsi,%rax), %xmm0	# *_68, _69
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm5	# _140, _140, denom_a
# cosine.cpp:16:         dot += A[i] * B[i];
	vfmadd231ss	%xmm1, %xmm0, %xmm6	# _140, _69, dot
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm7	# _69, _69, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%edx, %ecx	# i, SIZE.0_35
	jle	.L5	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	movslq	%edx, %rdx	# i, i
# cosine.cpp:16:         dot += A[i] * B[i];
	salq	$2, %rdx	#, _150
	vmovss	(%rdi,%rdx), %xmm1	# *_151, _152
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	(%rsi,%rdx), %xmm0	# *_153, _154
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm5	# _152, _152, denom_a
# cosine.cpp:16:         dot += A[i] * B[i];
	vfmadd231ss	%xmm0, %xmm1, %xmm6	# _154, _152, dot
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm7	# _154, _154, denom_b
.L5:
	vucomiss	%xmm5, %xmm3	# denom_a, tmp262
	ja	.L24	#,
.L2:
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	vsqrtss	%xmm5, %xmm5, %xmm5	# denom_a, _28
.L10:
	vucomiss	%xmm7, %xmm3	# denom_b, tmp262
	ja	.L19	#,
	vsqrtss	%xmm7, %xmm7, %xmm0	# denom_b, _27
.L13:
# cosine.cpp:21: }
	movq	-8(%rbp), %r10	#,
	.cfi_remember_state
	.cfi_def_cfa 10, 0
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	vmulss	%xmm0, %xmm5, %xmm0	# _27, _28, tmp260
# cosine.cpp:21: }
	leave	
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	vdivss	%xmm0, %xmm6, %xmm0	# tmp260, dot, tmp259
# cosine.cpp:21: }
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L14:
	.cfi_restore_state
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm3, %xmm3, %xmm3	# tmp262
	vmovaps	%xmm3, %xmm7	# tmp262, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm5	# tmp262, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm6	# tmp262, dot
	jmp	.L2	#
	.p2align 4
	.p2align 3
.L23:
	vzeroupper
	jmp	.L5	#
.L15:
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm3, %xmm3, %xmm3	# tmp262
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%edx, %edx	# tmp.78
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm7	# tmp262, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm5	# tmp262, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm6	# tmp262, dot
	jmp	.L3	#
.L24:
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	vmovaps	%xmm5, %xmm0	# denom_a,
	vmovss	%xmm3, -28(%rbp)	# tmp262, %sfp
	vmovss	%xmm7, -24(%rbp)	# denom_b, %sfp
	vmovss	%xmm6, -20(%rbp)	# dot, %sfp
	call	sqrtf@PLT	#
	vmovss	-28(%rbp), %xmm3	# %sfp, tmp262
	vmovss	-24(%rbp), %xmm7	# %sfp, denom_b
	vmovss	-20(%rbp), %xmm6	# %sfp, dot
	vmovaps	%xmm0, %xmm5	# tmp265, _28
	jmp	.L10	#
.L19:
	vmovaps	%xmm7, %xmm0	# denom_b,
	vmovss	%xmm5, -24(%rbp)	# _28, %sfp
	vmovss	%xmm6, -20(%rbp)	# dot, %sfp
	call	sqrtf@PLT	#
	vmovss	-24(%rbp), %xmm5	# %sfp, _28
	vmovss	-20(%rbp), %xmm6	# %sfp, dot
	jmp	.L13	#
	.cfi_endproc
.LFE3678:
	.size	_Z17cosine_similarityPfS_, .-_Z17cosine_similarityPfS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"r"
.LC2:
	.string	"../tools/vectors.csv"
.LC3:
	.string	"%g,%g\n"
.LC5:
	.string	" ms\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3679:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
# cosine.cpp:24: {
	pushq	-8(%r10)	#
	pushq	%rbp	#
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp	#,
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	leaq	-52(%rbp), %r15	#, tmp288
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx	#
	subq	$64, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movslq	SIZE(%rip), %rax	# SIZE, SIZE
	leaq	39(,%rax,4), %rax	#, tmp213
	shrq	$4, %rax	#, tmp215
	salq	$4, %rax	#, tmp217
	subq	%rax, %rsp	# tmp217,
	leaq	31(%rsp), %r8	#, tmp219
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	subq	%rax, %rsp	# tmp217,
	leaq	31(%rsp), %r9	#, tmp230
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %r8	#, tmp219
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %r9	#, tmp230
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%r8, %r13	# tmp219, tmp221
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%r9, %r14	# tmp230, tmp232
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	call	fopen@PLT	#
	movq	%r13, %r12	# tmp221, ivtmp.156
	movq	%rax, -80(%rbp)	# tmp295, %sfp
	leaq	-56(%rbp), %rax	#, tmp287
	movq	%r14, %rbx	# tmp232, ivtmp.158
	movq	%rax, -88(%rbp)	# tmp287, %sfp
	jmp	.L27	#
	.p2align 4
	.p2align 3
.L44:
# cosine.cpp:35:         A[i] = a;
	vmovss	-56(%rbp), %xmm0	# a, a
	addq	$4, %r12	#, ivtmp.156
	addq	$4, %rbx	#, ivtmp.158
	vmovss	%xmm0, -4(%r12)	# a, MEM[base: _192, offset: 0B]
# cosine.cpp:36:         B[i] = b;
	vmovss	-52(%rbp), %xmm0	# b, b
	vmovss	%xmm0, -4(%rbx)	# b, MEM[base: _213, offset: 0B]
.L27:
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	movq	-88(%rbp), %rdx	# %sfp,
	xorl	%eax, %eax	#
	movq	%r15, %rcx	# tmp288,
	leaq	.LC3(%rip), %rsi	#,
	movq	-80(%rbp), %rdi	# %sfp,
	call	__isoc99_fscanf@PLT	#
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, tmp296
	je	.L44	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_14
	testl	%eax, %eax	# EXECUTIONS.8_14
	jle	.L28	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	xorl	%r12d, %r12d	# i
	.p2align 4
	.p2align 3
.L38:
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %ecx	# SIZE, SIZE.0_61
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	movq	%rax, %rbx	# tmp297, t1
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	testl	%ecx, %ecx	# SIZE.0_61
	jle	.L29	#,
	leal	-1(%rcx), %eax	#, tmp237
	cmpl	$6, %eax	#, tmp237
	jbe	.L39	#,
	movl	%ecx, %edx	# SIZE.0_61, bnd.110
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm4, %xmm4, %xmm4	# tmp289
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# ivtmp.141
	shrl	$3, %edx	#,
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm4, %xmm6	#, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm4, %xmm7	#, denom_a
	salq	$5, %rdx	#, _171
	.p2align 4
	.p2align 3
.L31:
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmovaps	0(%r13,%rax), %ymm3	# MEM[base: A.2_21, index: ivtmp.141_92, offset: 0B], tmp309
	vmulps	%ymm3, %ymm3, %ymm3	#, tmp309, vect__62.119
	vshufps	$85, %xmm3, %xmm3, %xmm1	#, tmp240, tmp240, stmp_denom_a_64.120
	vshufps	$255, %xmm3, %xmm3, %xmm5	#, tmp240, tmp240, stmp_denom_a_64.120
	vaddss	%xmm3, %xmm7, %xmm0	# stmp_denom_a_64.120, denom_a, stmp_denom_a_64.120
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_64.120, stmp_denom_a_64.120, stmp_denom_a_64.120
	vunpckhps	%xmm3, %xmm3, %xmm1	# tmp240, tmp240, stmp_denom_a_64.120
	vextractf128	$0x1, %ymm3, %xmm3	# vect__62.119, tmp244
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_64.120, stmp_denom_a_64.120, stmp_denom_a_64.120
	vshufps	$85, %xmm3, %xmm3, %xmm1	#, tmp244, tmp244, stmp_denom_a_64.120
	vaddss	%xmm5, %xmm0, %xmm0	# stmp_denom_a_64.120, stmp_denom_a_64.120, stmp_denom_a_64.120
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_denom_a_64.120, stmp_denom_a_64.120, stmp_denom_a_64.120
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_64.120, stmp_denom_a_64.120, stmp_denom_a_64.120
	vunpckhps	%xmm3, %xmm3, %xmm1	# tmp244, tmp244, stmp_denom_a_64.120
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vshufps	$255, %xmm3, %xmm3, %xmm3	#, tmp244, tmp244, stmp_denom_a_64.120
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_64.120, stmp_denom_a_64.120, stmp_denom_a_64.120
	vaddss	%xmm3, %xmm0, %xmm7	# stmp_denom_a_64.120, stmp_denom_a_64.120, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmovaps	(%r14,%rax), %ymm3	# MEM[base: B.4_23, index: ivtmp.141_92, offset: 0B], tmp310
	addq	$32, %rax	#, ivtmp.141
	vmulps	%ymm3, %ymm3, %ymm2	#, tmp310, vect__65.121
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp250, tmp250, stmp_denom_b_67.122
	vshufps	$255, %xmm2, %xmm2, %xmm5	#, tmp250, tmp250, stmp_denom_b_67.122
	vaddss	%xmm2, %xmm6, %xmm0	# stmp_denom_b_67.122, denom_b, stmp_denom_b_67.122
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_b_67.122, stmp_denom_b_67.122, stmp_denom_b_67.122
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp250, tmp250, stmp_denom_b_67.122
	vextractf128	$0x1, %ymm2, %xmm2	# vect__65.121, tmp254
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_b_67.122, stmp_denom_b_67.122, stmp_denom_b_67.122
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp254, tmp254, stmp_denom_b_67.122
	vaddss	%xmm5, %xmm0, %xmm0	# stmp_denom_b_67.122, stmp_denom_b_67.122, stmp_denom_b_67.122
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_b_67.122, stmp_denom_b_67.122, stmp_denom_b_67.122
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_b_67.122, stmp_denom_b_67.122, stmp_denom_b_67.122
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp254, tmp254, stmp_denom_b_67.122
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vshufps	$255, %xmm2, %xmm2, %xmm2	#, tmp254, tmp254, stmp_denom_b_67.122
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_b_67.122, stmp_denom_b_67.122, stmp_denom_b_67.122
	vaddss	%xmm2, %xmm0, %xmm6	# stmp_denom_b_67.122, stmp_denom_b_67.122, denom_b
	cmpq	%rdx, %rax	# _171, ivtmp.141
	jne	.L31	#,
	movl	%ecx, %eax	# SIZE.0_61, niters_vector_mult_vf.111
	andl	$-8, %eax	#,
	movl	%eax, %edx	# niters_vector_mult_vf.111, tmp.126
	cmpl	%ecx, %eax	# SIZE.0_61, niters_vector_mult_vf.111
	je	.L45	#,
	vzeroupper
.L30:
	movl	%ecx, %esi	# SIZE.0_61, niters.123
	subl	%eax, %esi	# niters_vector_mult_vf.111, niters.123
	leal	-1(%rsi), %edi	#, tmp260
	cmpl	$2, %edi	#, tmp260
	jbe	.L33	#,
	salq	$2, %rax	#, _185
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovaps	0(%r13,%rax), %xmm2	# MEM <vector(4) float> [(float *)vectp_A.128_183], vect__66.129
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovaps	(%r14,%rax), %xmm1	# MEM <vector(4) float> [(float *)vectp_B.131_189], vect__60.132
	movl	%esi, %eax	# niters.123, niters_vector_mult_vf.125
	andl	$-4, %eax	#, niters_vector_mult_vf.125
	addl	%eax, %edx	# niters_vector_mult_vf.125, tmp.126
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmulps	%xmm2, %xmm2, %xmm2	# vect__66.129, vect__66.129, vect__59.133
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulps	%xmm1, %xmm1, %xmm1	# vect__60.132, vect__60.132, vect__10.135
	vaddss	%xmm2, %xmm7, %xmm0	# stmp_denom_a_51.134, denom_a, stmp_denom_a_51.134
	vshufps	$85, %xmm2, %xmm2, %xmm3	#, vect__59.133, vect__59.133, stmp_denom_a_51.134
	vunpckhps	%xmm2, %xmm2, %xmm7	# vect__59.133, vect__59.133, stmp_denom_a_51.134
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vshufps	$255, %xmm2, %xmm2, %xmm2	#, vect__59.133, vect__59.133, stmp_denom_a_51.134
	vaddss	%xmm3, %xmm0, %xmm3	# stmp_denom_a_51.134, stmp_denom_a_51.134, stmp_denom_a_51.134
	vaddss	%xmm7, %xmm3, %xmm7	# stmp_denom_a_51.134, stmp_denom_a_51.134, stmp_denom_a_51.134
	vaddss	%xmm2, %xmm7, %xmm7	# stmp_denom_a_51.134, stmp_denom_a_51.134, denom_a
	vaddss	%xmm1, %xmm6, %xmm2	# stmp_denom_b_9.136, denom_b, stmp_denom_b_9.136
	vshufps	$85, %xmm1, %xmm1, %xmm6	#, vect__10.135, vect__10.135, stmp_denom_b_9.136
	vaddss	%xmm6, %xmm2, %xmm2	# stmp_denom_b_9.136, stmp_denom_b_9.136, stmp_denom_b_9.136
	vunpckhps	%xmm1, %xmm1, %xmm6	# vect__10.135, vect__10.135, stmp_denom_b_9.136
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__10.135, vect__10.135, stmp_denom_b_9.136
	vaddss	%xmm6, %xmm2, %xmm6	# stmp_denom_b_9.136, stmp_denom_b_9.136, stmp_denom_b_9.136
	vaddss	%xmm1, %xmm6, %xmm6	# stmp_denom_b_9.136, stmp_denom_b_9.136, denom_b
	cmpl	%eax, %esi	# niters_vector_mult_vf.125, niters.123
	je	.L32	#,
.L33:
# cosine.cpp:16:         dot += A[i] * B[i];
	movslq	%edx, %rax	# tmp.126, tmp.126
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	leal	1(%rdx), %esi	#, i
# cosine.cpp:16:         dot += A[i] * B[i];
	salq	$2, %rax	#, _56
	vmovss	0(%r13,%rax), %xmm1	# *_57, _58
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	(%r14,%rax), %xmm0	# *_62, _65
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm7	# _58, _58, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm6	# _65, _65, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%esi, %ecx	# i, SIZE.0_61
	jle	.L32	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	4(%r13,%rax), %xmm1	# *_7, _152
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	4(%r14,%rax), %xmm0	# *_151, _101
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	addl	$2, %edx	#, i
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm7	# _152, _152, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm6	# _101, _101, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%edx, %ecx	# i, SIZE.0_61
	jle	.L32	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	8(%r13,%rax), %xmm1	# *_160, _161
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	8(%r14,%rax), %xmm0	# *_162, _163
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm7	# _161, _161, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm6	# _163, _163, denom_b
.L32:
	vucomiss	%xmm7, %xmm4	# denom_a, tmp289
	ja	.L46	#,
.L35:
	vucomiss	%xmm6, %xmm4	# denom_b, tmp289
	ja	.L47	#,
.L29:
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp317
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	incl	%r12d	# i
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# t1, tmp275
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vcvtsi2sdq	%rax, %xmm4, %xmm0	# tmp275, tmp317, tmp303
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vdivsd	.LC4(%rip), %xmm0, %xmm0	#, tmp276, tmp277
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_14
# cosine.cpp:49:         normal_accum += duration.count();
	vaddsd	-72(%rbp), %xmm0, %xmm4	# %sfp, tmp277, normal_accum
	vmovsd	%xmm4, -72(%rbp)	# normal_accum, %sfp
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%r12d, %eax	# i, EXECUTIONS.8_14
	jg	.L38	#,
.L28:
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp320
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#,
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	vcvtsi2sdl	%eax, %xmm4, %xmm0	# EXECUTIONS.8_14, tmp320, tmp304
	vmovsd	-72(%rbp), %xmm4	# %sfp, normal_accum
	vdivsd	%xmm0, %xmm4, %xmm0	# tmp279, normal_accum, tmp280
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/10/ostream:611: 	__ostream_insert(__out, __s,
	movl	$4, %edx	#,
	leaq	.LC5(%rip), %rsi	#,
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	movq	%rax, %rdi	# tmp300, _49
# /usr/include/c++/10/ostream:611: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# cosine.cpp:53: }
	leaq	-48(%rbp), %rsp	#,
	xorl	%eax, %eax	#
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L45:
	.cfi_restore_state
	vzeroupper
	jmp	.L32	#
.L39:
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm4, %xmm4, %xmm4	# tmp289
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%edx, %edx	# tmp.126
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm4, %xmm6	#, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm4, %xmm7	#, denom_a
	jmp	.L30	#
.L46:
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	vmovaps	%xmm7, %xmm0	# denom_a,
	vmovss	%xmm4, -88(%rbp)	# tmp289, %sfp
	vmovss	%xmm6, -80(%rbp)	# denom_b, %sfp
	call	sqrtf@PLT	#
	vmovss	-88(%rbp), %xmm4	# %sfp, tmp289
	vmovss	-80(%rbp), %xmm6	# %sfp, denom_b
	jmp	.L35	#
.L47:
	vmovaps	%xmm6, %xmm0	# denom_b,
	call	sqrtf@PLT	#
	jmp	.L29	#
	.cfi_endproc
.LFE3679:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB4244:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/c++/10/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rdi	#,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
	leaq	__dso_handle(%rip), %rdx	#,
	leaq	_ZStL8__ioinit(%rip), %rsi	#,
# cosine.cpp:53: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
# /usr/include/c++/10/iostream:74:   static ios_base::Init __ioinit;
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE4244:
	.size	_GLOBAL__sub_I_SIZE, .-_GLOBAL__sub_I_SIZE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_SIZE
	.globl	EXECUTIONS
	.data
	.align 4
	.type	EXECUTIONS, @object
	.size	EXECUTIONS, 4
EXECUTIONS:
	.long	1000
	.globl	SIZE
	.align 4
	.type	SIZE, @object
	.size	SIZE, 4
SIZE:
	.long	640000
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.hidden	__dso_handle
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
