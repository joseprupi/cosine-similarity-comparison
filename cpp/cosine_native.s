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
# -auxbase-strip cosine_native.s -fverbose-asm -fasynchronous-unwind-tables
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
	.text
	.globl	_Z17cosine_similarityPfS_
	.type	_Z17cosine_similarityPfS_, @function
_Z17cosine_similarityPfS_:
.LFB3624:
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
.L8:
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %eax	# SIZE, SIZE.0_1
	cmpl	%eax, -32(%rbp)	# SIZE.0_1, i
	jge	.L7	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	movl	-32(%rbp), %eax	# i, tmp118
	cltq
# cosine.cpp:16:         dot += A[i] * B[i];
	leaq	0(,%rax,4), %rdx	#, _3
	movq	-40(%rbp), %rax	# A, tmp119
	addq	%rdx, %rax	# _3, _4
	vmovss	(%rax), %xmm1	# *_4, _5
# cosine.cpp:16:         dot += A[i] * B[i];
	movl	-32(%rbp), %eax	# i, tmp120
	cltq
# cosine.cpp:16:         dot += A[i] * B[i];
	leaq	0(,%rax,4), %rdx	#, _7
	movq	-48(%rbp), %rax	# B, tmp121
	addq	%rdx, %rax	# _7, _8
	vmovss	(%rax), %xmm0	# *_8, _9
# cosine.cpp:16:         dot += A[i] * B[i];
	vmulss	%xmm0, %xmm1, %xmm0	# _9, _5, _10
# cosine.cpp:16:         dot += A[i] * B[i];
	vmovss	-20(%rbp), %xmm1	# dot, tmp123
	vaddss	%xmm0, %xmm1, %xmm0	# _10, tmp123, tmp122
	vmovss	%xmm0, -20(%rbp)	# tmp122, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	movl	-32(%rbp), %eax	# i, tmp124
	cltq
# cosine.cpp:17:         denom_a += A[i] * A[i];
	leaq	0(,%rax,4), %rdx	#, _12
	movq	-40(%rbp), %rax	# A, tmp125
	addq	%rdx, %rax	# _12, _13
	vmovss	(%rax), %xmm1	# *_13, _14
# cosine.cpp:17:         denom_a += A[i] * A[i];
	movl	-32(%rbp), %eax	# i, tmp126
	cltq
# cosine.cpp:17:         denom_a += A[i] * A[i];
	leaq	0(,%rax,4), %rdx	#, _16
	movq	-40(%rbp), %rax	# A, tmp127
	addq	%rdx, %rax	# _16, _17
	vmovss	(%rax), %xmm0	# *_17, _18
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmulss	%xmm0, %xmm1, %xmm0	# _18, _14, _19
# cosine.cpp:17:         denom_a += A[i] * A[i];
	vmovss	-24(%rbp), %xmm1	# denom_a, tmp129
	vaddss	%xmm0, %xmm1, %xmm0	# _19, tmp129, tmp128
	vmovss	%xmm0, -24(%rbp)	# tmp128, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	movl	-32(%rbp), %eax	# i, tmp130
	cltq
# cosine.cpp:18:         denom_b += B[i] * B[i];
	leaq	0(,%rax,4), %rdx	#, _21
	movq	-48(%rbp), %rax	# B, tmp131
	addq	%rdx, %rax	# _21, _22
	vmovss	(%rax), %xmm1	# *_22, _23
# cosine.cpp:18:         denom_b += B[i] * B[i];
	movl	-32(%rbp), %eax	# i, tmp132
	cltq
# cosine.cpp:18:         denom_b += B[i] * B[i];
	leaq	0(,%rax,4), %rdx	#, _25
	movq	-48(%rbp), %rax	# B, tmp133
	addq	%rdx, %rax	# _25, _26
	vmovss	(%rax), %xmm0	# *_26, _27
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmulss	%xmm0, %xmm1, %xmm0	# _27, _23, _28
# cosine.cpp:18:         denom_b += B[i] * B[i];
	vmovss	-28(%rbp), %xmm1	# denom_b, tmp135
	vaddss	%xmm0, %xmm1, %xmm0	# _28, tmp135, tmp134
	vmovss	%xmm0, -28(%rbp)	# tmp134, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	incl	-32(%rbp)	# i
	jmp	.L8	#
.L7:
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
	vdivss	%xmm0, %xmm1, %xmm0	# _31, tmp138, _49
# cosine.cpp:21: }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3624:
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
.LFB3625:
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
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	movq	%rsp, %rax	#, tmp132
	movq	%rax, %rbx	# tmp132, saved_stack.10_3
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movl	SIZE(%rip), %eax	# SIZE, SIZE.1_1
	cltq
	decq	%rax	# _45
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rax, -64(%rbp)	# _45, D.69034
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
	movl	$16, %eax	#, tmp181
	decq	%rax	# tmp134
	addq	%rdx, %rax	# tmp133, tmp135
	movl	$16, %ecx	#, tmp182
	movl	$0, %edx	#, tmp138
	divq	%rcx	# tmp182
	imulq	$16, %rax, %rax	#, tmp137, tmp139
	subq	%rax, %rsp	# tmp139,
	movq	%rsp, %rax	#, tmp140
	addq	$31, %rax	#, tmp141
	shrq	$5, %rax	#, tmp142
	salq	$5, %rax	#, tmp143
	movq	%rax, -72(%rbp)	# tmp143, A.2
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movl	SIZE(%rip), %eax	# SIZE, SIZE.3_18
	cltq
	decq	%rax	# _53
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movq	%rax, -80(%rbp)	# _53, D.69041
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
	movl	$16, %eax	#, tmp183
	decq	%rax	# tmp145
	addq	%rdx, %rax	# tmp144, tmp146
	movl	$16, %ecx	#, tmp184
	movl	$0, %edx	#, tmp149
	divq	%rcx	# tmp184
	imulq	$16, %rax, %rax	#, tmp148, tmp150
	subq	%rax, %rsp	# tmp150,
	movq	%rsp, %rax	#, tmp151
	addq	$31, %rax	#, tmp152
	shrq	$5, %rax	#, tmp153
	salq	$5, %rax	#, tmp154
	movq	%rax, -88(%rbp)	# tmp154, B.4
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	fopen@PLT	#
	movq	%rax, -96(%rbp)	# _62, fp
# cosine.cpp:32:     int i = 0;
	movl	$0, -52(%rbp)	#, i
.L12:
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	leaq	-120(%rbp), %rdx	#, tmp155
	leaq	-116(%rbp), %rax	#, tmp156
	movq	-96(%rbp), %rdi	# fp, tmp157
	movq	%rdx, %rcx	# tmp155,
	movq	%rax, %rdx	# tmp156,
	leaq	.LC3(%rip), %rsi	#,
	movl	$0, %eax	#,
	call	__isoc99_fscanf@PLT	#
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, _35
	sete	%al	#, retval.5_67
	movzbl	%al, %eax	# retval.5_67, tmp158
	testw	%ax, %ax	# tmp158
	je	.L11	#,
# cosine.cpp:35:         A[i] = a;
	vmovss	-116(%rbp), %xmm0	# a, a.6_36
	movq	-72(%rbp), %rdx	# A.2, tmp159
	movl	-52(%rbp), %eax	# i, tmp161
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)	# a.6_36, (*A.2_52)[i_34]
# cosine.cpp:36:         B[i] = b;
	vmovss	-120(%rbp), %xmm0	# b, b.7_37
	movq	-88(%rbp), %rdx	# B.4, tmp162
	movl	-52(%rbp), %eax	# i, tmp164
	cltq
	vmovss	%xmm0, (%rdx,%rax,4)	# b.7_37, (*B.4_60)[i_34]
# cosine.cpp:37:         i += 1;
	incl	-52(%rbp)	# i
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	jmp	.L12	#
.L11:
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	$0, -36(%rbp)	#, i
.L14:
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_38
	cmpl	%eax, -36(%rbp)	# EXECUTIONS.8_38, i
	jge	.L13	#,
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -136(%rbp)	# tmp166, t1
# cosine.cpp:46:         cosine_similarity(&A[0], &B[0]);
	movq	-88(%rbp), %rdx	# B.4, _39
	movq	-72(%rbp), %rax	# A.2, _40
	movq	%rdx, %rsi	# _39,
	movq	%rax, %rdi	# _40,
	call	_Z17cosine_similarityPfS_	#
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
	movq	%rax, -144(%rbp)	# tmp168, t2
# cosine.cpp:48:         duration = t2 - t1;
	leaq	-136(%rbp), %rdx	#, tmp169
	leaq	-144(%rbp), %rax	#, tmp170
	movq	%rdx, %rsi	# tmp169,
	movq	%rax, %rdi	# tmp170,
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE	#
	movq	%rax, -104(%rbp)	# tmp172, D.64671
	leaq	-104(%rbp), %rdx	#, tmp173
	leaq	-112(%rbp), %rax	#, tmp174
	movq	%rdx, %rsi	# tmp173,
	movq	%rax, %rdi	# tmp174,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE	#
# cosine.cpp:48:         duration = t2 - t1;
	vmovsd	-112(%rbp), %xmm0	# D.64719, tmp175
	vmovsd	%xmm0, -128(%rbp)	# tmp175, duration
# cosine.cpp:49:         normal_accum += duration.count();
	leaq	-128(%rbp), %rax	#, tmp176
	movq	%rax, %rdi	# tmp176,
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv	#
	vmovq	%xmm0, %rax	#, _79
# cosine.cpp:49:         normal_accum += duration.count();
	vmovsd	-48(%rbp), %xmm0	# normal_accum, tmp178
	vmovq	%rax, %xmm2	# _79, _79
	vaddsd	%xmm2, %xmm0, %xmm0	# _79, tmp178, tmp177
	vmovsd	%xmm0, -48(%rbp)	# tmp177, normal_accum
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	incl	-36(%rbp)	# i
	jmp	.L14	#
.L13:
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.9_41
	vcvtsi2sdl	%eax, %xmm0, %xmm0	# EXECUTIONS.9_41, _42
	vmovsd	-48(%rbp), %xmm1	# normal_accum, tmp179
	vdivsd	%xmm0, %xmm1, %xmm3	# _42, tmp179, _43
	vmovq	%xmm3, %rax	# _43, _43
	vmovq	%rax, %xmm0	# _43,
	leaq	_ZSt4cout(%rip), %rdi	#,
	call	_ZNSolsEd@PLT	#
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	leaq	.LC4(%rip), %rsi	#,
	movq	%rax, %rdi	# _44,
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT	#
	movq	%rbx, %rsp	# saved_stack.10_3,
# cosine.cpp:53: }
	movl	$0, %eax	#, _94
	leaq	-24(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3625:
	.size	main, .-main
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB3886:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# this, this
# /usr/include/c++/10/chrono:789: 	{ return __d; }
	movq	-8(%rbp), %rax	# this, tmp84
	movq	(%rax), %rax	# this_2(D)->__d, D.69066
# /usr/include/c++/10/chrono:789: 	{ return __d; }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3886:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB3914:
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
	movq	%rax, -16(%rbp)	# tmp86, D.66772
# /usr/include/c++/10/chrono:913:       { return __lhs.time_since_epoch() - __rhs.time_since_epoch(); }
	movq	-24(%rbp), %rax	# __lhs, tmp87
	movq	%rax, %rdi	# tmp87,
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv	#
	movq	%rax, -8(%rbp)	# tmp89, D.66771
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
.LFE3914:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB3916:
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
	vmovsd	%xmm0, -8(%rbp)	# tmp85, D.66800
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
.LFE3916:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, @function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv:
.LFB3918:
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
.LFE3918:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1000EEE5countEv
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB4048:
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
	movq	%rax, -32(%rbp)	# tmp88, D.67245
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rbx	#, _1
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-64(%rbp), %rax	# __rhs, tmp90
	movq	(%rax), %rax	# *__rhs_8(D), tmp91
	movq	%rax, -24(%rbp)	# tmp91, D.67248
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-24(%rbp), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv	#
	movq	%rax, %rdx	#, _2
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	%rbx, %rax	# _1, _1
	subq	%rdx, %rax	# _2, _1
	movq	%rax, -40(%rbp)	# _3, D.67249
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	leaq	-40(%rbp), %rdx	#, tmp93
	leaq	-48(%rbp), %rax	#, tmp94
	movq	%rdx, %rsi	# tmp93,
	movq	%rax, %rdi	# tmp94,
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_	#
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	movq	-48(%rbp), %rax	# D.67250, D.69068
# /usr/include/c++/10/chrono:565:       }
	movq	-8(%rbp), %rbx	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4048:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB4049:
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
	vmovq	%xmm0, %rax	#, D.69076
# /usr/include/c++/10/chrono:234:       }
	vmovq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4049:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE:
.LFB4092:
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
	vmovsd	%xmm0, -8(%rbp)	# _3, D.67947
# /usr/include/c++/10/chrono:183: 	    return _ToDur(static_cast<__to_rep>(
	leaq	-8(%rbp), %rdx	#, tmp89
	leaq	-16(%rbp), %rax	#, tmp90
	movq	%rdx, %rsi	# tmp89,
	movq	%rax, %rdi	# tmp90,
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_	#
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	vmovsd	-16(%rbp), %xmm0	# D.67948, D.69078
	vmovq	%xmm0, %rax	# D.69078, <retval>
# /usr/include/c++/10/chrono:185: 	  }
	vmovq	%rax, %xmm0	# <retval>,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4092:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1000EEEES2_ILl1ELl1000000EEdLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC5IdvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_:
.LFB4131:
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
.LFE4131:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1000EEEC2IdvEERKT_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4204:
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
# /usr/include/c++/10/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rdi	#,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	leaq	__dso_handle(%rip), %rdx	#,
	leaq	_ZStL8__ioinit(%rip), %rsi	#,
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax	#, tmp82
	movq	%rax, %rdi	# tmp82,
	call	__cxa_atexit@PLT	#
.L32:
# cosine.cpp:53: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4204:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB4205:
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
.LFE4205:
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
