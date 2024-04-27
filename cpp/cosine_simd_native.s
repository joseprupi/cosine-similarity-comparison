	.file	"cosine_simd.cpp"
# GNU C++17 (Debian 12.2.0-14) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.1-p1, MPC version 1.3.1, isl version isl-0.25-GMP

# warning: MPFR header version 4.1.1-p1 differs from library version 4.2.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=znver2 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mmwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mwbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver2 -fasynchronous-unwind-tables
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZSt4sqrtf,"axG",@progbits,_ZSt4sqrtf,comdat
	.weak	_ZSt4sqrtf
	.type	_ZSt4sqrtf, @function
_ZSt4sqrtf:
.LFB1831:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	vmovss	%xmm0, -4(%rbp)	# __x, __x
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	movl	-4(%rbp), %eax	# __x, tmp84
	vmovd	%eax, %xmm0	# tmp84,
	call	sqrtf@PLT	#
	vmovd	%xmm0, %eax	#, _4
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	vmovd	%eax, %xmm0	# _4, <retval>
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1831:
	.size	_ZSt4sqrtf, .-_ZSt4sqrtf
	.section	.rodata
	.type	_ZN6__pstl9execution2v1L3seqE, @object
	.size	_ZN6__pstl9execution2v1L3seqE, 1
_ZN6__pstl9execution2v1L3seqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L3parE, @object
	.size	_ZN6__pstl9execution2v1L3parE, 1
_ZN6__pstl9execution2v1L3parE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L9par_unseqE, @object
	.size	_ZN6__pstl9execution2v1L9par_unseqE, 1
_ZN6__pstl9execution2v1L9par_unseqE:
	.zero	1
	.type	_ZN6__pstl9execution2v1L5unseqE, @object
	.size	_ZN6__pstl9execution2v1L5unseqE, 1
_ZN6__pstl9execution2v1L5unseqE:
	.zero	1
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:
.LFB4038:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __rep, __rep
# /usr/include/c++/12/bits/chrono.h:506: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-16(%rbp), %rax	# __rep, tmp83
	movq	(%rax), %rdx	# *__rep_5(D), _1
# /usr/include/c++/12/bits/chrono.h:506: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	%rdx, (%rax)	# _1, this_3(D)->__r
# /usr/include/c++/12/bits/chrono.h:506: 	  : __r(static_cast<rep>(__rep)) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4038:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB4040:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/12/bits/chrono.h:522: 	{ return __r; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__r, _3
# /usr/include/c++/12/bits/chrono.h:522: 	{ return __r; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4040:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
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
.LFB8372:
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
	movq	-96(%rsp), %rax	# r, tmp94
	vmovaps	(%rax), %ymm0	# *r_8(D), _1
	vextractf128	$0x1, %ymm0, %xmm1	# _1, _2
	movq	-96(%rsp), %rax	# r, tmp95
	vmovaps	(%rax), %ymm0	# *r_8(D), _3
	vmovaps	%ymm0, -88(%rsp)	# _3, __A
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:1463:   return (__m128) __builtin_ia32_ps_ps256 ((__v8sf)__A);
	vmovaps	-88(%rsp), %xmm0	# __A, D.108840
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:1463:   return (__m128) __builtin_ia32_ps_ps256 ((__v8sf)__A);
	nop	
	vmovaps	%xmm0, -24(%rsp)	# D.108840, __A
	vmovaps	%xmm1, -40(%rsp)	# _2, __B
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vmovaps	-24(%rsp), %xmm0	# __A, tmp96
	vaddps	-40(%rsp), %xmm0, %xmm0	# __B, tmp96, D.108836
# cosine_simd.cpp:15:     __m128 r4 = _mm_add_ps(_mm256_castps256_ps128(r), _mm256_extractf128_ps(r, 1));
	vmovaps	%xmm0, 152(%rsp)	# D.108836, r4
	vmovaps	152(%rsp), %xmm0	# r4, tmp97
	vmovaps	%xmm0, 8(%rsp)	# tmp97, __A
	vmovaps	152(%rsp), %xmm0	# r4, tmp98
	vmovaps	%xmm0, -8(%rsp)	# tmp98, __B
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	vmovaps	8(%rsp), %xmm0	# __A, tmp99
	vmovlps	(%rsp), %xmm0, %xmm0	# __B, tmp99, D.108830
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	nop	
	vmovaps	152(%rsp), %xmm1	# r4, tmp100
	vmovaps	%xmm1, 40(%rsp)	# tmp100, __A
	vmovaps	%xmm0, 24(%rsp)	# D.108830, __B
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vmovaps	40(%rsp), %xmm0	# __A, tmp101
	vaddps	24(%rsp), %xmm0, %xmm0	# __B, tmp101, D.108825
# cosine_simd.cpp:16:     __m128 r2 = _mm_add_ps(r4, _mm_movehl_ps(r4, r4));
	vmovaps	%xmm0, 136(%rsp)	# D.108825, r2
	vmovaps	136(%rsp), %xmm0	# r2, tmp102
	vmovaps	%xmm0, 56(%rsp)	# tmp102, __X
# /usr/lib/gcc/x86_64-linux-gnu/12/include/pmmintrin.h:71:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	vmovshdup	56(%rsp), %xmm0	# __X, D.108819
# /usr/lib/gcc/x86_64-linux-gnu/12/include/pmmintrin.h:71:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	nop	
	vmovaps	136(%rsp), %xmm1	# r2, tmp103
	vmovaps	%xmm1, 88(%rsp)	# tmp103, __A
	vmovaps	%xmm0, 72(%rsp)	# D.108819, __B
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	vmovaps	88(%rsp), %xmm0	# __A, tmp104
	vaddss	72(%rsp), %xmm0, %xmm0	# __B, tmp104, D.108814
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	nop	
# cosine_simd.cpp:17:     __m128 r1 = _mm_add_ss(r2, _mm_movehdup_ps(r2));
	vmovaps	%xmm0, 120(%rsp)	# D.108814, r1
	vmovaps	120(%rsp), %xmm0	# r1, tmp105
	vmovaps	%xmm0, 104(%rsp)	# tmp105, __A
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:969:   return ((__v4sf)__A)[0];
	vmovaps	104(%rsp), %xmm0	# __A, __A.4
# cosine_simd.cpp:19: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8372:
	.size	_Z19simd_horizontal_sumRDv8_f, .-_Z19simd_horizontal_sumRDv8_f
	.text
	.globl	_Z22cosine_similarity_simdPfS_
	.type	_Z22cosine_similarity_simdPfS_, @function
_Z22cosine_similarity_simdPfS_:
.LFB8373:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	pushq	%rbx	#
	subq	$544, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	movq	%rdi, -536(%rbp)	# A, A
	movq	%rsi, -544(%rbp)	# B, B
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:1238: 				 0.0, 0.0, 0.0, 0.0 };
	vxorps	%xmm0, %xmm0, %xmm0	# D.108850
# cosine_simd.cpp:24:     __m256 sum_dot = _mm256_setzero_ps();
	vmovaps	%ymm0, -464(%rbp)	# D.108850, sum_dot
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:1238: 				 0.0, 0.0, 0.0, 0.0 };
	vxorps	%xmm0, %xmm0, %xmm0	# D.108847
# cosine_simd.cpp:25:     __m256 sum_A = _mm256_setzero_ps();
	vmovaps	%ymm0, -496(%rbp)	# D.108847, sum_A
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:1238: 				 0.0, 0.0, 0.0, 0.0 };
	vxorps	%xmm0, %xmm0, %xmm0	# D.108844
# cosine_simd.cpp:26:     __m256 sum_B = _mm256_setzero_ps();
	vmovaps	%ymm0, -528(%rbp)	# D.108844, sum_B
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	movq	$0, -24(%rbp)	#, i
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	jmp	.L19	#
.L25:
# cosine_simd.cpp:30:         __m256 buf1 = _mm256_loadu_ps(A + i);
	movq	-24(%rbp), %rax	# i, tmp107
	leaq	0(,%rax,4), %rdx	#, _4
	movq	-536(%rbp), %rax	# A, tmp108
	addq	%rdx, %rax	# _4, _5
	movq	%rax, -224(%rbp)	# _5, __P
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:905:   return *(__m256_u *)__P;
	movq	-224(%rbp), %rax	# __P, tmp109
	vmovups	(%rax), %ymm0	# MEM[(__m256_u * {ref-all})__P_66], tmp110
# cosine_simd.cpp:30:         __m256 buf1 = _mm256_loadu_ps(A + i);
	vmovaps	%ymm0, -80(%rbp)	# D.108865, buf1
# cosine_simd.cpp:31:         __m256 buf2 = _mm256_loadu_ps(B + i);
	movq	-24(%rbp), %rax	# i, tmp111
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-544(%rbp), %rax	# B, tmp112
	addq	%rdx, %rax	# _6, _7
	movq	%rax, -216(%rbp)	# _7, __P
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:905:   return *(__m256_u *)__P;
	movq	-216(%rbp), %rax	# __P, tmp113
	vmovups	(%rax), %ymm0	# MEM[(__m256_u * {ref-all})__P_64], tmp114
# cosine_simd.cpp:31:         __m256 buf2 = _mm256_loadu_ps(B + i);
	vmovaps	%ymm0, -112(%rbp)	# D.108861, buf2
# cosine_simd.cpp:33:         sum_dot = _mm256_fmadd_ps(buf1, buf2, sum_dot);
	vmovaps	-464(%rbp), %ymm0	# sum_dot, sum_dot.0_8
	vmovaps	-80(%rbp), %ymm1	# buf1, tmp115
	vmovaps	%ymm1, -144(%rbp)	# tmp115, __A
	vmovaps	-112(%rbp), %ymm1	# buf2, tmp116
	vmovaps	%ymm1, -176(%rbp)	# tmp116, __B
	vmovaps	%ymm0, -208(%rbp)	# sum_dot.0_8, __C
# /usr/lib/gcc/x86_64-linux-gnu/12/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vmovaps	-176(%rbp), %ymm1	# __B, tmp117
	vmovaps	-208(%rbp), %ymm0	# __C, tmp118
	vfmadd231ps	-144(%rbp), %ymm1, %ymm0	# __A, tmp117, D.108856
# /usr/lib/gcc/x86_64-linux-gnu/12/include/fmaintrin.h:66:                                              (__v8sf)__C);
	nop	
# cosine_simd.cpp:33:         sum_dot = _mm256_fmadd_ps(buf1, buf2, sum_dot);
	vmovaps	%ymm0, -464(%rbp)	# D.108856, sum_dot
# cosine_simd.cpp:34:         sum_A = _mm256_fmadd_ps(buf1, buf1, sum_A);
	vmovaps	-496(%rbp), %ymm0	# sum_A, sum_A.1_10
	vmovaps	-80(%rbp), %ymm1	# buf1, tmp119
	vmovaps	%ymm1, -272(%rbp)	# tmp119, __A
	vmovaps	-80(%rbp), %ymm1	# buf1, tmp120
	vmovaps	%ymm1, -304(%rbp)	# tmp120, __B
	vmovaps	%ymm0, -336(%rbp)	# sum_A.1_10, __C
# /usr/lib/gcc/x86_64-linux-gnu/12/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vmovaps	-304(%rbp), %ymm1	# __B, tmp121
	vmovaps	-336(%rbp), %ymm0	# __C, tmp122
	vfmadd231ps	-272(%rbp), %ymm1, %ymm0	# __A, tmp121, D.108871
# /usr/lib/gcc/x86_64-linux-gnu/12/include/fmaintrin.h:66:                                              (__v8sf)__C);
	nop	
# cosine_simd.cpp:34:         sum_A = _mm256_fmadd_ps(buf1, buf1, sum_A);
	vmovaps	%ymm0, -496(%rbp)	# D.108871, sum_A
# cosine_simd.cpp:35:         sum_B = _mm256_fmadd_ps(buf2, buf2, sum_B);
	vmovaps	-528(%rbp), %ymm0	# sum_B, sum_B.2_12
	vmovaps	-112(%rbp), %ymm1	# buf2, tmp123
	vmovaps	%ymm1, -368(%rbp)	# tmp123, __A
	vmovaps	-112(%rbp), %ymm1	# buf2, tmp124
	vmovaps	%ymm1, -400(%rbp)	# tmp124, __B
	vmovaps	%ymm0, -432(%rbp)	# sum_B.2_12, __C
# /usr/lib/gcc/x86_64-linux-gnu/12/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vmovaps	-400(%rbp), %ymm1	# __B, tmp125
	vmovaps	-432(%rbp), %ymm0	# __C, tmp126
	vfmadd231ps	-368(%rbp), %ymm1, %ymm0	# __A, tmp125, D.108878
# /usr/lib/gcc/x86_64-linux-gnu/12/include/fmaintrin.h:66:                                              (__v8sf)__C);
	nop	
# cosine_simd.cpp:35:         sum_B = _mm256_fmadd_ps(buf2, buf2, sum_B);
	vmovaps	%ymm0, -528(%rbp)	# D.108878, sum_B
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	addq	$8, -24(%rbp)	#, i
.L19:
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	movl	SIZE(%rip), %eax	# SIZE, SIZE.3_14
	cltq
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	cmpq	%rax, -24(%rbp)	# _15, i
	jb	.L25	#,
# cosine_simd.cpp:38:     float float_dot = simd_horizontal_sum(sum_dot);
	leaq	-464(%rbp), %rax	#, tmp127
	movq	%rax, %rdi	# tmp127,
	call	_Z19simd_horizontal_sumRDv8_f	#
	vmovd	%xmm0, %eax	#, _28
	movl	%eax, -28(%rbp)	# _28, float_dot
# cosine_simd.cpp:39:     float float_A_norm = simd_horizontal_sum(sum_A);
	leaq	-496(%rbp), %rax	#, tmp128
	movq	%rax, %rdi	# tmp128,
	call	_Z19simd_horizontal_sumRDv8_f	#
	vmovd	%xmm0, %eax	#, _31
	movl	%eax, -32(%rbp)	# _31, float_A_norm
# cosine_simd.cpp:40:     float float_B_norm = simd_horizontal_sum(sum_B);
	leaq	-528(%rbp), %rax	#, tmp129
	movq	%rax, %rdi	# tmp129,
	call	_Z19simd_horizontal_sumRDv8_f	#
	vmovd	%xmm0, %eax	#, _34
	movl	%eax, -36(%rbp)	# _34, float_B_norm
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	movl	-32(%rbp), %eax	# float_A_norm, tmp130
	vmovd	%eax, %xmm0	# tmp130,
	call	_ZSt4sqrtf	#
	vmovd	%xmm0, %ebx	#, _16
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	movl	-36(%rbp), %eax	# float_B_norm, tmp131
	vmovd	%eax, %xmm0	# tmp131,
	call	_ZSt4sqrtf	#
	vmovd	%xmm0, %eax	#, _17
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	vmovd	%ebx, %xmm2	# _16, _16
	vmovd	%eax, %xmm3	# _17, _17
	vmulss	%xmm3, %xmm2, %xmm0	# _17, _16, _18
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	vmovss	-28(%rbp), %xmm1	# float_dot, tmp132
	vdivss	%xmm0, %xmm1, %xmm0	# _18, tmp132, _38
# cosine_simd.cpp:43: }
	addq	$544, %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_def_cfa 10, 0
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8373:
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
.LFB8374:
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
# cosine_simd.cpp:75: }
	movq	%rsp, %rax	#, tmp126
	movq	%rax, %rbx	# tmp126, saved_stack.14_47
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movl	SIZE(%rip), %eax	# SIZE, SIZE.5_48
	movslq	%eax, %rdx	# SIZE.5_48, _1
	decq	%rdx	# _2
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rdx, -64(%rbp)	# _3, D.108729
	movslq	%eax, %rdx	# SIZE.5_48, _4
	movq	%rdx, %r12	# _4, _5
	movl	$0, %r13d	#, _5
	movslq	%eax, %rdx	# SIZE.5_48, _9
	movq	%rdx, %r10	# _9, _10
	movl	$0, %r11d	#, _10
	cltq
	salq	$2, %rax	#, _13
	leaq	24(%rax), %rdx	#, tmp127
	movl	$16, %eax	#, tmp181
	decq	%rax	# tmp128
	addq	%rdx, %rax	# tmp127, tmp129
	movl	$16, %ecx	#, tmp182
	movl	$0, %edx	#, tmp132
	divq	%rcx	# tmp182
	imulq	$16, %rax, %rax	#, tmp131, tmp133
	subq	%rax, %rsp	# tmp133,
	movq	%rsp, %rax	#, tmp134
	addq	$31, %rax	#, tmp135
	shrq	$5, %rax	#, tmp136
	salq	$5, %rax	#, tmp137
	movq	%rax, -72(%rbp)	# tmp137, A.6
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movl	SIZE(%rip), %eax	# SIZE, SIZE.7_56
	movslq	%eax, %rdx	# SIZE.7_56, _14
	decq	%rdx	# _15
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rdx, -80(%rbp)	# _16, D.108736
	movslq	%eax, %rdx	# SIZE.7_56, _17
	movq	%rdx, %r8	# _17, _18
	movl	$0, %r9d	#, _18
	movslq	%eax, %rdx	# SIZE.7_56, _22
	movq	%rdx, %rsi	# _22, _23
	movl	$0, %edi	#, _23
	cltq
	salq	$2, %rax	#, _26
	leaq	24(%rax), %rdx	#, tmp138
	movl	$16, %eax	#, tmp183
	decq	%rax	# tmp139
	addq	%rdx, %rax	# tmp138, tmp140
	movl	$16, %ecx	#, tmp184
	movl	$0, %edx	#, tmp143
	divq	%rcx	# tmp184
	imulq	$16, %rax, %rax	#, tmp142, tmp144
	subq	%rax, %rsp	# tmp144,
	movq	%rsp, %rax	#, tmp145
	addq	$31, %rax	#, tmp146
	shrq	$5, %rax	#, tmp147
	salq	$5, %rax	#, tmp148
	movq	%rax, -88(%rbp)	# tmp148, B.8
# cosine_simd.cpp:51:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC0(%rip), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	.LC1(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	fopen@PLT	#
	movq	%rax, -96(%rbp)	# _65, fp
# cosine_simd.cpp:54:     int i = 0;
	movl	$0, -36(%rbp)	#, i
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	jmp	.L28	#
.L29:
# cosine_simd.cpp:57:         A[i] = a;
	vmovss	-116(%rbp), %xmm0	# a, a.9_27
	movq	-72(%rbp), %rdx	# A.6, tmp152
	movl	-36(%rbp), %eax	# i, tmp154
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)	# a.9_27, (*A.6_55)[i_37]
# cosine_simd.cpp:58:         B[i] = b;
	vmovss	-120(%rbp), %xmm0	# b, b.10_28
	movq	-88(%rbp), %rdx	# B.8, tmp155
	movl	-36(%rbp), %eax	# i, tmp157
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)	# b.10_28, (*B.8_63)[i_37]
# cosine_simd.cpp:59:         i += 1;
	incl	-36(%rbp)	# i
.L28:
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	leaq	-120(%rbp), %rdx	#, tmp158
	leaq	-116(%rbp), %rax	#, tmp159
	movq	-96(%rbp), %rdi	# fp, tmp160
	movq	%rdx, %rcx	# tmp158,
	movq	%rax, %rdx	# tmp159,
	leaq	.LC2(%rip), %rax	#, tmp161
	movq	%rax, %rsi	# tmp161,
	movl	$0, %eax	#,
	call	__isoc99_fscanf@PLT	#
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, _29
	sete	%al	#, retval.11_70
	testb	%al, %al	# retval.11_70
	jne	.L29	#,
# cosine_simd.cpp:63:     double simd_accum = 0.0;
	vxorpd	%xmm0, %xmm0, %xmm0	# tmp162
	vmovsd	%xmm0, -48(%rbp)	# tmp162, simd_accum
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	movl	$0, -52(%rbp)	#, i
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	jmp	.L30	#
.L31:
# cosine_simd.cpp:67:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -136(%rbp)	# tmp164, t1
# cosine_simd.cpp:68:         cosine_similarity_simd(&A[0], &B[0]);
	movq	-88(%rbp), %rdx	# B.8, _30
	movq	-72(%rbp), %rax	# A.6, _31
	movq	%rdx, %rsi	# _30,
	movq	%rax, %rdi	# _31,
	call	_Z22cosine_similarity_simdPfS_	#
# cosine_simd.cpp:69:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -144(%rbp)	# tmp166, t2
# cosine_simd.cpp:70:         duration = t2 - t1;
	leaq	-136(%rbp), %rdx	#, tmp167
	leaq	-144(%rbp), %rax	#, tmp168
	movq	%rdx, %rsi	# tmp167,
	movq	%rax, %rdi	# tmp168,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -104(%rbp)	# tmp170, D.100135
# cosine_simd.cpp:70:         duration = t2 - t1;
	leaq	-104(%rbp), %rdx	#, tmp171
	leaq	-112(%rbp), %rax	#, tmp172
	movq	%rdx, %rsi	# tmp171,
	movq	%rax, %rdi	# tmp172,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE	#
	vmovsd	-112(%rbp), %xmm0	# D.100213, tmp173
	vmovsd	%xmm0, -128(%rbp)	# tmp173, duration
# cosine_simd.cpp:71:         simd_accum += duration.count();
	leaq	-128(%rbp), %rax	#, tmp174
	movq	%rax, %rdi	# tmp174,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv	#
	vmovq	%xmm0, %rax	#, _90
# cosine_simd.cpp:71:         simd_accum += duration.count();
	vmovsd	-48(%rbp), %xmm0	# simd_accum, tmp176
	vmovq	%rax, %xmm2	# _90, _90
	vaddsd	%xmm2, %xmm0, %xmm0	# _90, tmp176, tmp175
	vmovsd	%xmm0, -48(%rbp)	# tmp175, simd_accum
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	incl	-52(%rbp)	# i
.L30:
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.12_32
	cmpl	%eax, -52(%rbp)	# EXECUTIONS.12_32, i
	jl	.L31	#,
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.13_33
	vcvtsi2sdl	%eax, %xmm0, %xmm0	# EXECUTIONS.13_33, _34
	vmovsd	-48(%rbp), %xmm1	# simd_accum, tmp177
	vdivsd	%xmm0, %xmm1, %xmm3	# _34, tmp177, _35
	vmovq	%xmm3, %rax	# _35, _35
	vmovq	%rax, %xmm0	# _35,
	leaq	_ZSt4cout(%rip), %rax	#, tmp178
	movq	%rax, %rdi	# tmp178,
	call	_ZNSolsEd@PLT	#
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	leaq	.LC4(%rip), %rdx	#, tmp179
	movq	%rdx, %rsi	# tmp179,
	movq	%rax, %rdi	# _36,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rbx, %rsp	# saved_stack.14_47,
# cosine_simd.cpp:75: }
	movl	$0, %eax	#, _80
	leaq	-24(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8374:
	.size	main, .-main
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB8706:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/12/bits/chrono.h:883: 	{ return __d; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__d, D.108757
# /usr/include/c++/12/bits/chrono.h:883: 	{ return __d; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8706:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB8733:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __lhs, __lhs
	movq	%rsi, -32(%rbp)	# __rhs, __rhs
# /usr/include/c++/12/bits/chrono.h:1028:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-32(%rbp), %rax	# __rhs, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -16(%rbp)	# tmp86, D.104133
# /usr/include/c++/12/bits/chrono.h:1028:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-24(%rbp), %rax	# __lhs, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -8(%rbp)	# tmp89, D.104132
# /usr/include/c++/12/bits/chrono.h:1028:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	leaq	-16(%rbp), %rdx	#, tmp90
	leaq	-8(%rbp), %rax	#, tmp91
	movq	%rdx, %rsi	# tmp90,
	movq	%rax, %rdi	# tmp91,
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_	#
# /usr/include/c++/12/bits/chrono.h:1028:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8733:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB8735:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# this, this
	movq	%rsi, -32(%rbp)	# __d, __d
# /usr/include/c++/12/bits/chrono.h:514: 	  : __r(duration_cast<duration>(__d).count()) { }
	movq	-32(%rbp), %rax	# __d, tmp83
	movq	%rax, %rdi	# tmp83,
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE	#
	vmovq	%xmm0, %rax	#, tmp84
	vmovq	%rax, %xmm0	# tmp84, tmp85
	vmovsd	%xmm0, -8(%rbp)	# tmp85, D.104166
# /usr/include/c++/12/bits/chrono.h:514: 	  : __r(duration_cast<duration>(__d).count()) { }
	leaq	-8(%rbp), %rax	#, tmp86
	movq	%rax, %rdi	# tmp86,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv	#
	vmovq	%xmm0, %rax	#, _1
# /usr/include/c++/12/bits/chrono.h:514: 	  : __r(duration_cast<duration>(__d).count()) { }
	movq	-24(%rbp), %rdx	# this, tmp87
	movq	%rax, (%rdx)	# _1, this_3(D)->__r
# /usr/include/c++/12/bits/chrono.h:514: 	  : __r(duration_cast<duration>(__d).count()) { }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8735:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, @function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv:
.LFB8737:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/12/bits/chrono.h:522: 	{ return __r; }
	movq	-8(%rbp), %rax	# this, tmp84
	vmovsd	(%rax), %xmm0	# this_2(D)->__r, _3
	vmovq	%xmm0, %rax	# _3, <retval>
# /usr/include/c++/12/bits/chrono.h:522: 	{ return __r; }
	vmovq	%rax, %xmm0	# <retval>,
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8737:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB8916:
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
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-56(%rbp), %rax	# __lhs, tmp87
	movq	(%rax), %rax	# *__lhs_5(D), tmp88
	movq	%rax, -32(%rbp)	# tmp88, D.106875
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rbx	#, _1
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-64(%rbp), %rax	# __rhs, tmp90
	movq	(%rax), %rax	# *__rhs_8(D), tmp91
	movq	%rax, -24(%rbp)	# tmp91, D.106876
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-24(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rax, %rbx	# _2, _1
	movq	%rbx, %rdx	# _1, _3
	movq	%rdx, -40(%rbp)	# _3, D.106877
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-40(%rbp), %rdx	#, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_	#
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-48(%rbp), %rax	# D.106878, D.108759
# /usr/include/c++/12/bits/chrono.h:651:       }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8916:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB8917:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# __d, __d
# /usr/include/c++/12/bits/chrono.h:260: 	return __dc::__cast(__d);
	movq	-8(%rbp), %rax	# __d, tmp84
	movq	%rax, %rdi	# tmp84,
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE	#
	vmovq	%xmm0, %rax	#, D.108768
# /usr/include/c++/12/bits/chrono.h:261:       }
	vmovq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8917:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE:
.LFB9025:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# __d, __d
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	movq	-24(%rbp), %rax	# __d, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vcvtsi2sdq	%rax, %xmm0, %xmm0	# _1, _2
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vmovsd	.LC5(%rip), %xmm1	#, tmp88
	vdivsd	%xmm1, %xmm0, %xmm0	# tmp88, _2, _3
# /usr/include/c++/12/bits/chrono.h:211: 	    return _ToDur(static_cast<__to_rep>(
	vmovsd	%xmm0, -8(%rbp)	# _3, D.108023
# /usr/include/c++/12/bits/chrono.h:211: 	    return _ToDur(static_cast<__to_rep>(
	leaq	-8(%rbp), %rdx	#, tmp89
	leaq	-16(%rbp), %rax	#, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_	#
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vmovsd	-16(%rbp), %xmm0	# D.108024, D.108770
	vmovq	%xmm0, %rax	# D.108770, <retval>
# /usr/include/c++/12/bits/chrono.h:213: 	  }
	vmovq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9025:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC5IdvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_:
.LFB9101:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
	movq	%rsi, -16(%rbp)	# __rep, __rep
# /usr/include/c++/12/bits/chrono.h:506: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-16(%rbp), %rax	# __rep, tmp83
	vmovsd	(%rax), %xmm0	# *__rep_5(D), _1
# /usr/include/c++/12/bits/chrono.h:506: 	  : __r(static_cast<rep>(__rep)) { }
	movq	-8(%rbp), %rax	# this, tmp84
	vmovsd	%xmm0, (%rax)	# _1, this_3(D)->__r
# /usr/include/c++/12/bits/chrono.h:506: 	  : __r(static_cast<rep>(__rep)) { }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9101:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB9143:
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
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rax	#, tmp83
	movq	%rax, %rdx	# tmp83,
	leaq	_ZStL8__ioinit(%rip), %rax	#, tmp84
	movq	%rax, %rsi	# tmp84,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp86
	movq	%rax, %rdi	# tmp85,
	call	__cxa_atexit@PLT	#
.L49:
# cosine_simd.cpp:75: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9143:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB9144:
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
.LFE9144:
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
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
