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
# -auxbase-strip cosine_simd_native.s -fverbose-asm
# -fasynchronous-unwind-tables
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -fallocation-dce -fasynchronous-unwind-tables -fauto-inc-dec
# -fdelete-null-pointer-checks -fdwarf2-cfi-asm -fearly-inlining
# -feliminate-unused-debug-symbols -feliminate-unused-debug-types
# -fexceptions -ffp-int-builtin-inexact -ffunction-cse -fgcse-lm
# -fgnu-unique -fident -finline-atomics -fipa-stack-alignment
# -fira-hoist-pressure -fira-share-save-slots -fira-share-spill-slots
# -fivopts -fkeep-static-consts -fleading-underscore -flifetime-dse
# -fmath-errno -fmerge-debug-strings -fpeephole -fplt
# -fprefetch-loop-arrays -freg-struct-return
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fsemantic-interposition
# -fshow-column -fshrink-wrap-separate -fsigned-zeros
# -fsplit-ivs-in-unroller -fssa-backprop -fstdarg-opt
# -fstrict-volatile-bitfields -fsync-libcalls -ftrapping-math -ftree-cselim
# -ftree-forwprop -ftree-loop-if-convert -ftree-loop-im -ftree-loop-ivcanon
# -ftree-loop-optimize -ftree-parallelize-loops= -ftree-phiprop
# -ftree-reassoc -ftree-scev-cprop -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -mabm -madx -maes -malign-stringops -mavx -mavx2 -mbmi -mbmi2
# -mclflushopt -mclwb -mclzero -mcx16 -mf16c -mfancy-math-387 -mfma
# -mfp-ret-in-387 -mfsgsbase -mfxsr -mglibc -mieee-fp -mlong-double-80
# -mlzcnt -mmmx -mmovbe -mmwaitx -mpclmul -mpopcnt -mprfchw -mpush-args
# -mrdpid -mrdrnd -mrdseed -mred-zone -msahf -msha -msse -msse2 -msse3
# -msse4 -msse4.1 -msse4.2 -msse4a -mssse3 -mstv -mtls-direct-seg-refs
# -mvzeroupper -mwbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves

	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZSt4sqrtf,"axG",@progbits,_ZSt4sqrtf,comdat
	.weak	_ZSt4sqrtf
	.type	_ZSt4sqrtf, @function
_ZSt4sqrtf:
.LFB1642:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	vmovss	%xmm0, -4(%rbp)	# __x, __x
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	movl	-4(%rbp), %eax	# __x, tmp84
	vmovd	%eax, %xmm0	# tmp84,
	call	sqrtf@PLT	#
	vmovd	%xmm0, %eax	#, _4
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	vmovd	%eax, %xmm0	# _4, <retval>
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1642:
	.size	_ZSt4sqrtf, .-_ZSt4sqrtf
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB3601:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/10/chrono:438: 	{ return __r; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__r, _3
# /usr/include/c++/10/chrono:438: 	{ return __r; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3601:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:
.LFB3606:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __rep, __rep
# /usr/include/c++/10/chrono:423: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-16(%rbp), %rax	# __rep, tmp83
	movq	(%rax), %rdx	# *__rep_5(D), _1
# /usr/include/c++/10/chrono:423: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rdx, (%rax)	# _1, this_3(D)->__r
# /usr/include/c++/10/chrono:423: 	  : __r(static_cast<rep>(__rep)) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3606:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.globl	SIZE
	.data
	.align 4
	.type	SIZE, @object
	.size	SIZE, 4
SIZE:
	.long	640000
	.globl	EXECUTIONS
	.align 4
	.type	EXECUTIONS, @object
	.size	EXECUTIONS, 4
EXECUTIONS:
	.long	1000
	.section	.text._Z19simd_horizontal_sumRDv8_f,"axG",@progbits,_Z19simd_horizontal_sumRDv8_f,comdat
	.weak	_Z19simd_horizontal_sumRDv8_f
	.type	_Z19simd_horizontal_sumRDv8_f, @function
_Z19simd_horizontal_sumRDv8_f:
.LFB7202:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	andq	$-32, %rsp	#,
	subq	$168, %rsp	#,
	movq	%rdi, -96(%rsp)	# r, r
# cosine_simd.cpp:15:     __m128 r4 = _mm_add_ps(_mm256_castps256_ps128(r), _mm256_extractf128_ps(r, 1));
	movq	-96(%rsp), %rax	# r, tmp93
	vmovaps	(%rax), %ymm0	# *r_8(D), _1
	vextractf128	$0x1, %ymm0, %xmm1	# _1, _2
	movq	-96(%rsp), %rax	# r, tmp94
	vmovaps	(%rax), %ymm0	# *r_8(D), _3
	vmovaps	%ymm0, -88(%rsp)	# _3, __A
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:1456:   return (__m128) __builtin_ia32_ps_ps256 ((__v8sf)__A);
	vmovaps	-88(%rsp), %xmm0	# __A, D.88481
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:1456:   return (__m128) __builtin_ia32_ps_ps256 ((__v8sf)__A);
	nop	
	vmovaps	%xmm0, -24(%rsp)	# D.88481, __A
	vmovaps	%xmm1, -40(%rsp)	# _2, __B
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vmovaps	-24(%rsp), %xmm0	# __A, tmp95
	vaddps	-40(%rsp), %xmm0, %xmm0	# __B, tmp95, D.88477
# cosine_simd.cpp:15:     __m128 r4 = _mm_add_ps(_mm256_castps256_ps128(r), _mm256_extractf128_ps(r, 1));
	vmovaps	%xmm0, 152(%rsp)	# D.88477, r4
	vmovaps	152(%rsp), %xmm0	# r4, tmp96
	vmovaps	%xmm0, 8(%rsp)	# tmp96, __A
	vmovaps	152(%rsp), %xmm0	# r4, tmp97
	vmovaps	%xmm0, -8(%rsp)	# tmp97, __B
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	vmovaps	8(%rsp), %xmm0	# __A, tmp98
	vmovlps	(%rsp), %xmm0, %xmm0	# __B, tmp98, D.88471
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	nop	
	vmovaps	152(%rsp), %xmm1	# r4, tmp99
	vmovaps	%xmm1, 40(%rsp)	# tmp99, __A
	vmovaps	%xmm0, 24(%rsp)	# D.88471, __B
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vmovaps	40(%rsp), %xmm0	# __A, tmp100
	vaddps	24(%rsp), %xmm0, %xmm0	# __B, tmp100, D.88466
# cosine_simd.cpp:16:     __m128 r2 = _mm_add_ps(r4, _mm_movehl_ps(r4, r4));
	vmovaps	%xmm0, 136(%rsp)	# D.88466, r2
	vmovaps	136(%rsp), %xmm0	# r2, tmp101
	vmovaps	%xmm0, 56(%rsp)	# tmp101, __X
# /usr/lib/gcc/x86_64-linux-gnu/10/include/pmmintrin.h:70:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	vmovshdup	56(%rsp), %xmm0	# __X, D.88460
# /usr/lib/gcc/x86_64-linux-gnu/10/include/pmmintrin.h:70:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	nop	
	vmovaps	136(%rsp), %xmm1	# r2, tmp102
	vmovaps	%xmm1, 88(%rsp)	# tmp102, __A
	vmovaps	%xmm0, 72(%rsp)	# D.88460, __B
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	vmovaps	88(%rsp), %xmm0	# __A, tmp103
	vaddss	72(%rsp), %xmm0, %xmm0	# __B, tmp103, D.88455
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	nop	
# cosine_simd.cpp:17:     __m128 r1 = _mm_add_ss(r2, _mm_movehdup_ps(r2));
	vmovaps	%xmm0, 120(%rsp)	# D.88455, r1
	vmovaps	120(%rsp), %xmm0	# r1, tmp104
	vmovaps	%xmm0, 104(%rsp)	# tmp104, __A
# /usr/lib/gcc/x86_64-linux-gnu/10/include/xmmintrin.h:969:   return ((__v4sf)__A)[0];
	vmovss	104(%rsp), %xmm0	# __A, D.88450
# cosine_simd.cpp:19: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7202:
	.size	_Z19simd_horizontal_sumRDv8_f, .-_Z19simd_horizontal_sumRDv8_f
	.text
	.globl	_Z22cosine_similarity_simdPfS_
	.type	_Z22cosine_similarity_simdPfS_, @function
_Z22cosine_similarity_simdPfS_:
.LFB7203:
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
	pushq	%rbx	#
	subq	$576, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	movq	%rdi, -568(%rbp)	# A, A
	movq	%rsi, -576(%rbp)	# B, B
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:1231: 				 0.0, 0.0, 0.0, 0.0 };
	vxorps	%xmm0, %xmm0, %xmm0	# D.88491
# cosine_simd.cpp:24:     __m256 sum_dot = _mm256_setzero_ps();
	vmovaps	%ymm0, -496(%rbp)	# D.88491, sum_dot
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:1231: 				 0.0, 0.0, 0.0, 0.0 };
	vxorps	%xmm0, %xmm0, %xmm0	# D.88488
# cosine_simd.cpp:25:     __m256 sum_A = _mm256_setzero_ps();
	vmovaps	%ymm0, -528(%rbp)	# D.88488, sum_A
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:1231: 				 0.0, 0.0, 0.0, 0.0 };
	vxorps	%xmm0, %xmm0, %xmm0	# D.88485
# cosine_simd.cpp:26:     __m256 sum_B = _mm256_setzero_ps();
	vmovaps	%ymm0, -560(%rbp)	# D.88485, sum_B
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	movq	$0, -24(%rbp)	#, i
.L25:
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	movl	SIZE(%rip), %eax	# SIZE, SIZE.0_4
	cltq
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	cmpq	%rax, -24(%rbp)	# _5, i
	jnb	.L19	#,
# cosine_simd.cpp:30:         __m256 buf1 = _mm256_loadu_ps(A + i);
	movq	-24(%rbp), %rax	# i, tmp107
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-568(%rbp), %rax	# A, tmp108
	addq	%rdx, %rax	# _6, _7
	movq	%rax, -256(%rbp)	# _7, __P
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:898:   return *(__m256_u *)__P;
	movq	-256(%rbp), %rax	# __P, tmp109
	vmovups	(%rax), %ymm0	# MEM[(__m256_u * {ref-all})__P_66], tmp110
# cosine_simd.cpp:30:         __m256 buf1 = _mm256_loadu_ps(A + i);
	vmovaps	%ymm0, -80(%rbp)	# D.88506, buf1
# cosine_simd.cpp:31:         __m256 buf2 = _mm256_loadu_ps(B + i);
	movq	-24(%rbp), %rax	# i, tmp111
	leaq	0(,%rax,4), %rdx	#, _8
	movq	-576(%rbp), %rax	# B, tmp112
	addq	%rdx, %rax	# _8, _9
	movq	%rax, -248(%rbp)	# _9, __P
# /usr/lib/gcc/x86_64-linux-gnu/10/include/avxintrin.h:898:   return *(__m256_u *)__P;
	movq	-248(%rbp), %rax	# __P, tmp113
	vmovups	(%rax), %ymm0	# MEM[(__m256_u * {ref-all})__P_64], tmp114
# cosine_simd.cpp:31:         __m256 buf2 = _mm256_loadu_ps(B + i);
	vmovaps	%ymm0, -112(%rbp)	# D.88502, buf2
# cosine_simd.cpp:33:         sum_dot = _mm256_fmadd_ps(buf1, buf2, sum_dot);
	vmovaps	-496(%rbp), %ymm0	# sum_dot, sum_dot.1_10
	vmovaps	-80(%rbp), %ymm1	# buf1, tmp115
	vmovaps	%ymm1, -176(%rbp)	# tmp115, __A
	vmovaps	-112(%rbp), %ymm1	# buf2, tmp116
	vmovaps	%ymm1, -208(%rbp)	# tmp116, __B
	vmovaps	%ymm0, -240(%rbp)	# sum_dot.1_10, __C
# /usr/lib/gcc/x86_64-linux-gnu/10/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vmovaps	-208(%rbp), %ymm1	# __B, tmp117
	vmovaps	-240(%rbp), %ymm0	# __C, tmp118
	vfmadd231ps	-176(%rbp), %ymm1, %ymm0	# __A, tmp117, D.88497
# /usr/lib/gcc/x86_64-linux-gnu/10/include/fmaintrin.h:66:                                              (__v8sf)__C);
	nop	
# cosine_simd.cpp:33:         sum_dot = _mm256_fmadd_ps(buf1, buf2, sum_dot);
	vmovaps	%ymm0, -496(%rbp)	# D.88497, sum_dot
# cosine_simd.cpp:34:         sum_A = _mm256_fmadd_ps(buf1, buf1, sum_A);
	vmovaps	-528(%rbp), %ymm0	# sum_A, sum_A.2_12
	vmovaps	-80(%rbp), %ymm1	# buf1, tmp119
	vmovaps	%ymm1, -304(%rbp)	# tmp119, __A
	vmovaps	-80(%rbp), %ymm1	# buf1, tmp120
	vmovaps	%ymm1, -336(%rbp)	# tmp120, __B
	vmovaps	%ymm0, -368(%rbp)	# sum_A.2_12, __C
# /usr/lib/gcc/x86_64-linux-gnu/10/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vmovaps	-336(%rbp), %ymm1	# __B, tmp121
	vmovaps	-368(%rbp), %ymm0	# __C, tmp122
	vfmadd231ps	-304(%rbp), %ymm1, %ymm0	# __A, tmp121, D.88512
# /usr/lib/gcc/x86_64-linux-gnu/10/include/fmaintrin.h:66:                                              (__v8sf)__C);
	nop	
# cosine_simd.cpp:34:         sum_A = _mm256_fmadd_ps(buf1, buf1, sum_A);
	vmovaps	%ymm0, -528(%rbp)	# D.88512, sum_A
# cosine_simd.cpp:35:         sum_B = _mm256_fmadd_ps(buf2, buf2, sum_B);
	vmovaps	-560(%rbp), %ymm0	# sum_B, sum_B.3_14
	vmovaps	-112(%rbp), %ymm1	# buf2, tmp123
	vmovaps	%ymm1, -400(%rbp)	# tmp123, __A
	vmovaps	-112(%rbp), %ymm1	# buf2, tmp124
	vmovaps	%ymm1, -432(%rbp)	# tmp124, __B
	vmovaps	%ymm0, -464(%rbp)	# sum_B.3_14, __C
# /usr/lib/gcc/x86_64-linux-gnu/10/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vmovaps	-432(%rbp), %ymm1	# __B, tmp125
	vmovaps	-464(%rbp), %ymm0	# __C, tmp126
	vfmadd231ps	-400(%rbp), %ymm1, %ymm0	# __A, tmp125, D.88519
# /usr/lib/gcc/x86_64-linux-gnu/10/include/fmaintrin.h:66:                                              (__v8sf)__C);
	nop	
# cosine_simd.cpp:35:         sum_B = _mm256_fmadd_ps(buf2, buf2, sum_B);
	vmovaps	%ymm0, -560(%rbp)	# D.88519, sum_B
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	addq	$8, -24(%rbp)	#, i
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	jmp	.L25	#
.L19:
# cosine_simd.cpp:38:     float float_dot = simd_horizontal_sum(sum_dot);
	leaq	-496(%rbp), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	_Z19simd_horizontal_sumRDv8_f	#
	vmovd	%xmm0, %eax	#, _39
	movl	%eax, -116(%rbp)	# _39, float_dot
# cosine_simd.cpp:39:     float float_A_norm = simd_horizontal_sum(sum_A);
	leaq	-528(%rbp), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	_Z19simd_horizontal_sumRDv8_f	#
	vmovd	%xmm0, %eax	#, _42
	movl	%eax, -120(%rbp)	# _42, float_A_norm
# cosine_simd.cpp:40:     float float_B_norm = simd_horizontal_sum(sum_B);
	leaq	-560(%rbp), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	_Z19simd_horizontal_sumRDv8_f	#
	vmovd	%xmm0, %eax	#, _45
	movl	%eax, -124(%rbp)	# _45, float_B_norm
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	movl	-120(%rbp), %eax	# float_A_norm, tmp130
	vmovd	%eax, %xmm0	# tmp130,
	call	_ZSt4sqrtf	#
	vmovd	%xmm0, %ebx	#, _16
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	movl	-124(%rbp), %eax	# float_B_norm, tmp131
	vmovd	%eax, %xmm0	# tmp131,
	call	_ZSt4sqrtf	#
	vmovd	%xmm0, %eax	#, _17
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	vmovd	%ebx, %xmm2	# _16, _16
	vmovd	%eax, %xmm3	# _17, _17
	vmulss	%xmm3, %xmm2, %xmm0	# _17, _16, _18
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	vmovss	-116(%rbp), %xmm1	# float_dot, tmp132
	vdivss	%xmm0, %xmm1, %xmm0	# _18, tmp132, _49
# cosine_simd.cpp:43: }
	addq	$576, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_def_cfa 10, 0
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7203:
	.size	_Z22cosine_similarity_simdPfS_, .-_Z22cosine_similarity_simdPfS_
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"../tools/vectors.csv"
.LC2:
	.string	"%g,%g\n"
.LC4:
	.string	" ms\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7204:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$120, %rsp	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	movq	%rsp, %rax	#, tmp132
	movq	%rax, %rbx	# tmp132, saved_stack.13_3
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movl	SIZE(%rip), %eax	# SIZE, SIZE.4_1
	cltq
	decq	%rax	# _45
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rax, -64(%rbp)	# _45, D.88369
	movq	%rax, %rdx	# _45, _4
	incq	%rdx	# _5
	movq	%rdx, %r12	# _5, _6
	movl	$0, %r13d	#, _6
	movq	%rax, %rdx	# _45, _11
	incq	%rdx	# _12
	movq	%rdx, %r10	# _12, _13
	movl	$0, %r11d	#, _13
	incq	%rax	# _16
	salq	$2, %rax	#, _50
	leaq	24(%rax), %rdx	#, tmp133
	movl	$16, %eax	#, tmp182
	decq	%rax	# tmp134
	addq	%rdx, %rax	# tmp133, tmp135
	movl	$16, %ecx	#, tmp183
	movl	$0, %edx	#, tmp138
	divq	%rcx	# tmp183
	imulq	$16, %rax, %rax	#, tmp137, tmp139
	subq	%rax, %rsp	# tmp139,
	movq	%rsp, %rax	#, tmp140
	addq	$31, %rax	#, tmp141
	shrq	$5, %rax	#, tmp142
	salq	$5, %rax	#, tmp143
	movq	%rax, -72(%rbp)	# tmp143, A.5
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movl	SIZE(%rip), %eax	# SIZE, SIZE.6_18
	cltq
	decq	%rax	# _53
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rax, -80(%rbp)	# _53, D.88376
	movq	%rax, %rdx	# _53, _21
	incq	%rdx	# _22
	movq	%rdx, %r8	# _22, _23
	movl	$0, %r9d	#, _23
	movq	%rax, %rdx	# _53, _28
	incq	%rdx	# _29
	movq	%rdx, %rsi	# _29, _30
	movl	$0, %edi	#, _30
	incq	%rax	# _33
	salq	$2, %rax	#, _58
	leaq	24(%rax), %rdx	#, tmp144
	movl	$16, %eax	#, tmp184
	decq	%rax	# tmp145
	addq	%rdx, %rax	# tmp144, tmp146
	movl	$16, %ecx	#, tmp185
	movl	$0, %edx	#, tmp149
	divq	%rcx	# tmp185
	imulq	$16, %rax, %rax	#, tmp148, tmp150
	subq	%rax, %rsp	# tmp150,
	movq	%rsp, %rax	#, tmp151
	addq	$31, %rax	#, tmp152
	shrq	$5, %rax	#, tmp153
	salq	$5, %rax	#, tmp154
	movq	%rax, -88(%rbp)	# tmp154, B.7
# cosine_simd.cpp:51:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	fopen@PLT	#
	movq	%rax, -96(%rbp)	# _62, fp
# cosine_simd.cpp:54:     int i = 0;
	movl	$0, -52(%rbp)	#, i
.L29:
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	leaq	-120(%rbp), %rdx	#, tmp155
	leaq	-116(%rbp), %rax	#, tmp156
	movq	-96(%rbp), %rdi	# fp, tmp157
	movq	%rdx, %rcx	# tmp155,
	movq	%rax, %rdx	# tmp156,
	leaq	.LC2(%rip), %rsi	#,
	movl	$0, %eax	#,
	call	__isoc99_fscanf@PLT	#
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, _35
	sete	%al	#, retval.8_67
	movzbl	%al, %eax	# retval.8_67, tmp158
	testw	%ax, %ax	# tmp158
	je	.L28	#,
# cosine_simd.cpp:57:         A[i] = a;
	vmovss	-116(%rbp), %xmm0	# a, a.9_36
	movq	-72(%rbp), %rdx	# A.5, tmp159
	movl	-52(%rbp), %eax	# i, tmp161
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)	# a.9_36, (*A.5_52)[i_34]
# cosine_simd.cpp:58:         B[i] = b;
	vmovss	-120(%rbp), %xmm0	# b, b.10_37
	movq	-88(%rbp), %rdx	# B.7, tmp162
	movl	-52(%rbp), %eax	# i, tmp164
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)	# b.10_37, (*B.7_60)[i_34]
# cosine_simd.cpp:59:         i += 1;
	incl	-52(%rbp)	# i
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	jmp	.L29	#
.L28:
# cosine_simd.cpp:63:     double simd_accum = 0.0;
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp165
	vmovsd	%xmm0, -48(%rbp)	# tmp165, simd_accum
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	movl	$0, -36(%rbp)	#, i
.L31:
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.11_38
	cmpl	%eax, -36(%rbp)	# EXECUTIONS.11_38, i
	jge	.L30	#,
# cosine_simd.cpp:67:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -136(%rbp)	# tmp167, t1
# cosine_simd.cpp:68:         cosine_similarity_simd(&A[0], &B[0]);
	movq	-88(%rbp), %rdx	# B.7, _39
	movq	-72(%rbp), %rax	# A.5, _40
	movq	%rdx, %rsi	# _39,
	movq	%rax, %rdi	# _40,
	call	_Z22cosine_similarity_simdPfS_	#
# cosine_simd.cpp:69:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -144(%rbp)	# tmp169, t2
# cosine_simd.cpp:70:         duration = t2 - t1;
	leaq	-136(%rbp), %rdx	#, tmp170
	leaq	-144(%rbp), %rax	#, tmp171
	movq	%rdx, %rsi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -104(%rbp)	# tmp173, D.83967
	leaq	-104(%rbp), %rdx	#, tmp174
	leaq	-112(%rbp), %rax	#, tmp175
	movq	%rdx, %rsi	# tmp174,
	movq	%rax, %rdi	# tmp175,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE	#
# cosine_simd.cpp:70:         duration = t2 - t1;
	vmovsd	-112(%rbp), %xmm0	# D.84015, tmp176
	vmovsd	%xmm0, -128(%rbp)	# tmp176, duration
# cosine_simd.cpp:71:         simd_accum += duration.count();
	leaq	-128(%rbp), %rax	#, tmp177
	movq	%rax, %rdi	# tmp177,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv	#
	vmovq	%xmm0, %rax	#, _79
# cosine_simd.cpp:71:         simd_accum += duration.count();
	vmovsd	-48(%rbp), %xmm0	# simd_accum, tmp179
	vmovq	%rax, %xmm2	# _79, _79
	vaddsd	%xmm2, %xmm0, %xmm0	# _79, tmp179, tmp178
	vmovsd	%xmm0, -48(%rbp)	# tmp178, simd_accum
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	incl	-36(%rbp)	# i
	jmp	.L31	#
.L30:
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.12_41
	vcvtsi2sdl	%eax, %xmm0, %xmm0	# EXECUTIONS.12_41, _42
	vmovsd	-48(%rbp), %xmm1	# simd_accum, tmp180
	vdivsd	%xmm0, %xmm1, %xmm3	# _42, tmp180, _43
	vmovq	%xmm3, %rax	# _43, _43
	vmovq	%rax, %xmm0	# _43,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEd@PLT	#
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	leaq	.LC4(%rip), %rsi	#,
	movq	%rax, %rdi	# _44,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rbx, %rsp	# saved_stack.13_3,
# cosine_simd.cpp:75: }
	movl	$0, %eax	#, _94
	leaq	-24(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7204:
	.size	main, .-main
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB7465:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/10/chrono:789: 	{ return __d; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__d, D.88400
# /usr/include/c++/10/chrono:789: 	{ return __d; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7465:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB7493:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __lhs, __lhs
	movq	%rsi, -32(%rbp)	# __rhs, __rhs
# /usr/include/c++/10/chrono:913:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-32(%rbp), %rax	# __rhs, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -16(%rbp)	# tmp86, D.86068
# /usr/include/c++/10/chrono:913:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-24(%rbp), %rax	# __lhs, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -8(%rbp)	# tmp89, D.86067
# /usr/include/c++/10/chrono:913:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	leaq	-16(%rbp), %rdx	#, tmp90
	leaq	-8(%rbp), %rax	#, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_	#
# /usr/include/c++/10/chrono:913:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7493:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB7495:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __d, __d
# /usr/include/c++/10/chrono:430: 	  : __r(duration_cast<duration>(__d).count()) { }
	movq	-32(%rbp), %rax	# __d, tmp83
	movq	%rax, %rdi	# tmp83,
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE	#
	vmovq	%xmm0, %rax	#, tmp84
	vmovq	%rax, %xmm0	# tmp84, tmp85
	vmovsd	%xmm0, -8(%rbp)	# tmp85, D.86096
# /usr/include/c++/10/chrono:430: 	  : __r(duration_cast<duration>(__d).count()) { }
	leaq	-8(%rbp), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv	#
	vmovq	%xmm0, %rax	#, _1
# /usr/include/c++/10/chrono:430: 	  : __r(duration_cast<duration>(__d).count()) { }
	movq	-24(%rbp), %rdx	# this, tmp87
	movq	%rax, (%rdx)	# _1, this_3(D)->__r
# /usr/include/c++/10/chrono:430: 	  : __r(duration_cast<duration>(__d).count()) { }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7495:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, @function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv:
.LFB7497:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/10/chrono:438: 	{ return __r; }
	movq	-8(%rbp), %rax	# this, tmp84
	vmovsd	(%rax), %xmm0	# this_2(D)->__r, _3
	vmovq	%xmm0, %rax	# _3, <retval>
# /usr/include/c++/10/chrono:438: 	{ return __r; }
	vmovq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7497:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB7627:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)	# __lhs, __lhs
	movq	%rsi, -64(%rbp)	# __rhs, __rhs
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-56(%rbp), %rax	# __lhs, tmp87
	movq	(%rax), %rax	# *__lhs_5(D), tmp88
	movq	%rax, -32(%rbp)	# tmp88, D.86541
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rbx	#, _1
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-64(%rbp), %rax	# __rhs, tmp90
	movq	(%rax), %rax	# *__rhs_8(D), tmp91
	movq	%rax, -24(%rbp)	# tmp91, D.86544
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-24(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rdx	#, _2
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	%rbx, %rax	# _1, _1
	subq	%rdx, %rax	# _2, _1
	movq	%rax, -40(%rbp)	# _3, D.86545
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-40(%rbp), %rdx	#, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_	#
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-48(%rbp), %rax	# D.86546, D.88402
# /usr/include/c++/10/chrono:565:       }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7627:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB7628:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __d, __d
# /usr/include/c++/10/chrono:233: 	return __dc::__cast(__d);
	movq	-8(%rbp), %rax	# __d, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE	#
	vmovq	%xmm0, %rax	#, D.88410
# /usr/include/c++/10/chrono:234:       }
	vmovq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7628:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE:
.LFB7671:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __d, __d
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movq	-24(%rbp), %rax	# __d, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vcvtsi2sdq	%rax, %xmm0, %xmm0	# _1, _2
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vmovsd	.LC5(%rip), %xmm1	#, tmp88
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp88, _2, _3
# /usr/include/c++/10/chrono:183: 	    return _ToDur(static_cast<__to_rep>(
	vmovsd	%xmm0, -8(%rbp)	# _3, D.87243
# /usr/include/c++/10/chrono:183: 	    return _ToDur(static_cast<__to_rep>(
	leaq	-8(%rbp), %rdx	#, tmp89
	leaq	-16(%rbp), %rax	#, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_	#
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vmovsd	-16(%rbp), %xmm0	# D.87244, D.88412
	vmovq	%xmm0, %rax	# D.88412, <retval>
# /usr/include/c++/10/chrono:185: 	  }
	vmovq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7671:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC5IdvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_:
.LFB7710:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __rep, __rep
# /usr/include/c++/10/chrono:423: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-16(%rbp), %rax	# __rep, tmp83
	vmovsd	(%rax), %xmm0	# *__rep_5(D), _1
# /usr/include/c++/10/chrono:423: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-8(%rbp), %rax	# this, tmp84
	vmovsd	%xmm0, (%rax)	# _1, this_3(D)->__r
# /usr/include/c++/10/chrono:423: 	  : __r(static_cast<rep>(__rep)) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7710:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB7783:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# cosine_simd.cpp:75: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L49	#,
# cosine_simd.cpp:75: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L49	#,
# /usr/include/c++/10/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rdi	#,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rdx	#,
	leaq	_ZStL8__ioinit(%rip), %rsi	#,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	__cxa_atexit@PLT	#
.L49:
# cosine_simd.cpp:75: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7783:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB7784:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# cosine_simd.cpp:75: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7784:
	.size	_GLOBAL__sub_I_SIZE, .-_GLOBAL__sub_I_SIZE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_SIZE
	.section	.rodata
	.align 8
.LC5:
	.long	0
	.long	1093567616
	.hidden	__dso_handle
	.ident	"GCC: (Debian 10.2.1-6) 10.2.1 20210110"
	.section	.note.GNU-stack,"",@progbits
