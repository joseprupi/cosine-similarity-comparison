	.file	"cosine.cpp"
# GNU C++17 (Debian 12.2.0-14) version 12.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 12.2.0, GMP version 6.2.1, MPFR version 4.1.1-p1, MPC version 1.3.1, isl version isl-0.25-GMP

# warning: MPFR header version 4.1.1-p1 differs from library version 4.2.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O3 -fasynchronous-unwind-tables
	.text
	.p2align 4
	.globl	_Z17cosine_similarityPfS_
	.type	_Z17cosine_similarityPfS_, @function
_Z17cosine_similarityPfS_:
.LFB3567:
	.cfi_startproc
	movq	%rsi, %rdx	# tmp200, B
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %esi	# SIZE, SIZE.0_35
	testl	%esi, %esi	# SIZE.0_35
	jle	.L14	#,
	leal	-1(%rsi), %eax	#, tmp163
# cosine.cpp:12: {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
	movq	%rdi, %rcx	# tmp199, A
	cmpl	$2, %eax	#, tmp163
	jbe	.L15	#,
	movl	%esi, %edi	# SIZE.0_35, bnd.65
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm5, %xmm5	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# ivtmp.102
	shrl	$2, %edi	#,
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm5, %xmm4	#, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm5, %xmm3	# tmp24, dot
	salq	$4, %rdi	#, _17
	.p2align 4,,10
	.p2align 3
.L4:
# cosine.cpp:16:         dot += A[i] * B[i];
	movups	(%rcx,%rax), %xmm1	# MEM <vector(4) float> [(float *)A_21(D) + ivtmp.102_158 * 1], MEM <vector(4) float> [(float *)A_21(D) + ivtmp.102_158 * 1]
# cosine.cpp:16:         dot += A[i] * B[i];
	movups	(%rdx,%rax), %xmm0	# MEM <vector(4) float> [(float *)B_22(D) + ivtmp.102_158 * 1], MEM <vector(4) float> [(float *)B_22(D) + ivtmp.102_158 * 1]
	addq	$16, %rax	#, ivtmp.102
# cosine.cpp:16:         dot += A[i] * B[i];
	movaps	%xmm1, %xmm2	# MEM <vector(4) float> [(float *)A_21(D) + ivtmp.102_158 * 1], vect__9.74
	mulps	%xmm0, %xmm2	# MEM <vector(4) float> [(float *)B_22(D) + ivtmp.102_158 * 1], vect__9.74
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulps	%xmm1, %xmm1	# MEM <vector(4) float> [(float *)A_21(D) + ivtmp.102_158 * 1], vect__11.76
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulps	%xmm0, %xmm0	# MEM <vector(4) float> [(float *)B_22(D) + ivtmp.102_158 * 1], vect__12.78
	addss	%xmm2, %xmm3	# stmp_dot_23.75, stmp_dot_23.75
	movaps	%xmm2, %xmm6	# vect__9.74, tmp168
	shufps	$85, %xmm2, %xmm6	#, vect__9.74, tmp168
	addss	%xmm6, %xmm3	# stmp_dot_23.75, stmp_dot_23.75
	movaps	%xmm2, %xmm6	# vect__9.74, tmp169
	unpckhps	%xmm2, %xmm6	# vect__9.74, tmp169
# cosine.cpp:16:         dot += A[i] * B[i];
	shufps	$255, %xmm2, %xmm2	#, vect__9.74, tmp172
	addss	%xmm6, %xmm3	# stmp_dot_23.75, stmp_dot_23.75
	addss	%xmm2, %xmm3	# stmp_dot_23.75, dot
	movaps	%xmm1, %xmm2	# vect__11.76, stmp_denom_a_24.77
	addss	%xmm4, %xmm2	# denom_a, stmp_denom_a_24.77
	movaps	%xmm1, %xmm4	# vect__11.76, tmp173
	shufps	$85, %xmm1, %xmm4	#, vect__11.76, tmp173
	addss	%xmm4, %xmm2	# stmp_denom_a_24.77, stmp_denom_a_24.77
	movaps	%xmm1, %xmm4	# vect__11.76, tmp174
	unpckhps	%xmm1, %xmm4	# vect__11.76, tmp174
# cosine.cpp:17:         denom_a += A[i] * A[i];
	shufps	$255, %xmm1, %xmm1	#, vect__11.76, tmp177
	addss	%xmm4, %xmm2	# stmp_denom_a_24.77, stmp_denom_a_24.77
	movaps	%xmm2, %xmm4	# stmp_denom_a_24.77, stmp_denom_a_24.77
	movaps	%xmm0, %xmm2	# vect__12.78, tmp178
	addss	%xmm1, %xmm4	# stmp_denom_a_24.77, stmp_denom_a_24.77
	movaps	%xmm0, %xmm1	# vect__12.78, stmp_denom_b_25.79
	shufps	$85, %xmm0, %xmm2	#, vect__12.78, tmp178
	addss	%xmm5, %xmm1	# denom_b, stmp_denom_b_25.79
	addss	%xmm2, %xmm1	# stmp_denom_b_25.79, stmp_denom_b_25.79
	movaps	%xmm0, %xmm2	# vect__12.78, tmp179
	unpckhps	%xmm0, %xmm2	# vect__12.78, tmp179
# cosine.cpp:18:         denom_b += B[i] * B[i];
	shufps	$255, %xmm0, %xmm0	#, vect__12.78, tmp182
	addss	%xmm2, %xmm1	# stmp_denom_b_25.79, stmp_denom_b_25.79
	movaps	%xmm1, %xmm5	# stmp_denom_b_25.79, stmp_denom_b_25.79
	addss	%xmm0, %xmm5	# stmp_denom_b_25.79, stmp_denom_b_25.79
	cmpq	%rax, %rdi	# ivtmp.102, _17
	jne	.L4	#,
	movl	%esi, %eax	# SIZE.0_35, tmp.83
	andl	$-4, %eax	#, tmp.83
	movl	%eax, %edi	# tmp.83,
	cmpl	%eax, %esi	# tmp.83, SIZE.0_35
	je	.L5	#,
.L3:
	subl	%edi, %esi	# niters_vector_mult_vf.66, niters.80
	cmpl	$1, %esi	#, niters.80
	je	.L6	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	movq	(%rcx,%rdi,4), %xmm1	# MEM <vector(2) float> [(float *)vectp_A.85_154], MEM <vector(2) float> [(float *)vectp_A.85_154]
# cosine.cpp:16:         dot += A[i] * B[i];
	movq	(%rdx,%rdi,4), %xmm0	# MEM <vector(2) float> [(float *)vectp_B.88_160], MEM <vector(2) float> [(float *)vectp_B.88_160]
# cosine.cpp:16:         dot += A[i] * B[i];
	movaps	%xmm1, %xmm2	# MEM <vector(2) float> [(float *)vectp_A.85_154], vect__52.90
	mulps	%xmm0, %xmm2	# MEM <vector(2) float> [(float *)vectp_B.88_160], vect__52.90
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulps	%xmm1, %xmm1	# MEM <vector(2) float> [(float *)vectp_A.85_154], vect__50.92
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulps	%xmm0, %xmm0	# MEM <vector(2) float> [(float *)vectp_B.88_160], vect__46.94
	addss	%xmm2, %xmm3	# stmp_dot_51.91, stmp_dot_51.91
# cosine.cpp:16:         dot += A[i] * B[i];
	shufps	$0xe5, %xmm2, %xmm2	# stmp_dot_51.91
	addss	%xmm2, %xmm3	# stmp_dot_51.91, dot
	movaps	%xmm1, %xmm2	# vect__50.92, stmp_denom_a_49.93
# cosine.cpp:17:         denom_a += A[i] * A[i];
	shufps	$0xe5, %xmm1, %xmm1	# stmp_denom_a_49.93
	addss	%xmm4, %xmm2	# denom_a, stmp_denom_a_49.93
	movaps	%xmm1, %xmm4	# stmp_denom_a_49.93, stmp_denom_a_49.93
	movaps	%xmm0, %xmm1	# vect__46.94, stmp_denom_b_44.95
# cosine.cpp:18:         denom_b += B[i] * B[i];
	shufps	$0xe5, %xmm0, %xmm0	# stmp_denom_b_44.95
	addss	%xmm5, %xmm1	# denom_b, stmp_denom_b_44.95
	movaps	%xmm0, %xmm5	# stmp_denom_b_44.95, stmp_denom_b_44.95
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm2, %xmm4	# stmp_denom_a_49.93, stmp_denom_a_49.93
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm1, %xmm5	# stmp_denom_b_44.95, stmp_denom_b_44.95
	testb	$1, %sil	#, niters.80
	je	.L5	#,
	andl	$-2, %esi	#, niters_vector_mult_vf.82
	addl	%esi, %eax	# niters_vector_mult_vf.82, tmp.83
.L6:
# cosine.cpp:16:         dot += A[i] * B[i];
	cltq
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rcx,%rax,4), %xmm1	# *_127, _128
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rdx,%rax,4), %xmm0	# *_129, _130
# cosine.cpp:16:         dot += A[i] * B[i];
	movaps	%xmm1, %xmm2	# _128, tmp192
	mulss	%xmm0, %xmm2	# _130, tmp192
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulss	%xmm1, %xmm1	# _128, tmp193
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulss	%xmm0, %xmm0	# _130, tmp194
# cosine.cpp:16:         dot += A[i] * B[i];
	addss	%xmm2, %xmm3	# tmp192, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm1, %xmm4	# tmp193, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm0, %xmm5	# tmp194, denom_b
.L5:
	pxor	%xmm0, %xmm0	# tmp195
	ucomiss	%xmm4, %xmm0	# denom_a, tmp195
	ja	.L24	#,
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm4, %xmm4	# denom_a, _34
.L10:
	pxor	%xmm0, %xmm0	# tmp196
	ucomiss	%xmm5, %xmm0	# denom_b, tmp196
	ja	.L25	#,
	sqrtss	%xmm5, %xmm5	# denom_b, _27
.L13:
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	mulss	%xmm4, %xmm5	# _34, tmp198
# cosine.cpp:21: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 8
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	divss	%xmm5, %xmm3	# tmp198, dot
	movaps	%xmm3, %xmm0	# dot, tmp197
# cosine.cpp:21: }
	ret	
	.p2align 4,,10
	.p2align 3
.L14:
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm5, %xmm5	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movaps	%xmm5, %xmm4	#, _34
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm5, %xmm3	# tmp24, dot
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm5, %xmm5	# denom_b, _27
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	mulss	%xmm4, %xmm5	# _34, tmp198
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	divss	%xmm5, %xmm3	# tmp198, dot
	movaps	%xmm3, %xmm0	# dot, tmp197
# cosine.cpp:21: }
	ret	
.L15:
	.cfi_def_cfa_offset 32
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm5, %xmm5	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%edi, %edi	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# tmp.83
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm5, %xmm4	#, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm5, %xmm3	# tmp24, dot
	jmp	.L3	#
.L24:
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	movaps	%xmm4, %xmm0	# denom_a,
	movss	%xmm3, 12(%rsp)	# dot, %sfp
	movss	%xmm5, 8(%rsp)	# denom_b, %sfp
	call	sqrtf@PLT	#
	movss	12(%rsp), %xmm3	# %sfp, dot
	movss	8(%rsp), %xmm5	# %sfp, denom_b
	movaps	%xmm0, %xmm4	# tmp201, _34
	jmp	.L10	#
.L25:
	movaps	%xmm5, %xmm0	# denom_b,
	movss	%xmm3, 12(%rsp)	# dot, %sfp
	movss	%xmm4, 8(%rsp)	# _34, %sfp
	call	sqrtf@PLT	#
	movss	12(%rsp), %xmm3	# %sfp, dot
	movss	8(%rsp), %xmm4	# %sfp, _34
	movaps	%xmm0, %xmm5	# tmp202, _27
	jmp	.L13	#
	.cfi_endproc
.LFE3567:
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
.LFB3568:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC1(%rip), %rsi	#, tmp199
	leaq	.LC2(%rip), %rdi	#, tmp200
# cosine.cpp:24: {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	leaq	-52(%rbp), %r15	#, tmp249
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movslq	SIZE(%rip), %rax	# SIZE, SIZE
	leaq	39(,%rax,4), %rax	#, tmp179
	shrq	$4, %rax	#, tmp181
	salq	$4, %rax	#, tmp183
	subq	%rax, %rsp	# tmp183,
	leaq	31(%rsp), %r13	#, tmp185
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	subq	%rax, %rsp	# tmp183,
	leaq	31(%rsp), %r8	#, tmp196
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %r13	#, tmp187
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %r8	#, tmp196
	movq	%r13, %r12	# tmp187, ivtmp.166
	movq	%r8, %r14	# tmp196, tmp198
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	call	fopen@PLT	#
	movq	%r14, %rbx	# tmp198, ivtmp.168
	movq	%rax, -80(%rbp)	# tmp252, %sfp
	leaq	-56(%rbp), %rax	#, tmp248
	movq	%rax, -88(%rbp)	# tmp248, %sfp
	jmp	.L32	#
	.p2align 4,,10
	.p2align 3
.L33:
# cosine.cpp:35:         A[i] = a;
	movss	-56(%rbp), %xmm0	# a, a
	addq	$4, %r12	#, ivtmp.166
	addq	$4, %rbx	#, ivtmp.168
	movss	%xmm0, -4(%r12)	# a, MEM[(float *)_190]
# cosine.cpp:36:         B[i] = b;
	movss	-52(%rbp), %xmm0	# b, b
	movss	%xmm0, -4(%rbx)	# b, MEM[(float *)_154]
.L32:
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	movq	-88(%rbp), %rdx	# %sfp,
	movq	-80(%rbp), %rdi	# %sfp,
	xorl	%eax, %eax	#
	movq	%r15, %rcx	# tmp249,
	leaq	.LC3(%rip), %rsi	#,
	call	__isoc99_fscanf@PLT	#
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, tmp253
	je	.L33	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_9
	testl	%eax, %eax	# EXECUTIONS.8_9
	jle	.L34	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	xorl	%r12d, %r12d	# i
	.p2align 4,,10
	.p2align 3
.L43:
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %edx	# SIZE, SIZE.0_75
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	movq	%rax, %rbx	# tmp254, t1
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	testl	%edx, %edx	# SIZE.0_75
	jle	.L35	#,
	leal	-1(%rdx), %eax	#, tmp207
	cmpl	$2, %eax	#, tmp207
	jbe	.L44	#,
	movl	%edx, %ecx	# SIZE.0_75, bnd.118
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm2, %xmm2	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# ivtmp.151
	shrl	$2, %ecx	#,
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm2, %xmm3	#, denom_a
	salq	$4, %rcx	#, _156
	.p2align 4,,10
	.p2align 3
.L37:
# cosine.cpp:17:         denom_a += A[i] * A[i];
	movaps	0(%r13,%rax), %xmm0	# MEM <vector(4) float> [(float *)A.2_22 + ivtmp.151_89 * 1], vect__61.127
	mulps	%xmm0, %xmm0	#, vect__61.127
	movaps	%xmm0, %xmm1	# vect__61.127, stmp_denom_a_63.128
	addss	%xmm3, %xmm1	# denom_a, stmp_denom_a_63.128
	movaps	%xmm0, %xmm3	# vect__61.127, tmp210
	shufps	$85, %xmm0, %xmm3	#, vect__61.127, tmp210
	addss	%xmm3, %xmm1	# stmp_denom_a_63.128, stmp_denom_a_63.128
	movaps	%xmm0, %xmm3	# vect__61.127, tmp211
	unpckhps	%xmm0, %xmm3	# vect__61.127, tmp211
# cosine.cpp:17:         denom_a += A[i] * A[i];
	shufps	$255, %xmm0, %xmm0	#, vect__61.127, tmp214
	addss	%xmm3, %xmm1	# stmp_denom_a_63.128, stmp_denom_a_63.128
	movaps	%xmm1, %xmm3	# stmp_denom_a_63.128, stmp_denom_a_63.128
	addss	%xmm0, %xmm3	# stmp_denom_a_63.128, stmp_denom_a_63.128
# cosine.cpp:18:         denom_b += B[i] * B[i];
	movaps	(%r14,%rax), %xmm0	# MEM <vector(4) float> [(float *)B.4_24 + ivtmp.151_89 * 1], vect__64.129
	addq	$16, %rax	#, ivtmp.151
	mulps	%xmm0, %xmm0	#, vect__64.129
	movaps	%xmm0, %xmm1	# vect__64.129, stmp_denom_b_66.130
	addss	%xmm2, %xmm1	# denom_b, stmp_denom_b_66.130
	movaps	%xmm0, %xmm2	# vect__64.129, tmp215
	shufps	$85, %xmm0, %xmm2	#, vect__64.129, tmp215
	addss	%xmm2, %xmm1	# stmp_denom_b_66.130, stmp_denom_b_66.130
	movaps	%xmm0, %xmm2	# vect__64.129, tmp216
	unpckhps	%xmm0, %xmm2	# vect__64.129, tmp216
# cosine.cpp:18:         denom_b += B[i] * B[i];
	shufps	$255, %xmm0, %xmm0	#, vect__64.129, tmp219
	addss	%xmm2, %xmm1	# stmp_denom_b_66.130, stmp_denom_b_66.130
	movaps	%xmm1, %xmm2	# stmp_denom_b_66.130, stmp_denom_b_66.130
	addss	%xmm0, %xmm2	# stmp_denom_b_66.130, stmp_denom_b_66.130
	cmpq	%rcx, %rax	# _156, ivtmp.151
	jne	.L37	#,
	movl	%edx, %eax	# SIZE.0_75, tmp.134
	andl	$-4, %eax	#, tmp.134
	movl	%eax, %ecx	# tmp.134,
	cmpl	%eax, %edx	# tmp.134, SIZE.0_75
	je	.L38	#,
.L36:
	subl	%ecx, %edx	# niters_vector_mult_vf.119, niters.131
	cmpl	$1, %edx	#, niters.131
	je	.L39	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	movq	0(%r13,%rcx,4), %xmm1	# MEM <vector(2) float> [(float *)vectp_A.136_167], vect__70.137
# cosine.cpp:16:         dot += A[i] * B[i];
	movq	(%r14,%rcx,4), %xmm0	# MEM <vector(2) float> [(float *)vectp_B.139_173], vect__65.140
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulps	%xmm1, %xmm1	# vect__70.137, vect__62.141
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulps	%xmm0, %xmm0	# vect__65.140, vect__58.143
	movaps	%xmm1, %xmm4	# vect__62.141, stmp_denom_a_59.142
# cosine.cpp:17:         denom_a += A[i] * A[i];
	shufps	$0xe5, %xmm1, %xmm1	# stmp_denom_a_59.142
	addss	%xmm3, %xmm4	# denom_a, stmp_denom_a_59.142
	movaps	%xmm1, %xmm3	# stmp_denom_a_59.142, stmp_denom_a_59.142
	movaps	%xmm0, %xmm1	# vect__58.143, stmp_denom_b_16.144
# cosine.cpp:18:         denom_b += B[i] * B[i];
	shufps	$0xe5, %xmm0, %xmm0	# stmp_denom_b_16.144
	addss	%xmm2, %xmm1	# denom_b, stmp_denom_b_16.144
	movaps	%xmm0, %xmm2	# stmp_denom_b_16.144, stmp_denom_b_16.144
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm4, %xmm3	# stmp_denom_a_59.142, stmp_denom_a_59.142
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm1, %xmm2	# stmp_denom_b_16.144, stmp_denom_b_16.144
	testb	$1, %dl	#, niters.131
	je	.L38	#,
	andl	$-2, %edx	#, niters_vector_mult_vf.133
	addl	%edx, %eax	# niters_vector_mult_vf.133, tmp.134
.L39:
# cosine.cpp:16:         dot += A[i] * B[i];
	cltq
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	0(%r13,%rax,4), %xmm1	# *_145, _146
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%r14,%rax,4), %xmm0	# *_147, _148
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulss	%xmm1, %xmm1	# _146, tmp226
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulss	%xmm0, %xmm0	# _148, tmp227
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm1, %xmm3	# tmp226, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm0, %xmm2	# tmp227, denom_b
.L38:
	pxor	%xmm6, %xmm6	# tmp273
	ucomiss	%xmm3, %xmm6	# denom_a, tmp273
	ja	.L53	#,
.L41:
	pxor	%xmm7, %xmm7	# tmp274
	ucomiss	%xmm2, %xmm7	# denom_b, tmp274
	ja	.L54	#,
.L35:
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	pxor	%xmm0, %xmm0	# tmp235
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	addl	$1, %r12d	#, i
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# t1, tmp234
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	cvtsi2sdq	%rax, %xmm0	# tmp234, tmp235
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	divsd	.LC4(%rip), %xmm0	#, tmp236
# cosine.cpp:49:         normal_accum += duration.count();
	addsd	-72(%rbp), %xmm0	# %sfp, tmp236
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_9
# cosine.cpp:49:         normal_accum += duration.count();
	movsd	%xmm0, -72(%rbp)	# tmp236, %sfp
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%r12d, %eax	# i, EXECUTIONS.8_9
	jg	.L43	#,
.L34:
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	pxor	%xmm1, %xmm1	# tmp238
	movsd	-72(%rbp), %xmm0	# %sfp, normal_accum
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#, tmp240
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	cvtsi2sdl	%eax, %xmm1	# EXECUTIONS.8_9, tmp238
	divsd	%xmm1, %xmm0	# tmp238, normal_accum
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/12/ostream:620: 	__ostream_insert(__out, __s,
	movl	$4, %edx	#,
	leaq	.LC5(%rip), %rsi	#, tmp241
# /usr/include/c++/12/ostream:221:       { return _M_insert(__f); }
	movq	%rax, %rdi	# tmp257, _49
# /usr/include/c++/12/ostream:620: 	__ostream_insert(__out, __s,
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT	#
# cosine.cpp:53: }
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
.L44:
	.cfi_restore_state
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm2, %xmm2	# denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%ecx, %ecx	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# tmp.134
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm2, %xmm3	#, denom_a
	jmp	.L36	#
.L53:
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	movaps	%xmm3, %xmm0	# denom_a,
	movss	%xmm2, -80(%rbp)	# denom_b, %sfp
	call	sqrtf@PLT	#
	movss	-80(%rbp), %xmm2	# %sfp, denom_b
	jmp	.L41	#
.L54:
	movaps	%xmm2, %xmm0	# denom_b,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	addl	$1, %r12d	#, i
# /usr/include/c++/12/cmath:464:   { return __builtin_sqrtf(__x); }
	call	sqrtf@PLT	#
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	pxor	%xmm0, %xmm0	# tmp231
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rbx, %rax	# t1, tmp230
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	cvtsi2sdq	%rax, %xmm0	# tmp230, tmp231
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	divsd	.LC4(%rip), %xmm0	#, tmp232
# cosine.cpp:49:         normal_accum += duration.count();
	addsd	-72(%rbp), %xmm0	# %sfp, tmp232
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_9
# cosine.cpp:49:         normal_accum += duration.count();
	movsd	%xmm0, -72(%rbp)	# tmp232, %sfp
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%eax, %r12d	# EXECUTIONS.8_9, i
	jl	.L43	#,
	jmp	.L34	#
	.cfi_endproc
.LFE3568:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB4338:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rbx	#, tmp82
	movq	%rbx, %rdi	# tmp82,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
	movq	%rbx, %rsi	# tmp82,
# cosine.cpp:53: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# /usr/include/c++/12/iostream:74:   static ios_base::Init __ioinit;
	leaq	__dso_handle(%rip), %rdx	#, tmp83
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE4338:
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
