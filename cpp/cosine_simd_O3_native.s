	.file	"cosine_simd.cpp"
# GNU C++14 (Debian 10.2.1-6) version 10.2.1 20210110 (x86_64-linux-gnu)
#	compiled by GNU C version 10.2.1 20210110, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.0, isl version isl-0.23-GMP

# warning: MPFR header version 4.1.0 differs from library version 4.0.2.
# warning: MPC header version 1.2.0 differs from library version 1.1.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE
# cosine_simd.cpp -march=znver2 -mmmx -mno-3dnow -msse -msse2 -msse3
# -mssse3 -msse4a -mcx16 -msahf -mmovbe -maes -msha -mpclmul -mpopcnt -mabm
# -mno-lwp -mfma -mno-fma4 -mno-xop -mbmi -mno-sgx -mbmi2 -mno-pconfig
# -mwbnoinvd -mno-tbm -mavx -mavx2 -msse4.2 -msse4.1 -mlzcnt -mno-rtm
# -mno-hle -mrdrnd -mf16c -mfsgsbase -mrdseed -mprfchw -madx -mfxsr -mxsave
# -mxsaveopt -mno-avx512f -mno-avx512er -mno-avx512cd -mno-avx512pf
# -mno-prefetchwt1 -mclflushopt -mxsavec -mxsaves -mno-avx512dq
# -mno-avx512bw -mno-avx512vl -mno-avx512ifma -mno-avx512vbmi
# -mno-avx5124fmaps -mno-avx5124vnniw -mclwb -mmwaitx -mclzero -mno-pku
# -mrdpid -mno-gfni -mno-shstk -mno-avx512vbmi2 -mno-avx512vnni -mno-vaes
# -mno-vpclmulqdq -mno-avx512bitalg -mno-avx512vpopcntdq -mno-movdiri
# -mno-movdir64b -mno-waitpkg -mno-cldemote -mno-ptwrite -mno-avx512bf16
# -mno-enqcmd -mno-avx512vp2intersect --param=l1-cache-size=32
# --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver2
# -auxbase-strip cosine_simd_O3_native.s -O3 -fverbose-asm
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
	.globl	_Z22cosine_similarity_simdPfS_
	.type	_Z22cosine_similarity_simdPfS_, @function
_Z22cosine_similarity_simdPfS_:
.LFB8485:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
# cosine_simd.cpp:26:     __m256 sum_B = _mm256_setzero_ps();
	vxorps	%xmm1, %xmm1, %xmm1	# sum_B
# cosine_simd.cpp:22: {
	pushq	-8(%r10)	#
	pushq	%rbp	#
# cosine_simd.cpp:25:     __m256 sum_A = _mm256_setzero_ps();
	vmovaps	%ymm1, %ymm2	#, sum_A
# cosine_simd.cpp:24:     __m256 sum_dot = _mm256_setzero_ps();
	vmovaps	%ymm1, %ymm0	#, sum_dot
	.cfi_escape 0x10,0x6,0x2,0x76,0
# cosine_simd.cpp:22: {
	movq	%rsp, %rbp	#,
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$40, %rsp	#,
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	movslq	SIZE(%rip), %rdx	# SIZE, _67
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	testq	%rdx, %rdx	# _67
	je	.L2	#,
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	xorl	%eax, %eax	# i
	.p2align 4
	.p2align 3
.L3:
# /usr/lib/gcc/x86_64-linux-gnu/10/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vmovups	(%rdi,%rax,4), %ymm5	# MEM[base: A_16(D), index: i_68, step: 4, offset: 0B], tmp160
	vmovups	(%rsi,%rax,4), %ymm7	# MEM[base: B_18(D), index: i_68, step: 4, offset: 0B], tmp162
	vfmadd231ps	(%rsi,%rax,4), %ymm5, %ymm0	# MEM[base: B_18(D), index: i_68, step: 4, offset: 0B], tmp160, sum_dot
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	addq	$8, %rax	#, i
# /usr/lib/gcc/x86_64-linux-gnu/10/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vfmadd231ps	%ymm5, %ymm5, %ymm2	#, tmp161, sum_A
	vfmadd231ps	%ymm7, %ymm7, %ymm1	#, tmp162, sum_B
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	cmpq	%rdx, %rax	# _67, i
	jb	.L3	#,
.L2:
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:519:   return (__m128) __builtin_ia32_vextractf128_ps256 ((__v8sf)__X, __N);
	vextractf128	$0x1, %ymm0, %xmm3	# sum_dot, tmp126
	vxorps	%xmm4, %xmm4, %xmm4	# tmp155
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm3, %xmm0, %xmm0	# tmp126, tmp128, _15
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	vmovhlps	%xmm0, %xmm0, %xmm3	# _15, _15, tmp130
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm0, %xmm3, %xmm0	# _15, tmp130, _13
# /usr/lib/gcc/x86_64-linux-gnu/10/include/pmmintrin.h:70:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	vmovshdup	%xmm0, %xmm3	# _13, tmp131
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	vaddss	%xmm3, %xmm0, %xmm0	# tmp131, _13, tmp133
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:969:   return ((__v4sf)__A)[0];
	vmovaps	%xmm0, %xmm3	# tmp133, _29
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:519:   return (__m128) __builtin_ia32_vextractf128_ps256 ((__v8sf)__X, __N);
	vextractf128	$0x1, %ymm2, %xmm0	# sum_A, tmp134
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm2, %xmm0, %xmm2	# tmp136, tmp134, _32
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	vmovhlps	%xmm2, %xmm2, %xmm0	# _32, _32, tmp138
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm0, %xmm2, %xmm2	# tmp138, _32, _34
# /usr/lib/gcc/x86_64-linux-gnu/10/include/pmmintrin.h:70:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	vmovshdup	%xmm2, %xmm0	# _34, tmp139
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	vaddss	%xmm0, %xmm2, %xmm2	# tmp139, _34, tmp141
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:519:   return (__m128) __builtin_ia32_vextractf128_ps256 ((__v8sf)__X, __N);
	vextractf128	$0x1, %ymm1, %xmm0	# sum_B, tmp142
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm1, %xmm0, %xmm1	# tmp144, tmp142, _40
	vucomiss	%xmm2, %xmm4	# _37, tmp155
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	vmovhlps	%xmm1, %xmm1, %xmm0	# _40, _40, tmp146
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm0, %xmm1, %xmm1	# tmp146, _40, _42
# /usr/lib/gcc/x86_64-linux-gnu/10/include/pmmintrin.h:70:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	vmovshdup	%xmm1, %xmm0	# _42, tmp147
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	vaddss	%xmm0, %xmm1, %xmm1	# tmp147, _42, tmp149
	ja	.L14	#,
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	vsqrtss	%xmm2, %xmm2, %xmm2	# _37, _47
	vzeroupper
.L6:
	vucomiss	%xmm1, %xmm4	# _45, tmp155
	ja	.L15	#,
	vsqrtss	%xmm1, %xmm1, %xmm1	# _45, _46
.L9:
# cosine_simd.cpp:43: }
	movq	-8(%rbp), %r10	#,
	.cfi_remember_state
	.cfi_def_cfa 10, 0
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	vmulss	%xmm1, %xmm2, %xmm2	# _46, _47, tmp153
# cosine_simd.cpp:43: }
	leave	
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	vdivss	%xmm2, %xmm3, %xmm0	# tmp153, _29, tmp152
# cosine_simd.cpp:43: }
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
.L14:
	.cfi_restore_state
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	vmovaps	%xmm2, %xmm0	# _37,
	vmovss	%xmm1, -24(%rbp)	# _45, %sfp
	vmovss	%xmm3, -20(%rbp)	# _29, %sfp
	vzeroupper
	call	sqrtf@PLT	#
	vxorps	%xmm4, %xmm4, %xmm4	# tmp155
	vmovss	-24(%rbp), %xmm1	# %sfp, _45
	vmovss	-20(%rbp), %xmm3	# %sfp, _29
	vmovaps	%xmm0, %xmm2	# tmp158, _47
	jmp	.L6	#
.L15:
	vmovaps	%xmm1, %xmm0	# _45,
	vmovss	%xmm2, -24(%rbp)	# _47, %sfp
	vmovss	%xmm3, -20(%rbp)	# _29, %sfp
	call	sqrtf@PLT	#
	vmovaps	%xmm0, %xmm1	# tmp159, _46
	vmovss	-24(%rbp), %xmm2	# %sfp, _47
	vmovss	-20(%rbp), %xmm3	# %sfp, _29
	jmp	.L9	#
	.cfi_endproc
.LFE8485:
	.size	_Z22cosine_similarity_simdPfS_, .-_Z22cosine_similarity_simdPfS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"r"
.LC3:
	.string	"../tools/vectors.csv"
.LC4:
	.string	"%g,%g\n"
.LC6:
	.string	" ms\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB8486:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# cosine_simd.cpp:51:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC2(%rip), %rsi	#,
	leaq	.LC3(%rip), %rdi	#,
# cosine_simd.cpp:46: {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	leaq	-52(%rbp), %r15	#, tmp150
	leaq	-56(%rbp), %r14	#, tmp152
	pushq	%rbx	#
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	leaq	.LC4(%rip), %r13	#, tmp153
# cosine_simd.cpp:46: {
	subq	$56, %rsp	#,
	.cfi_offset 3, -56
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movslq	SIZE(%rip), %rax	# SIZE, SIZE
	leaq	39(,%rax,4), %rax	#, tmp115
	shrq	$4, %rax	#, tmp117
	salq	$4, %rax	#, tmp119
	subq	%rax, %rsp	# tmp119,
	leaq	31(%rsp), %rdx	#, tmp121
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	subq	%rax, %rsp	# tmp119,
	leaq	31(%rsp), %rbx	#, tmp132
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %rdx	#, tmp121
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %rbx	#, tmp132
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rdx, %r12	# tmp121, tmp123
	movq	%rdx, -80(%rbp)	# tmp123, %sfp
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rbx, -88(%rbp)	# tmp134, %sfp
# cosine_simd.cpp:51:     fp = fopen("../tools/vectors.csv", "r");
	call	fopen@PLT	#
	movq	%rax, -72(%rbp)	# tmp154, %sfp
	jmp	.L20	#
	.p2align 4
	.p2align 3
.L26:
# cosine_simd.cpp:57:         A[i] = a;
	vmovss	-56(%rbp), %xmm0	# a, a
	addq	$4, %r12	#, ivtmp.95
	addq	$4, %rbx	#, ivtmp.97
	vmovss	%xmm0, -4(%r12)	# a, MEM[base: _60, offset: 0B]
# cosine_simd.cpp:58:         B[i] = b;
	vmovss	-52(%rbp), %xmm0	# b, b
	vmovss	%xmm0, -4(%rbx)	# b, MEM[base: _61, offset: 0B]
.L20:
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	movq	-72(%rbp), %rdi	# %sfp,
	xorl	%eax, %eax	#
	movq	%r15, %rcx	# tmp150,
	movq	%r14, %rdx	# tmp152,
	movq	%r13, %rsi	# tmp153,
	call	__isoc99_fscanf@PLT	#
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, tmp155
	je	.L26	#,
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.11_14
# cosine_simd.cpp:63:     double simd_accum = 0.0;
	movq	.LC1(%rip), %r14	#, simd_accum
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	testl	%eax, %eax	# EXECUTIONS.11_14
	jle	.L21	#,
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	xorl	%r13d, %r13d	# i
	.p2align 4
	.p2align 3
.L22:
# cosine_simd.cpp:67:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# cosine_simd.cpp:68:         cosine_similarity_simd(&A[0], &B[0]);
	movq	-88(%rbp), %rsi	# %sfp,
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	incl	%r13d	# i
# cosine_simd.cpp:68:         cosine_similarity_simd(&A[0], &B[0]);
	movq	-80(%rbp), %rdi	# %sfp,
# cosine_simd.cpp:67:         auto t1 = high_resolution_clock::now();
	movq	%rax, %r12	# tmp156, t1
# cosine_simd.cpp:68:         cosine_similarity_simd(&A[0], &B[0]);
	call	_Z22cosine_similarity_simdPfS_	#
# cosine_simd.cpp:69:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp164
# cosine_simd.cpp:71:         simd_accum += duration.count();
	vmovq	%r14, %xmm3	# simd_accum, simd_accum
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r12, %rax	# t1, tmp139
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vcvtsi2sdq	%rax, %xmm1, %xmm0	# tmp139, tmp164, tmp160
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vdivsd	.LC5(%rip), %xmm0, %xmm0	#, tmp140, tmp141
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.11_14
# cosine_simd.cpp:71:         simd_accum += duration.count();
	vaddsd	%xmm0, %xmm3, %xmm2	# tmp141, simd_accum, simd_accum
	vmovq	%xmm2, %r14	# simd_accum, simd_accum
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%r13d, %eax	# i, EXECUTIONS.11_14
	jg	.L22	#,
.L21:
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	vmovq	%r14, %xmm5	# simd_accum, simd_accum
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp167
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#,
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	vcvtsi2sdl	%eax, %xmm4, %xmm0	# EXECUTIONS.11_14, tmp167, tmp161
	vdivsd	%xmm0, %xmm5, %xmm0	# tmp143, simd_accum, tmp144
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/10/ostream:611: 	__ostream_insert(__out, __s,
	movl	$4, %edx	#,
	leaq	.LC6(%rip), %rsi	#,
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	movq	%rax, %rdi	# tmp158, _48
# /usr/include/c++/10/ostream:611: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# cosine_simd.cpp:75: }
	leaq	-40(%rbp), %rsp	#,
	xorl	%eax, %eax	#
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8486:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB9051:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/c++/10/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rdi	#,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
	leaq	__dso_handle(%rip), %rdx	#,
	leaq	_ZStL8__ioinit(%rip), %rsi	#,
# cosine_simd.cpp:75: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
# /usr/include/c++/10/iostream:74:   static ios_base::Init __ioinit;
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE9051:
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
.LC1:
	.long	0
	.long	0
	.align 8
.LC5:
	.long	0
	.long	1093567616
	.hidden	__dso_handle
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
