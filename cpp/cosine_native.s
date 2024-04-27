	.file	"cosine.cpp"
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
	.text
	.globl	_Z17cosine_similarityPfS_
	.type	_Z17cosine_similarityPfS_, @function
_Z17cosine_similarityPfS_:
.LFB4063:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%rbx	#
	subq	$40, %rsp	#,
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)	# A, A
	movq	%rsi, -48(%rbp)	# B, B
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm0, %xmm0, %xmm0	# tmp115
	vmovss	%xmm0, -20(%rbp)	# tmp115, dot
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm0, %xmm0, %xmm0	# tmp116
	vmovss	%xmm0, -24(%rbp)	# tmp116, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	vxorps	%xmm0, %xmm0, %xmm0	# tmp117
	vmovss	%xmm0, -28(%rbp)	# tmp117, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	$0, -32(%rbp)	#, i
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	jmp	.L7	#
.L8:
# cosine.cpp:16:         dot += A[i] * B[i];
	movl	-32(%rbp), %eax	# i, tmp118
	cltq
# cosine.cpp:16:         dot += A[i] * B[i];
	leaq	0(,%rax,4), %rdx	#, _2
	movq	-40(%rbp), %rax	# A, tmp119
	addq	%rdx, %rax	# _2, _3
	vmovss	(%rax), %xmm1	# *_3, _4
# cosine.cpp:16:         dot += A[i] * B[i];
	movl	-32(%rbp), %eax	# i, tmp120
	cltq
# cosine.cpp:16:         dot += A[i] * B[i];
	leaq	0(,%rax,4), %rdx	#, _6
	movq	-48(%rbp), %rax	# B, tmp121
	addq	%rdx, %rax	# _6, _7
	vmovss	(%rax), %xmm0	# *_7, _8
# cosine.cpp:16:         dot += A[i] * B[i];
	vmulss	%xmm0, %xmm1, %xmm0	# _8, _4, _9
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	-20(%rbp), %xmm1	# dot, tmp123
	vaddss	%xmm0, %xmm1, %xmm0	# _9, tmp123, tmp122
	vmovss	%xmm0, -20(%rbp)	# tmp122, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	movl	-32(%rbp), %eax	# i, tmp124
	cltq
# cosine.cpp:17:         denom_a += A[i] * A[i];
	leaq	0(,%rax,4), %rdx	#, _11
	movq	-40(%rbp), %rax	# A, tmp125
	addq	%rdx, %rax	# _11, _12
	vmovss	(%rax), %xmm1	# *_12, _13
# cosine.cpp:17:         denom_a += A[i] * A[i];
	movl	-32(%rbp), %eax	# i, tmp126
	cltq
# cosine.cpp:17:         denom_a += A[i] * A[i];
	leaq	0(,%rax,4), %rdx	#, _15
	movq	-40(%rbp), %rax	# A, tmp127
	addq	%rdx, %rax	# _15, _16
	vmovss	(%rax), %xmm0	# *_16, _17
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmulss	%xmm0, %xmm1, %xmm0	# _17, _13, _18
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmovss	-24(%rbp), %xmm1	# denom_a, tmp129
	vaddss	%xmm0, %xmm1, %xmm0	# _18, tmp129, tmp128
	vmovss	%xmm0, -24(%rbp)	# tmp128, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	movl	-32(%rbp), %eax	# i, tmp130
	cltq
# cosine.cpp:18:         denom_b += B[i] * B[i];
	leaq	0(,%rax,4), %rdx	#, _20
	movq	-48(%rbp), %rax	# B, tmp131
	addq	%rdx, %rax	# _20, _21
	vmovss	(%rax), %xmm1	# *_21, _22
# cosine.cpp:18:         denom_b += B[i] * B[i];
	movl	-32(%rbp), %eax	# i, tmp132
	cltq
# cosine.cpp:18:         denom_b += B[i] * B[i];
	leaq	0(,%rax,4), %rdx	#, _24
	movq	-48(%rbp), %rax	# B, tmp133
	addq	%rdx, %rax	# _24, _25
	vmovss	(%rax), %xmm0	# *_25, _26
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulss	%xmm0, %xmm1, %xmm0	# _26, _22, _27
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmovss	-28(%rbp), %xmm1	# denom_b, tmp135
	vaddss	%xmm0, %xmm1, %xmm0	# _27, tmp135, tmp134
	vmovss	%xmm0, -28(%rbp)	# tmp134, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	incl	-32(%rbp)	# i
.L7:
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %eax	# SIZE, SIZE.0_28
	cmpl	%eax, -32(%rbp)	# SIZE.0_28, i
	jl	.L8	#,
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	movl	-24(%rbp), %eax	# denom_a, tmp136
	vmovd	%eax, %xmm0	# tmp136,
	call	_ZSt4sqrtf	#
	vmovd	%xmm0, %ebx	#, _29
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	movl	-28(%rbp), %eax	# denom_b, tmp137
	vmovd	%eax, %xmm0	# tmp137,
	call	_ZSt4sqrtf	#
	vmovd	%xmm0, %eax	#, _30
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	vmovd	%ebx, %xmm2	# _29, _29
	vmovd	%eax, %xmm3	# _30, _30
	vmulss	%xmm3, %xmm2, %xmm0	# _30, _29, _31
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	vmovss	-20(%rbp), %xmm1	# dot, tmp138
	vdivss	%xmm0, %xmm1, %xmm0	# _31, tmp138, _43
# cosine.cpp:21: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4063:
	.size	_Z17cosine_similarityPfS_, .-_Z17cosine_similarityPfS_
	.section	.rodata
.LC1:
	.string	"r"
.LC2:
	.string	"../tools/vectors.csv"
.LC3:
	.string	"%g,%g\n"
.LC4:
	.string	" ms\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4064:
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
# cosine.cpp:53: }
	movq	%rsp, %rax	#, tmp126
	movq	%rax, %rbx	# tmp126, saved_stack.10_46
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movl	SIZE(%rip), %eax	# SIZE, SIZE.1_47
	movslq	%eax, %rdx	# SIZE.1_47, _1
	decq	%rdx	# _2
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rdx, -64(%rbp)	# _3, D.85344
	movslq	%eax, %rdx	# SIZE.1_47, _4
	movq	%rdx, %r12	# _4, _5
	movl	$0, %r13d	#, _5
	movslq	%eax, %rdx	# SIZE.1_47, _9
	movq	%rdx, %r10	# _9, _10
	movl	$0, %r11d	#, _10
	cltq
	salq	$2, %rax	#, _13
	leaq	24(%rax), %rdx	#, tmp127
	movl	$16, %eax	#, tmp180
	decq	%rax	# tmp128
	addq	%rdx, %rax	# tmp127, tmp129
	movl	$16, %ecx	#, tmp181
	movl	$0, %edx	#, tmp132
	divq	%rcx	# tmp181
	imulq	$16, %rax, %rax	#, tmp131, tmp133
	subq	%rax, %rsp	# tmp133,
	movq	%rsp, %rax	#, tmp134
	addq	$31, %rax	#, tmp135
	shrq	$5, %rax	#, tmp136
	salq	$5, %rax	#, tmp137
	movq	%rax, -72(%rbp)	# tmp137, A.2
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movl	SIZE(%rip), %eax	# SIZE, SIZE.3_55
	movslq	%eax, %rdx	# SIZE.3_55, _14
	decq	%rdx	# _15
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rdx, -80(%rbp)	# _16, D.85351
	movslq	%eax, %rdx	# SIZE.3_55, _17
	movq	%rdx, %r8	# _17, _18
	movl	$0, %r9d	#, _18
	movslq	%eax, %rdx	# SIZE.3_55, _22
	movq	%rdx, %rsi	# _22, _23
	movl	$0, %edi	#, _23
	cltq
	salq	$2, %rax	#, _26
	leaq	24(%rax), %rdx	#, tmp138
	movl	$16, %eax	#, tmp182
	decq	%rax	# tmp139
	addq	%rdx, %rax	# tmp138, tmp140
	movl	$16, %ecx	#, tmp183
	movl	$0, %edx	#, tmp143
	divq	%rcx	# tmp183
	imulq	$16, %rax, %rax	#, tmp142, tmp144
	subq	%rax, %rsp	# tmp144,
	movq	%rsp, %rax	#, tmp145
	addq	$31, %rax	#, tmp146
	shrq	$5, %rax	#, tmp147
	salq	$5, %rax	#, tmp148
	movq	%rax, -88(%rbp)	# tmp148, B.4
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC1(%rip), %rax	#, tmp149
	movq	%rax, %rsi	# tmp149,
	leaq	.LC2(%rip), %rax	#, tmp150
	movq	%rax, %rdi	# tmp150,
	call	fopen@PLT	#
	movq	%rax, -96(%rbp)	# _64, fp
# cosine.cpp:32:     int i = 0;
	movl	$0, -36(%rbp)	#, i
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	jmp	.L11	#
.L12:
# cosine.cpp:35:         A[i] = a;
	vmovss	-116(%rbp), %xmm0	# a, a.5_27
	movq	-72(%rbp), %rdx	# A.2, tmp152
	movl	-36(%rbp), %eax	# i, tmp154
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)	# a.5_27, (*A.2_54)[i_37]
# cosine.cpp:36:         B[i] = b;
	vmovss	-120(%rbp), %xmm0	# b, b.6_28
	movq	-88(%rbp), %rdx	# B.4, tmp155
	movl	-36(%rbp), %eax	# i, tmp157
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)	# b.6_28, (*B.4_62)[i_37]
# cosine.cpp:37:         i += 1;
	incl	-36(%rbp)	# i
.L11:
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	leaq	-120(%rbp), %rdx	#, tmp158
	leaq	-116(%rbp), %rax	#, tmp159
	movq	-96(%rbp), %rdi	# fp, tmp160
	movq	%rdx, %rcx	# tmp158,
	movq	%rax, %rdx	# tmp159,
	leaq	.LC3(%rip), %rax	#, tmp161
	movq	%rax, %rsi	# tmp161,
	movl	$0, %eax	#,
	call	__isoc99_fscanf@PLT	#
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, _29
	sete	%al	#, retval.7_69
	testb	%al, %al	# retval.7_69
	jne	.L12	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	$0, -52(%rbp)	#, i
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	jmp	.L13	#
.L14:
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -136(%rbp)	# tmp163, t1
# cosine.cpp:46:         cosine_similarity(&A[0], &B[0]);
	movq	-88(%rbp), %rdx	# B.4, _30
	movq	-72(%rbp), %rax	# A.2, _31
	movq	%rdx, %rsi	# _30,
	movq	%rax, %rdi	# _31,
	call	_Z17cosine_similarityPfS_	#
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -144(%rbp)	# tmp165, t2
# cosine.cpp:48:         duration = t2 - t1;
	leaq	-136(%rbp), %rdx	#, tmp166
	leaq	-144(%rbp), %rax	#, tmp167
	movq	%rdx, %rsi	# tmp166,
	movq	%rax, %rdi	# tmp167,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -104(%rbp)	# tmp169, D.76790
# cosine.cpp:48:         duration = t2 - t1;
	leaq	-104(%rbp), %rdx	#, tmp170
	leaq	-112(%rbp), %rax	#, tmp171
	movq	%rdx, %rsi	# tmp170,
	movq	%rax, %rdi	# tmp171,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE	#
	vmovsd	-112(%rbp), %xmm0	# D.76868, tmp172
	vmovsd	%xmm0, -128(%rbp)	# tmp172, duration
# cosine.cpp:49:         normal_accum += duration.count();
	leaq	-128(%rbp), %rax	#, tmp173
	movq	%rax, %rdi	# tmp173,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv	#
	vmovq	%xmm0, %rax	#, _89
# cosine.cpp:49:         normal_accum += duration.count();
	vmovsd	-48(%rbp), %xmm0	# normal_accum, tmp175
	vmovq	%rax, %xmm2	# _89, _89
	vaddsd	%xmm2, %xmm0, %xmm0	# _89, tmp175, tmp174
	vmovsd	%xmm0, -48(%rbp)	# tmp174, normal_accum
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	incl	-52(%rbp)	# i
.L13:
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_32
	cmpl	%eax, -52(%rbp)	# EXECUTIONS.8_32, i
	jl	.L14	#,
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.9_33
	vcvtsi2sdl	%eax, %xmm0, %xmm0	# EXECUTIONS.9_33, _34
	vmovsd	-48(%rbp), %xmm1	# normal_accum, tmp176
	vdivsd	%xmm0, %xmm1, %xmm3	# _34, tmp176, _35
	vmovq	%xmm3, %rax	# _35, _35
	vmovq	%rax, %xmm0	# _35,
	leaq	_ZSt4cout(%rip), %rax	#, tmp177
	movq	%rax, %rdi	# tmp177,
	call	_ZNSolsEd@PLT	#
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	leaq	.LC4(%rip), %rdx	#, tmp178
	movq	%rdx, %rsi	# tmp178,
	movq	%rax, %rdi	# _36,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rbx, %rsp	# saved_stack.10_46,
# cosine.cpp:53: }
	movl	$0, %eax	#, _79
	leaq	-24(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4064:
	.size	main, .-main
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB4396:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/12/bits/chrono.h:883: 	{ return __d; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__d, D.85373
# /usr/include/c++/12/bits/chrono.h:883: 	{ return __d; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4396:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB4423:
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
	movq	%rax, -16(%rbp)	# tmp86, D.80788
# /usr/include/c++/12/bits/chrono.h:1028:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-24(%rbp), %rax	# __lhs, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -8(%rbp)	# tmp89, D.80787
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
.LFE4423:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB4425:
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
	vmovsd	%xmm0, -8(%rbp)	# tmp85, D.80821
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
.LFE4425:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, @function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv:
.LFB4427:
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
.LFE4427:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB4606:
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
	movq	%rax, -32(%rbp)	# tmp88, D.83530
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rbx	#, _1
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-64(%rbp), %rax	# __rhs, tmp90
	movq	(%rax), %rax	# *__rhs_8(D), tmp91
	movq	%rax, -24(%rbp)	# tmp91, D.83531
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-24(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%rax, %rbx	# _2, _1
	movq	%rbx, %rdx	# _1, _3
	movq	%rdx, -40(%rbp)	# _3, D.83532
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-40(%rbp), %rdx	#, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_	#
# /usr/include/c++/12/bits/chrono.h:650: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-48(%rbp), %rax	# D.83533, D.85375
# /usr/include/c++/12/bits/chrono.h:651:       }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4606:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB4607:
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
	vmovq	%xmm0, %rax	#, D.85384
# /usr/include/c++/12/bits/chrono.h:261:       }
	vmovq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4607:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE:
.LFB4715:
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
	vmovsd	%xmm0, -8(%rbp)	# _3, D.84678
# /usr/include/c++/12/bits/chrono.h:211: 	    return _ToDur(static_cast<__to_rep>(
	leaq	-8(%rbp), %rdx	#, tmp89
	leaq	-16(%rbp), %rax	#, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_	#
# /usr/include/c++/12/bits/chrono.h:212: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vmovsd	-16(%rbp), %xmm0	# D.84679, D.85386
	vmovq	%xmm0, %rax	# D.85386, <retval>
# /usr/include/c++/12/bits/chrono.h:213: 	  }
	vmovq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4715:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC5IdvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_:
.LFB4791:
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
.LFE4791:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4833:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movl	%edi, -4(%rbp)	# __initialize_p, __initialize_p
	movl	%esi, -8(%rbp)	# __priority, __priority
# cosine.cpp:53: }
	cmpl	$1, -4(%rbp)	#, __initialize_p
	jne	.L32	#,
# cosine.cpp:53: }
	cmpl	$65535, -8(%rbp)	#, __priority
	jne	.L32	#,
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
.L32:
# cosine.cpp:53: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4833:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB4834:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# cosine.cpp:53: }
	movl	$65535, %esi	#,
	movl	$1, %edi	#,
	call	_Z41__static_initialization_and_destruction_0ii	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4834:
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
