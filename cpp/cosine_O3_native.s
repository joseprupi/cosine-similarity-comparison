	.file	"cosine.cpp"
# GNU C++17 (Debian 12.2.0-14) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.1-p1, MPC version 1.3.1, isl version isl-0.25-GMP

# warning: MPFR header version 4.1.1-p1 differs from library version 4.2.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -march=znver2 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512er -mno-avx512pf -mno-avx512vbmi -mno-avx512ifma -mno-avx5124vnniw -mno-avx5124fmaps -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mno-vpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mmwaitx -mno-pconfig -mno-pku -mno-prefetchwt1 -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mno-shstk -mno-tbm -mno-tsxldtrk -mno-vaes -mno-waitpkg -mwbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver2 -O3 -fasynchronous-unwind-tables
	.text
	.p2align 4
	.globl	_Z17cosine_similarityPfS_
	.type	_Z17cosine_similarityPfS_, @function
_Z17cosine_similarityPfS_:
.LFB4102:
	.cfi_startproc
	movq	%rdi, %rcx	# tmp264, A
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %edi	# SIZE, SIZE.0_35
	testl	%edi, %edi	# SIZE.0_35
	jle	.L14	#,
# cosine.cpp:12: {
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	leal	-1(%rdi), %eax	#, tmp209
	movq	%rsi, %rdx	# tmp265, B
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$40, %rsp	#,
	cmpl	$6, %eax	#, tmp209
	jbe	.L15	#,
	movl	%edi, %esi	# SIZE.0_35, bnd.65
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm4, %xmm4, %xmm4	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# ivtmp.102
	shrl	$3, %esi	#,
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm4, %xmm0	#, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm4, %xmm3	# tmp20, dot
	salq	$5, %rsi	#, _15
	.p2align 4
	.p2align 3
.L4:
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovups	(%rcx,%rax), %ymm7	# MEM <vector(8) float> [(float *)A_21(D) + ivtmp.102_185 * 1], tmp270
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmovups	(%rdx,%rax), %ymm6	# MEM <vector(8) float> [(float *)B_22(D) + ivtmp.102_185 * 1], tmp272
# cosine.cpp:16:         dot += A[i] * B[i];
	vmulps	(%rdx,%rax), %ymm7, %ymm2	# MEM <vector(8) float> [(float *)B_22(D) + ivtmp.102_185 * 1], tmp270, vect__9.74
	addq	$32, %rax	#, ivtmp.102
	vaddss	%xmm2, %xmm3, %xmm1	# stmp_dot_23.75, dot, stmp_dot_23.75
	vshufps	$85, %xmm2, %xmm2, %xmm3	#, tmp214, tmp214, stmp_dot_23.75
	vshufps	$255, %xmm2, %xmm2, %xmm5	#, tmp214, tmp214, stmp_dot_23.75
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_dot_23.75, stmp_dot_23.75, stmp_dot_23.75
	vunpckhps	%xmm2, %xmm2, %xmm3	# tmp214, tmp214, stmp_dot_23.75
	vextractf128	$0x1, %ymm2, %xmm2	# vect__9.74, tmp218
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_dot_23.75, stmp_dot_23.75, stmp_dot_23.75
	vshufps	$85, %xmm2, %xmm2, %xmm3	#, tmp218, tmp218, stmp_dot_23.75
	vaddss	%xmm5, %xmm1, %xmm1	# stmp_dot_23.75, stmp_dot_23.75, stmp_dot_23.75
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_dot_23.75, stmp_dot_23.75, stmp_dot_23.75
	vaddss	%xmm3, %xmm1, %xmm1	# stmp_dot_23.75, stmp_dot_23.75, stmp_dot_23.75
	vunpckhps	%xmm2, %xmm2, %xmm3	# tmp218, tmp218, stmp_dot_23.75
# cosine.cpp:16:         dot += A[i] * B[i];
	vshufps	$255, %xmm2, %xmm2, %xmm2	#, tmp218, tmp218, stmp_dot_23.75
	vaddss	%xmm3, %xmm1, %xmm3	# stmp_dot_23.75, stmp_dot_23.75, stmp_dot_23.75
	vaddss	%xmm2, %xmm3, %xmm3	# stmp_dot_23.75, stmp_dot_23.75, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmulps	%ymm7, %ymm7, %ymm2	#, tmp271, vect__11.76
	vshufps	$85, %xmm2, %xmm2, %xmm1	#, tmp224, tmp224, stmp_denom_a_24.77
	vshufps	$255, %xmm2, %xmm2, %xmm5	#, tmp224, tmp224, stmp_denom_a_24.77
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_a_24.77, denom_a, stmp_denom_a_24.77
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_24.77, stmp_denom_a_24.77, stmp_denom_a_24.77
	vunpckhps	%xmm2, %xmm2, %xmm1	# tmp224, tmp224, stmp_denom_a_24.77
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_24.77, stmp_denom_a_24.77, stmp_denom_a_24.77
	vextractf128	$0x1, %ymm2, %xmm1	# vect__11.76, tmp228
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp228, tmp228, stmp_denom_a_24.77
	vaddss	%xmm5, %xmm0, %xmm0	# stmp_denom_a_24.77, stmp_denom_a_24.77, stmp_denom_a_24.77
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_24.77, stmp_denom_a_24.77, stmp_denom_a_24.77
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_a_24.77, stmp_denom_a_24.77, stmp_denom_a_24.77
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp228, tmp228, stmp_denom_a_24.77
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp228, tmp228, stmp_denom_a_24.77
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_a_24.77, stmp_denom_a_24.77, stmp_denom_a_24.77
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulps	%ymm6, %ymm6, %ymm2	#, tmp272, vect__12.78
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_24.77, stmp_denom_a_24.77, denom_a
	vaddss	%xmm2, %xmm4, %xmm1	# stmp_denom_b_25.79, denom_b, stmp_denom_b_25.79
	vshufps	$85, %xmm2, %xmm2, %xmm4	#, tmp234, tmp234, stmp_denom_b_25.79
	vshufps	$255, %xmm2, %xmm2, %xmm5	#, tmp234, tmp234, stmp_denom_b_25.79
	vaddss	%xmm4, %xmm1, %xmm1	# stmp_denom_b_25.79, stmp_denom_b_25.79, stmp_denom_b_25.79
	vunpckhps	%xmm2, %xmm2, %xmm4	# tmp234, tmp234, stmp_denom_b_25.79
	vextractf128	$0x1, %ymm2, %xmm2	# vect__12.78, tmp238
	vaddss	%xmm4, %xmm1, %xmm1	# stmp_denom_b_25.79, stmp_denom_b_25.79, stmp_denom_b_25.79
	vshufps	$85, %xmm2, %xmm2, %xmm4	#, tmp238, tmp238, stmp_denom_b_25.79
	vaddss	%xmm5, %xmm1, %xmm1	# stmp_denom_b_25.79, stmp_denom_b_25.79, stmp_denom_b_25.79
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_denom_b_25.79, stmp_denom_b_25.79, stmp_denom_b_25.79
	vaddss	%xmm4, %xmm1, %xmm1	# stmp_denom_b_25.79, stmp_denom_b_25.79, stmp_denom_b_25.79
	vunpckhps	%xmm2, %xmm2, %xmm4	# tmp238, tmp238, stmp_denom_b_25.79
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vshufps	$255, %xmm2, %xmm2, %xmm2	#, tmp238, tmp238, stmp_denom_b_25.79
	vaddss	%xmm4, %xmm1, %xmm4	# stmp_denom_b_25.79, stmp_denom_b_25.79, stmp_denom_b_25.79
	vaddss	%xmm2, %xmm4, %xmm4	# stmp_denom_b_25.79, stmp_denom_b_25.79, denom_b
	cmpq	%rax, %rsi	# ivtmp.102, _15
	jne	.L4	#,
	movl	%edi, %eax	# SIZE.0_35, tmp.83
	andl	$-8, %eax	#, tmp.83
	movl	%eax, %r8d	# tmp.83,
	cmpl	%eax, %edi	# tmp.83, SIZE.0_35
	je	.L29	#,
	vzeroupper
.L3:
	movl	%edi, %esi	# SIZE.0_35, niters.80
	subl	%r8d, %esi	# niters_vector_mult_vf.66, niters.80
	leal	-1(%rsi), %r9d	#, tmp244
	cmpl	$2, %r9d	#, tmp244
	jbe	.L6	#,
	salq	$2, %r8	#, _183
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovups	(%rcx,%r8), %xmm2	# MEM <vector(4) float> [(float *)vectp_A.85_181], MEM <vector(4) float> [(float *)vectp_A.85_181]
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovups	(%rdx,%r8), %xmm1	# MEM <vector(4) float> [(float *)vectp_B.88_187], MEM <vector(4) float> [(float *)vectp_B.88_187]
	movl	%esi, %r8d	# niters.80, niters_vector_mult_vf.82
	andl	$-4, %r8d	#, niters_vector_mult_vf.82
	addl	%r8d, %eax	# niters_vector_mult_vf.82, tmp.83
	andl	$3, %esi	#, niters.80
# cosine.cpp:16:         dot += A[i] * B[i];
	vmulps	%xmm1, %xmm2, %xmm6	# MEM <vector(4) float> [(float *)vectp_B.88_187], MEM <vector(4) float> [(float *)vectp_A.85_181], vect__50.90
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmulps	%xmm2, %xmm2, %xmm2	# MEM <vector(4) float> [(float *)vectp_A.85_181], MEM <vector(4) float> [(float *)vectp_A.85_181], vect__46.92
	vaddss	%xmm6, %xmm3, %xmm3	# stmp_dot_49.91, dot, stmp_dot_49.91
	vshufps	$85, %xmm6, %xmm6, %xmm5	#, vect__50.90, vect__50.90, stmp_dot_49.91
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulps	%xmm1, %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_B.88_187], MEM <vector(4) float> [(float *)vectp_B.88_187], vect__42.94
	vaddss	%xmm5, %xmm3, %xmm3	# stmp_dot_49.91, stmp_dot_49.91, stmp_dot_49.91
	vunpckhps	%xmm6, %xmm6, %xmm5	# vect__50.90, vect__50.90, stmp_dot_49.91
# cosine.cpp:16:         dot += A[i] * B[i];
	vshufps	$255, %xmm6, %xmm6, %xmm6	#, vect__50.90, vect__50.90, stmp_dot_49.91
	vaddss	%xmm5, %xmm3, %xmm3	# stmp_dot_49.91, stmp_dot_49.91, stmp_dot_49.91
	vaddss	%xmm2, %xmm0, %xmm5	# stmp_denom_a_44.93, denom_a, stmp_denom_a_44.93
	vshufps	$85, %xmm2, %xmm2, %xmm0	#, vect__46.92, vect__46.92, stmp_denom_a_44.93
	vaddss	%xmm0, %xmm5, %xmm5	# stmp_denom_a_44.93, stmp_denom_a_44.93, stmp_denom_a_44.93
	vunpckhps	%xmm2, %xmm2, %xmm0	# vect__46.92, vect__46.92, stmp_denom_a_44.93
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vshufps	$255, %xmm2, %xmm2, %xmm2	#, vect__46.92, vect__46.92, stmp_denom_a_44.93
# cosine.cpp:16:         dot += A[i] * B[i];
	vaddss	%xmm6, %xmm3, %xmm3	# stmp_dot_49.91, stmp_dot_49.91, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vaddss	%xmm0, %xmm5, %xmm0	# stmp_denom_a_44.93, stmp_denom_a_44.93, stmp_denom_a_44.93
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_a_44.93, stmp_denom_a_44.93, denom_a
	vaddss	%xmm1, %xmm4, %xmm2	# stmp_denom_b_36.95, denom_b, stmp_denom_b_36.95
	vshufps	$85, %xmm1, %xmm1, %xmm4	#, vect__42.94, vect__42.94, stmp_denom_b_36.95
	vaddss	%xmm4, %xmm2, %xmm2	# stmp_denom_b_36.95, stmp_denom_b_36.95, stmp_denom_b_36.95
	vunpckhps	%xmm1, %xmm1, %xmm4	# vect__42.94, vect__42.94, stmp_denom_b_36.95
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__42.94, vect__42.94, stmp_denom_b_36.95
	vaddss	%xmm4, %xmm2, %xmm4	# stmp_denom_b_36.95, stmp_denom_b_36.95, stmp_denom_b_36.95
	vaddss	%xmm1, %xmm4, %xmm4	# stmp_denom_b_36.95, stmp_denom_b_36.95, denom_b
	je	.L5	#,
.L6:
# cosine.cpp:16:         dot += A[i] * B[i];
	movslq	%eax, %rsi	# tmp.83, tmp.83
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	leal	1(%rax), %r8d	#, i
# cosine.cpp:16:         dot += A[i] * B[i];
	salq	$2, %rsi	#, _7
	vmovss	(%rcx,%rsi), %xmm2	# *_8, _9
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	(%rdx,%rsi), %xmm1	# *_11, _12
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm2, %xmm2, %xmm0	# _9, _9, denom_a
# cosine.cpp:16:         dot += A[i] * B[i];
	vfmadd231ss	%xmm1, %xmm2, %xmm3	# _12, _9, dot
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm4	# _12, _12, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%r8d, %edi	# i, SIZE.0_35
	jle	.L5	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	4(%rcx,%rsi), %xmm2	# *_143, _142
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	4(%rdx,%rsi), %xmm1	# *_70, _71
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	addl	$2, %eax	#, i
# cosine.cpp:16:         dot += A[i] * B[i];
	vfmadd231ss	%xmm2, %xmm1, %xmm3	# _142, _71, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm2, %xmm2, %xmm0	# _142, _142, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm4	# _71, _71, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%eax, %edi	# i, SIZE.0_35
	jle	.L5	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	8(%rcx,%rsi), %xmm2	# *_153, _154
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	8(%rdx,%rsi), %xmm1	# *_155, _156
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm2, %xmm2, %xmm0	# _154, _154, denom_a
# cosine.cpp:16:         dot += A[i] * B[i];
	vfmadd231ss	%xmm1, %xmm2, %xmm3	# _156, _154, dot
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm4	# _156, _156, denom_b
.L5:
	vxorps	%xmm1, %xmm1, %xmm1	# tmp259
	vucomiss	%xmm0, %xmm1	# denom_a, tmp259
	ja	.L21	#,
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	vsqrtss	%xmm0, %xmm0, %xmm1	# denom_a, _34
.L10:
	vxorps	%xmm0, %xmm0, %xmm0	# tmp260
	vucomiss	%xmm4, %xmm0	# denom_b, tmp260
	ja	.L22	#,
	vsqrtss	%xmm4, %xmm4, %xmm4	# denom_b, _27
.L13:
# cosine.cpp:21: }
	movq	-8(%rbp), %r10	#,
	.cfi_def_cfa 10, 0
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	vmulss	%xmm1, %xmm4, %xmm4	# _34, _27, tmp262
# cosine.cpp:21: }
	leave	
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	vdivss	%xmm4, %xmm3, %xmm0	# tmp262, dot, tmp261
# cosine.cpp:21: }
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L14:
	.cfi_restore 6
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm4, %xmm4, %xmm4	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	vmovaps	%xmm4, %xmm1	#, _34
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	vsqrtss	%xmm4, %xmm4, %xmm4	# denom_b, _27
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	vmulss	%xmm1, %xmm4, %xmm4	# _34, _27, tmp262
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	vdivss	%xmm4, %xmm1, %xmm0	# tmp262, dot, tmp261
# cosine.cpp:21: }
	ret	
	.p2align 4
	.p2align 3
.L29:
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	.cfi_escape 0x10,0x6,0x2,0x76,0
	vzeroupper
	jmp	.L5	#
.L15:
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm4, %xmm4, %xmm4	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%r8d, %r8d	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# tmp.83
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm4, %xmm0	#, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm4, %xmm3	# tmp20, dot
	jmp	.L3	#
.L21:
	vmovss	%xmm4, -24(%rbp)	# denom_b, %sfp
	vmovss	%xmm3, -20(%rbp)	# dot, %sfp
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	call	sqrtf@PLT	#
	vmovss	-24(%rbp), %xmm4	# %sfp, denom_b
	vmovaps	%xmm0, %xmm1	# tmp266, _34
	vmovss	-20(%rbp), %xmm3	# %sfp, dot
	jmp	.L10	#
.L22:
	vmovaps	%xmm4, %xmm0	# denom_b,
	vmovss	%xmm3, -24(%rbp)	# dot, %sfp
	vmovss	%xmm1, -20(%rbp)	# _34, %sfp
	call	sqrtf@PLT	#
	vmovaps	%xmm0, %xmm4	# tmp267, _27
	vmovss	-24(%rbp), %xmm3	# %sfp, dot
	vmovss	-20(%rbp), %xmm1	# %sfp, _34
	jmp	.L13	#
	.cfi_endproc
.LFE4102:
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
.LFB4103:
	.cfi_startproc
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC1(%rip), %rsi	#, tmp234
	leaq	.LC2(%rip), %rdi	#, tmp235
# cosine.cpp:24: {
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	leaq	-56(%rbp), %r14	#, tmp298
	subq	$64, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movslq	SIZE(%rip), %rax	# SIZE, SIZE
	leaq	39(,%rax,4), %rax	#, tmp214
	shrq	$4, %rax	#, tmp216
	salq	$4, %rax	#, tmp218
	subq	%rax, %rsp	# tmp218,
	leaq	31(%rsp), %r8	#, tmp220
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	subq	%rax, %rsp	# tmp218,
	leaq	31(%rsp), %r9	#, tmp231
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %r8	#, tmp220
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %r9	#, tmp231
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%r8, %r13	# tmp220, tmp222
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%r9, %r15	# tmp231, tmp233
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	call	fopen@PLT	#
	movq	%r13, %r12	# tmp222, ivtmp.166
	movq	%rax, -80(%rbp)	# tmp301, %sfp
	leaq	-52(%rbp), %rax	#, tmp299
	movq	%r15, %rbx	# tmp233, ivtmp.168
	movq	%rax, -88(%rbp)	# tmp299, %sfp
	jmp	.L31	#
	.p2align 4
	.p2align 3
.L32:
# cosine.cpp:35:         A[i] = a;
	vmovss	-56(%rbp), %xmm0	# a, a
	addq	$4, %r12	#, ivtmp.166
	addq	$4, %rbx	#, ivtmp.168
	vmovss	%xmm0, -4(%r12)	# a, MEM[(float *)_217]
# cosine.cpp:36:         B[i] = b;
	vmovss	-52(%rbp), %xmm0	# b, b
	vmovss	%xmm0, -4(%rbx)	# b, MEM[(float *)_172]
.L31:
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	movq	-88(%rbp), %rcx	# %sfp,
	xorl	%eax, %eax	#
	movq	%r14, %rdx	# tmp298,
	leaq	.LC3(%rip), %rsi	#,
	movq	-80(%rbp), %rdi	# %sfp,
	call	__isoc99_fscanf@PLT	#
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, tmp302
	je	.L32	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_9
	testl	%eax, %eax	# EXECUTIONS.8_9
	jle	.L33	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	xorl	%r12d, %r12d	# i
	xorl	%r14d, %r14d	# tmp300
	.p2align 4
	.p2align 3
.L42:
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %ecx	# SIZE, SIZE.0_75
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	movq	%rax, %rbx	# tmp303, t1
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	testl	%ecx, %ecx	# SIZE.0_75
	jle	.L34	#,
	leal	-1(%rcx), %eax	#, tmp242
	cmpl	$6, %eax	#, tmp242
	jbe	.L43	#,
	movl	%ecx, %edx	# SIZE.0_75, bnd.118
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm3, %xmm3, %xmm3	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# ivtmp.151
	shrl	$3, %edx	#,
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm4	#, denom_a
	salq	$5, %rdx	#, _174
	.p2align 4
	.p2align 3
.L36:
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmovaps	0(%r13,%rax), %ymm5	# MEM <vector(8) float> [(float *)A.2_22 + ivtmp.151_8 * 1], tmp316
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmovaps	(%r15,%rax), %ymm6	# MEM <vector(8) float> [(float *)B.4_24 + ivtmp.151_8 * 1], tmp317
	addq	$32, %rax	#, ivtmp.151
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmulps	%ymm5, %ymm5, %ymm1	#, tmp316, vect__61.127
	vaddss	%xmm1, %xmm4, %xmm0	# stmp_denom_a_63.128, denom_a, stmp_denom_a_63.128
	vshufps	$85, %xmm1, %xmm1, %xmm4	#, tmp245, tmp245, stmp_denom_a_63.128
	vshufps	$255, %xmm1, %xmm1, %xmm2	#, tmp245, tmp245, stmp_denom_a_63.128
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_denom_a_63.128, stmp_denom_a_63.128, stmp_denom_a_63.128
	vunpckhps	%xmm1, %xmm1, %xmm4	# tmp245, tmp245, stmp_denom_a_63.128
	vextractf128	$0x1, %ymm1, %xmm1	# vect__61.127, tmp249
	vaddss	%xmm4, %xmm0, %xmm0	# stmp_denom_a_63.128, stmp_denom_a_63.128, stmp_denom_a_63.128
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_a_63.128, stmp_denom_a_63.128, stmp_denom_a_63.128
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp249, tmp249, stmp_denom_a_63.128
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_a_63.128, stmp_denom_a_63.128, stmp_denom_a_63.128
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_a_63.128, stmp_denom_a_63.128, stmp_denom_a_63.128
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp249, tmp249, stmp_denom_a_63.128
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp249, tmp249, stmp_denom_a_63.128
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_a_63.128, stmp_denom_a_63.128, stmp_denom_a_63.128
	vaddss	%xmm1, %xmm0, %xmm4	# stmp_denom_a_63.128, stmp_denom_a_63.128, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulps	%ymm6, %ymm6, %ymm1	#, tmp317, vect__64.129
	vaddss	%xmm1, %xmm3, %xmm0	# stmp_denom_b_66.130, denom_b, stmp_denom_b_66.130
	vshufps	$85, %xmm1, %xmm1, %xmm3	#, tmp255, tmp255, stmp_denom_b_66.130
	vshufps	$255, %xmm1, %xmm1, %xmm2	#, tmp255, tmp255, stmp_denom_b_66.130
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_denom_b_66.130, stmp_denom_b_66.130, stmp_denom_b_66.130
	vunpckhps	%xmm1, %xmm1, %xmm3	# tmp255, tmp255, stmp_denom_b_66.130
	vextractf128	$0x1, %ymm1, %xmm1	# vect__64.129, tmp259
	vaddss	%xmm3, %xmm0, %xmm0	# stmp_denom_b_66.130, stmp_denom_b_66.130, stmp_denom_b_66.130
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_b_66.130, stmp_denom_b_66.130, stmp_denom_b_66.130
	vshufps	$85, %xmm1, %xmm1, %xmm2	#, tmp259, tmp259, stmp_denom_b_66.130
	vaddss	%xmm1, %xmm0, %xmm0	# stmp_denom_b_66.130, stmp_denom_b_66.130, stmp_denom_b_66.130
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_b_66.130, stmp_denom_b_66.130, stmp_denom_b_66.130
	vunpckhps	%xmm1, %xmm1, %xmm2	# tmp259, tmp259, stmp_denom_b_66.130
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, tmp259, tmp259, stmp_denom_b_66.130
	vaddss	%xmm2, %xmm0, %xmm0	# stmp_denom_b_66.130, stmp_denom_b_66.130, stmp_denom_b_66.130
	vaddss	%xmm1, %xmm0, %xmm3	# stmp_denom_b_66.130, stmp_denom_b_66.130, denom_b
	cmpq	%rdx, %rax	# _174, ivtmp.151
	jne	.L36	#,
	movl	%ecx, %eax	# SIZE.0_75, tmp.134
	andl	$-8, %eax	#, tmp.134
	movl	%eax, %esi	# tmp.134,
	cmpl	%eax, %ecx	# tmp.134, SIZE.0_75
	je	.L50	#,
	vzeroupper
.L35:
	movl	%ecx, %edx	# SIZE.0_75, niters.131
	subl	%esi, %edx	# niters_vector_mult_vf.119, niters.131
	leal	-1(%rdx), %edi	#, tmp265
	cmpl	$2, %edi	#, tmp265
	jbe	.L38	#,
	salq	$2, %rsi	#, _188
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovaps	0(%r13,%rsi), %xmm1	# MEM <vector(4) float> [(float *)vectp_A.136_186], vect__65.137
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovaps	(%r15,%rsi), %xmm0	# MEM <vector(4) float> [(float *)vectp_B.139_192], vect__59.140
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmulps	%xmm1, %xmm1, %xmm1	# vect__65.137, vect__65.137, vect__58.141
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulps	%xmm0, %xmm0, %xmm0	# vect__59.140, vect__59.140, vect__14.143
	vaddss	%xmm1, %xmm4, %xmm2	# stmp_denom_a_16.142, denom_a, stmp_denom_a_16.142
	vshufps	$85, %xmm1, %xmm1, %xmm4	#, vect__58.141, vect__58.141, stmp_denom_a_16.142
	vaddss	%xmm4, %xmm2, %xmm2	# stmp_denom_a_16.142, stmp_denom_a_16.142, stmp_denom_a_16.142
	vunpckhps	%xmm1, %xmm1, %xmm4	# vect__58.141, vect__58.141, stmp_denom_a_16.142
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vshufps	$255, %xmm1, %xmm1, %xmm1	#, vect__58.141, vect__58.141, stmp_denom_a_16.142
	vaddss	%xmm4, %xmm2, %xmm4	# stmp_denom_a_16.142, stmp_denom_a_16.142, stmp_denom_a_16.142
	vshufps	$85, %xmm0, %xmm0, %xmm2	#, vect__14.143, vect__14.143, stmp_denom_b_13.144
	vaddss	%xmm1, %xmm4, %xmm4	# stmp_denom_a_16.142, stmp_denom_a_16.142, denom_a
	vaddss	%xmm0, %xmm3, %xmm1	# stmp_denom_b_13.144, denom_b, stmp_denom_b_13.144
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_denom_b_13.144, stmp_denom_b_13.144, stmp_denom_b_13.144
	vunpckhps	%xmm0, %xmm0, %xmm2	# vect__14.143, vect__14.143, stmp_denom_b_13.144
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vshufps	$255, %xmm0, %xmm0, %xmm0	#, vect__14.143, vect__14.143, stmp_denom_b_13.144
	vaddss	%xmm2, %xmm1, %xmm1	# stmp_denom_b_13.144, stmp_denom_b_13.144, stmp_denom_b_13.144
	vaddss	%xmm0, %xmm1, %xmm3	# stmp_denom_b_13.144, stmp_denom_b_13.144, denom_b
	testb	$3, %dl	#, niters.131
	je	.L37	#,
	andl	$-4, %edx	#, niters_vector_mult_vf.133
	addl	%edx, %eax	# niters_vector_mult_vf.133, tmp.134
.L38:
# cosine.cpp:16:         dot += A[i] * B[i];
	movslq	%eax, %rdx	# tmp.134, tmp.134
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	leal	1(%rax), %esi	#, i
# cosine.cpp:16:         dot += A[i] * B[i];
	salq	$2, %rdx	#, _55
	vmovss	0(%r13,%rdx), %xmm1	# *_56, _57
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	(%r15,%rdx), %xmm0	# *_61, _64
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm4	# _57, _57, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm3	# _64, _64, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%ecx, %esi	# SIZE.0_75, i
	jge	.L37	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	4(%r13,%rdx), %xmm1	# *_74, _155
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	4(%r15,%rdx), %xmm0	# *_154, _97
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	addl	$2, %eax	#, i
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm4	# _155, _155, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm3	# _97, _97, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%eax, %ecx	# i, SIZE.0_75
	jle	.L37	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	8(%r13,%rdx), %xmm1	# *_163, _164
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	8(%r15,%rdx), %xmm0	# *_165, _166
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vfmadd231ss	%xmm1, %xmm1, %xmm4	# _164, _164, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vfmadd231ss	%xmm0, %xmm0, %xmm3	# _166, _166, denom_b
.L37:
	vmovd	%r14d, %xmm7	# tmp300, tmp300
	vucomiss	%xmm4, %xmm7	# denom_a, tmp300
	ja	.L51	#,
.L40:
	vmovd	%r14d, %xmm7	# tmp300, tmp300
	vucomiss	%xmm3, %xmm7	# denom_b, tmp300
	ja	.L52	#,
.L34:
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp325
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	incl	%r12d	# i
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# t1, tmp282
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vcvtsi2sdq	%rax, %xmm7, %xmm0	# tmp282, tmp325, tmp309
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vdivsd	.LC4(%rip), %xmm0, %xmm0	#, tmp283, tmp284
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_9
# cosine.cpp:49:         normal_accum += duration.count();
	vaddsd	-72(%rbp), %xmm0, %xmm7	# %sfp, tmp284, normal_accum
	vmovsd	%xmm7, -72(%rbp)	# normal_accum, %sfp
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%r12d, %eax	# i, EXECUTIONS.8_9
	jg	.L42	#,
.L33:
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	vmovsd	-72(%rbp), %xmm5	# %sfp, normal_accum
	vxorpd	%xmm7, %xmm7, %xmm7	# tmp328
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#, tmp288
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	vcvtsi2sdl	%eax, %xmm7, %xmm0	# EXECUTIONS.8_9, tmp328, tmp310
	vdivsd	%xmm0, %xmm5, %xmm0	# tmp286, normal_accum, tmp287
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/12/ostream:620: 	__ostream_insert(__out, __s,
	movl	$4, %edx	#,
	leaq	.LC5(%rip), %rsi	#, tmp289
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	movq	%rax, %rdi	# tmp306, _49
# /usr/include/c++/12/ostream:620: 	__ostream_insert(__out, __s,
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
.L50:
	.cfi_restore_state
	vzeroupper
	jmp	.L37	#
.L43:
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm3, %xmm3, %xmm3	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%esi, %esi	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# tmp.134
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vmovaps	%xmm3, %xmm4	#, denom_a
	jmp	.L35	#
.L51:
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	vmovaps	%xmm4, %xmm0	# denom_a,
	vmovss	%xmm3, -80(%rbp)	# denom_b, %sfp
	call	sqrtf@PLT	#
	vmovss	-80(%rbp), %xmm3	# %sfp, denom_b
	jmp	.L40	#
.L52:
	vmovaps	%xmm3, %xmm0	# denom_b,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	incl	%r12d	# i
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	call	sqrtf@PLT	#
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vxorpd	%xmm6, %xmm6, %xmm6	# tmp322
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# t1, tmp278
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vcvtsi2sdq	%rax, %xmm6, %xmm0	# tmp278, tmp322, tmp308
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vdivsd	.LC4(%rip), %xmm0, %xmm0	#, tmp279, tmp280
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_9
# cosine.cpp:49:         normal_accum += duration.count();
	vaddsd	-72(%rbp), %xmm0, %xmm6	# %sfp, tmp280, normal_accum
	vmovsd	%xmm6, -72(%rbp)	# normal_accum, %sfp
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%eax, %r12d	# EXECUTIONS.8_9, i
	jl	.L42	#,
	jmp	.L33	#
	.cfi_endproc
.LFE4103:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB4873:
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
# cosine.cpp:53: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE4873:
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
	.ident	"GCC: (Debian 12.2.0-14) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
