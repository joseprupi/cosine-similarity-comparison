	.file	"cosine_simd.cpp"
# GNU C++17 (Debian 12.2.0-14) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.1-p1, MPC version 1.3.1, isl version isl-0.25-GMP

# warning: MPFR header version 4.1.1-p1 differs from library version 4.2.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=znver2 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mmwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mwbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver2 -O3 -fasynchronous-unwind-tables
	.text
	.p2align 4
	.globl	_Z22cosine_similarity_simdPfS_
	.type	_Z22cosine_similarity_simdPfS_, @function
_Z22cosine_similarity_simdPfS_:
.LFB9950:
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
# cosine_simd.cpp:22: {
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$40, %rsp	#,
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	movslq	SIZE(%rip), %rdx	# SIZE,
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	testl	%edx, %edx	# SIZE.3_66
	je	.L2	#,
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	xorl	%eax, %eax	# i
	.p2align 4
	.p2align 3
.L3:
# /usr/lib/gcc/x86_64-linux-gnu/12/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vmovups	(%rdi,%rax,4), %ymm4	# MEM[(__m256_u * {ref-all})A_18(D) + i_68 * 4], tmp159
	vmovups	(%rsi,%rax,4), %ymm6	# MEM[(__m256_u * {ref-all})B_20(D) + i_68 * 4], tmp161
	vfmadd231ps	(%rsi,%rax,4), %ymm4, %ymm0	# MEM[(__m256_u * {ref-all})B_20(D) + i_68 * 4], tmp159, sum_dot
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	addq	$8, %rax	#, i
# /usr/lib/gcc/x86_64-linux-gnu/12/include/fmaintrin.h:65:   return (__m256)__builtin_ia32_vfmaddps256 ((__v8sf)__A, (__v8sf)__B,
	vfmadd231ps	%ymm4, %ymm4, %ymm2	#, tmp160, sum_A
	vfmadd231ps	%ymm6, %ymm6, %ymm1	#, tmp161, sum_B
# cosine_simd.cpp:28:     for (size_t i = 0; i < SIZE; i += 8)
	cmpq	%rdx, %rax	# _67, i
	jb	.L3	#,
.L2:
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:526:   return (__m128) __builtin_ia32_vextractf128_ps256 ((__v8sf)__X, __N);
	vextractf128	$0x1, %ymm0, %xmm3	# sum_dot, tmp125
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm3, %xmm0, %xmm0	# tmp125, tmp127, _13
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	vmovhlps	%xmm0, %xmm0, %xmm3	# _13, _13, tmp129
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm0, %xmm3, %xmm0	# _13, tmp129, _11
# /usr/lib/gcc/x86_64-linux-gnu/12/include/pmmintrin.h:71:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	vmovshdup	%xmm0, %xmm3	# _11, tmp130
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	vaddss	%xmm3, %xmm0, %xmm0	# tmp130, _11, tmp132
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:969:   return ((__v4sf)__A)[0];
	vmovaps	%xmm0, %xmm3	# tmp132, _28
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:526:   return (__m128) __builtin_ia32_vextractf128_ps256 ((__v8sf)__X, __N);
	vextractf128	$0x1, %ymm2, %xmm0	# sum_A, tmp133
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm2, %xmm0, %xmm0	# tmp135, tmp133, _32
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	vmovhlps	%xmm0, %xmm0, %xmm2	# _32, _32, tmp137
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm2, %xmm0, %xmm0	# tmp137, _32, _34
# /usr/lib/gcc/x86_64-linux-gnu/12/include/pmmintrin.h:71:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	vmovshdup	%xmm0, %xmm2	# _34, tmp138
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	vaddss	%xmm2, %xmm0, %xmm0	# tmp138, _34, tmp140
# /usr/lib/gcc/x86_64-linux-gnu/12/include/avxintrin.h:526:   return (__m128) __builtin_ia32_vextractf128_ps256 ((__v8sf)__X, __N);
	vextractf128	$0x1, %ymm1, %xmm2	# sum_B, tmp141
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm1, %xmm2, %xmm1	# tmp143, tmp141, _40
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:787:   return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
	vmovhlps	%xmm1, %xmm1, %xmm2	# _40, _40, tmp145
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:186:   return (__m128) ((__v4sf)__A + (__v4sf)__B);
	vaddps	%xmm2, %xmm1, %xmm1	# tmp145, _40, _42
# /usr/lib/gcc/x86_64-linux-gnu/12/include/pmmintrin.h:71:   return (__m128) __builtin_ia32_movshdup ((__v4sf)__X);
	vmovshdup	%xmm1, %xmm2	# _42, tmp146
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:130:   return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
	vaddss	%xmm2, %xmm1, %xmm1	# tmp146, _42, tmp148
# /usr/lib/gcc/x86_64-linux-gnu/12/include/xmmintrin.h:969:   return ((__v4sf)__A)[0];
	vmovaps	%xmm1, %xmm2	# tmp148, _45
	vxorps	%xmm1, %xmm1, %xmm1	# tmp149
	vucomiss	%xmm0, %xmm1	# _37, tmp149
	ja	.L14	#,
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	vsqrtss	%xmm0, %xmm0, %xmm1	# _37, _47
	vzeroupper
.L6:
	vxorps	%xmm0, %xmm0, %xmm0	# tmp150
	vucomiss	%xmm2, %xmm0	# _45, tmp150
	ja	.L15	#,
	vsqrtss	%xmm2, %xmm2, %xmm2	# _45, _46
.L9:
# cosine_simd.cpp:43: }
	movq	-8(%rbp), %r10	#,
	.cfi_remember_state
	.cfi_def_cfa 10, 0
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	vmulss	%xmm2, %xmm1, %xmm0	# _46, _47, tmp152
# cosine_simd.cpp:43: }
	leave	
# cosine_simd.cpp:42:     return float_dot / (sqrt(float_A_norm) * sqrt(float_B_norm));
	vdivss	%xmm0, %xmm3, %xmm0	# tmp152, _28, tmp151
# cosine_simd.cpp:43: }
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
.L14:
	.cfi_restore_state
	vmovss	%xmm2, -24(%rbp)	# _45, %sfp
	vmovss	%xmm3, -20(%rbp)	# _28, %sfp
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	vzeroupper
	call	sqrtf@PLT	#
	vmovaps	%xmm0, %xmm1	# tmp156, _47
	vmovss	-24(%rbp), %xmm2	# %sfp, _45
	vmovss	-20(%rbp), %xmm3	# %sfp, _28
	jmp	.L6	#
.L15:
	vmovaps	%xmm2, %xmm0	# _45,
	vmovss	%xmm1, -24(%rbp)	# _47, %sfp
	vmovss	%xmm3, -20(%rbp)	# _28, %sfp
	call	sqrtf@PLT	#
	vmovaps	%xmm0, %xmm2	# tmp157, _46
	vmovss	-24(%rbp), %xmm1	# %sfp, _47
	vmovss	-20(%rbp), %xmm3	# %sfp, _28
	jmp	.L9	#
	.cfi_endproc
.LFE9950:
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
.LFB9951:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# cosine_simd.cpp:51:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC2(%rip), %rsi	#, tmp135
	leaq	.LC3(%rip), %rdi	#, tmp136
# cosine_simd.cpp:46: {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	leaq	-52(%rbp), %r15	#, tmp158
	subq	$40, %rsp	#,
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movslq	SIZE(%rip), %rax	# SIZE, SIZE
	leaq	39(,%rax,4), %rax	#, tmp115
	shrq	$4, %rax	#, tmp117
	salq	$4, %rax	#, tmp119
	subq	%rax, %rsp	# tmp119,
	leaq	31(%rsp), %rbx	#, tmp121
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	subq	%rax, %rsp	# tmp119,
# cosine_simd.cpp:51:     fp = fopen("../tools/vectors.csv", "r");
	call	fopen@PLT	#
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	leaq	31(%rsp), %r12	#, tmp132
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %rbx	#, tmp123
# cosine_simd.cpp:48:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %r12	#, tmp134
# cosine_simd.cpp:51:     fp = fopen("../tools/vectors.csv", "r");
	movq	%rax, -72(%rbp)	# tmp160, %sfp
	leaq	-56(%rbp), %rax	#, tmp157
	movq	%rbx, %r14	# tmp123, ivtmp.101
	movq	%r12, %r13	# tmp134, ivtmp.103
	movq	%rax, -80(%rbp)	# tmp157, %sfp
	jmp	.L19	#
	.p2align 4
	.p2align 3
.L20:
# cosine_simd.cpp:57:         A[i] = a;
	vmovss	-56(%rbp), %xmm0	# a, a
	addq	$4, %r14	#, ivtmp.101
	addq	$4, %r13	#, ivtmp.103
	vmovss	%xmm0, -4(%r14)	# a, MEM[(float *)_60]
# cosine_simd.cpp:58:         B[i] = b;
	vmovss	-52(%rbp), %xmm0	# b, b
	vmovss	%xmm0, -4(%r13)	# b, MEM[(float *)_61]
.L19:
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	movq	-80(%rbp), %rdx	# %sfp,
	xorl	%eax, %eax	#
	movq	%r15, %rcx	# tmp158,
	leaq	.LC4(%rip), %rsi	#,
	movq	-72(%rbp), %rdi	# %sfp,
	call	__isoc99_fscanf@PLT	#
# cosine_simd.cpp:55:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, tmp161
	je	.L20	#,
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.12_9
	testl	%eax, %eax	# EXECUTIONS.12_9
	jle	.L23	#,
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	xorl	%r14d, %r14d	# i
# cosine_simd.cpp:63:     double simd_accum = 0.0;
	xorl	%r15d, %r15d	# simd_accum
	.p2align 4
	.p2align 3
.L22:
# cosine_simd.cpp:67:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# cosine_simd.cpp:68:         cosine_similarity_simd(&A[0], &B[0]);
	movq	%r12, %rsi	# tmp134,
	movq	%rbx, %rdi	# tmp123,
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	incl	%r14d	# i
# cosine_simd.cpp:67:         auto t1 = high_resolution_clock::now();
	movq	%rax, %r13	# tmp162, t1
# cosine_simd.cpp:68:         cosine_similarity_simd(&A[0], &B[0]);
	call	_Z22cosine_similarity_simdPfS_	#
# cosine_simd.cpp:69:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp170
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r13, %rax	# t1, tmp143
# cosine_simd.cpp:71:         simd_accum += duration.count();
	vmovq	%r15, %xmm3	# simd_accum, simd_accum
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vcvtsi2sdq	%rax, %xmm1, %xmm0	# tmp143, tmp170, tmp166
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vdivsd	.LC5(%rip), %xmm0, %xmm0	#, tmp144, tmp145
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.12_9
# cosine_simd.cpp:71:         simd_accum += duration.count();
	vaddsd	%xmm0, %xmm3, %xmm2	# tmp145, simd_accum, simd_accum
	vmovq	%xmm2, %r15	# simd_accum, simd_accum
# cosine_simd.cpp:65:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%r14d, %eax	# i, EXECUTIONS.12_9
	jg	.L22	#,
.L21:
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	vmovq	%r15, %xmm5	# simd_accum, simd_accum
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp173
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#, tmp149
# cosine_simd.cpp:74:     std::cout << simd_accum / EXECUTIONS << " ms\n";
	vcvtsi2sdl	%eax, %xmm4, %xmm0	# EXECUTIONS.12_9, tmp173, tmp167
	vdivsd	%xmm0, %xmm5, %xmm0	# tmp147, simd_accum, tmp148
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/12/ostream:620: 	__ostream_insert(__out, __s,
	movl	$4, %edx	#,
	leaq	.LC6(%rip), %rsi	#, tmp150
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	movq	%rax, %rdi	# tmp164, _48
# /usr/include/c++/12/ostream:620: 	__ostream_insert(__out, __s,
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
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L23:
	.cfi_restore_state
# cosine_simd.cpp:63:     double simd_accum = 0.0;
	xorl	%r15d, %r15d	# simd_accum
	jmp	.L21	#
	.cfi_endproc
.LFE9951:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB10721:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rbx	#, tmp82
	movq	%rbx, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	%rbx, %rsi	# tmp82,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
	leaq	__dso_handle(%rip), %rdx	#, tmp83
# cosine_simd.cpp:75: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE10721:
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
.LC5:
	.long	0
	.long	1093567616
	.hidden	__dso_handle
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
