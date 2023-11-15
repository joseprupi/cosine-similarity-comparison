	.file	"cosine.cpp"
# GNU C++14 (Debian 10.2.1-6) version 10.2.1 20210110 (x86_64-linux-gnu)
#	compiled by GNU C version 10.2.1 20210110, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.0, isl version isl-0.23-GMP

# warning: MPFR header version 4.1.0 differs from library version 4.0.2.
# warning: MPC header version 1.2.0 differs from library version 1.1.0.
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  -imultiarch x86_64-linux-gnu -D_GNU_SOURCE cosine.cpp
# -mtune=generic -march=x86-64 -auxbase-strip cosine_O3.s -O3 -fverbose-asm
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
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.p2align 4
	.globl	_Z17cosine_similarityPfS_
	.type	_Z17cosine_similarityPfS_, @function
_Z17cosine_similarityPfS_:
.LFB3147:
	.cfi_startproc
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %ecx	# SIZE, SIZE.0_35
	testl	%ecx, %ecx	# SIZE.0_35
	jle	.L12	#,
	leal	-1(%rcx), %eax	#, tmp158
	cmpl	$2, %eax	#, tmp158
	jbe	.L13	#,
	movl	%ecx, %edx	# SIZE.0_35, bnd.60
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm8, %xmm8	# tmp194
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# ivtmp.78
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm8, %xmm7	# tmp194, denom_b
	shrl	$2, %edx	#,
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm8, %xmm6	# tmp194, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm8, %xmm5	# tmp194, dot
	salq	$4, %rdx	#, _47
	.p2align 4,,10
	.p2align 3
.L4:
# cosine.cpp:16:         dot += A[i] * B[i];
	movups	(%rdi,%rax), %xmm1	# MEM[base: A_20(D), index: ivtmp.78_4, offset: 0B], MEM[base: A_20(D), index: ivtmp.78_4, offset: 0B]
# cosine.cpp:16:         dot += A[i] * B[i];
	movups	(%rsi,%rax), %xmm0	# MEM[base: B_21(D), index: ivtmp.78_4, offset: 0B], MEM[base: B_21(D), index: ivtmp.78_4, offset: 0B]
	addq	$16, %rax	#, ivtmp.78
# cosine.cpp:16:         dot += A[i] * B[i];
	movaps	%xmm1, %xmm2	# MEM[base: A_20(D), index: ivtmp.78_4, offset: 0B], vect__10.69
	mulps	%xmm0, %xmm2	# MEM[base: B_21(D), index: ivtmp.78_4, offset: 0B], vect__10.69
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulps	%xmm1, %xmm1	# MEM[base: A_20(D), index: ivtmp.78_4, offset: 0B], vect__12.71
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulps	%xmm0, %xmm0	# MEM[base: B_21(D), index: ivtmp.78_4, offset: 0B], vect__13.73
	addss	%xmm2, %xmm5	# stmp_dot_22.70, stmp_dot_22.70
	movaps	%xmm2, %xmm3	# vect__10.69, tmp163
	shufps	$85, %xmm2, %xmm3	#, vect__10.69, tmp163
	movaps	%xmm1, %xmm4	# vect__12.71, stmp_denom_a_23.72
	addss	%xmm6, %xmm4	# denom_a, stmp_denom_a_23.72
	movaps	%xmm1, %xmm6	# vect__12.71, tmp168
	addss	%xmm3, %xmm5	# stmp_dot_22.70, stmp_dot_22.70
	movaps	%xmm2, %xmm3	# vect__10.69, tmp164
	shufps	$85, %xmm1, %xmm6	#, vect__12.71, tmp168
	unpckhps	%xmm2, %xmm3	# vect__10.69, tmp164
# cosine.cpp:16:         dot += A[i] * B[i];
	shufps	$255, %xmm2, %xmm2	#, vect__10.69, tmp167
	addss	%xmm6, %xmm4	# stmp_denom_a_23.72, stmp_denom_a_23.72
	addss	%xmm3, %xmm5	# stmp_dot_22.70, stmp_dot_22.70
	movaps	%xmm0, %xmm3	# vect__13.73, stmp_denom_b_24.74
	addss	%xmm7, %xmm3	# denom_b, stmp_denom_b_24.74
	addss	%xmm2, %xmm5	# stmp_dot_22.70, dot
	movaps	%xmm1, %xmm2	# vect__12.71, tmp169
	unpckhps	%xmm1, %xmm2	# vect__12.71, tmp169
# cosine.cpp:17:         denom_a += A[i] * A[i];
	shufps	$255, %xmm1, %xmm1	#, vect__12.71, tmp172
	addss	%xmm2, %xmm4	# stmp_denom_a_23.72, stmp_denom_a_23.72
	addss	%xmm1, %xmm4	# stmp_denom_a_23.72, stmp_denom_a_23.72
	movaps	%xmm0, %xmm1	# vect__13.73, tmp173
	shufps	$85, %xmm0, %xmm1	#, vect__13.73, tmp173
	addss	%xmm1, %xmm3	# stmp_denom_b_24.74, stmp_denom_b_24.74
	movaps	%xmm0, %xmm1	# vect__13.73, tmp174
	unpckhps	%xmm0, %xmm1	# vect__13.73, tmp174
# cosine.cpp:18:         denom_b += B[i] * B[i];
	shufps	$255, %xmm0, %xmm0	#, vect__13.73, tmp177
# cosine.cpp:17:         denom_a += A[i] * A[i];
	movaps	%xmm4, %xmm6	# stmp_denom_a_23.72, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm1, %xmm3	# stmp_denom_b_24.74, stmp_denom_b_24.74
	movaps	%xmm3, %xmm7	# stmp_denom_b_24.74, stmp_denom_b_24.74
	addss	%xmm0, %xmm7	# stmp_denom_b_24.74, stmp_denom_b_24.74
	cmpq	%rdx, %rax	# _47, ivtmp.78
	jne	.L4	#,
	movl	%ecx, %eax	# SIZE.0_35, tmp.62
	andl	$-4, %eax	#, tmp.62
	testb	$3, %cl	#, SIZE.0_35
	je	.L5	#,
.L3:
# cosine.cpp:16:         dot += A[i] * B[i];
	movslq	%eax, %rdx	# tmp.62, tmp.62
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rdi,%rdx,4), %xmm1	# *_9, _10
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rsi,%rdx,4), %xmm0	# *_12, _13
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	leal	1(%rax), %edx	#, i
# cosine.cpp:16:         dot += A[i] * B[i];
	movaps	%xmm1, %xmm2	# _10, tmp179
	mulss	%xmm0, %xmm2	# _13, tmp179
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulss	%xmm1, %xmm1	# _10, tmp180
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulss	%xmm0, %xmm0	# _13, tmp181
# cosine.cpp:16:         dot += A[i] * B[i];
	addss	%xmm2, %xmm5	# tmp179, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm1, %xmm6	# tmp180, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm0, %xmm7	# tmp181, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%edx, %ecx	# i, SIZE.0_35
	jle	.L5	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	movslq	%edx, %rdx	# i, i
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	addl	$2, %eax	#, i
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rdi,%rdx,4), %xmm1	# *_119, _120
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rsi,%rdx,4), %xmm0	# *_121, _122
# cosine.cpp:16:         dot += A[i] * B[i];
	movaps	%xmm1, %xmm2	# _120, tmp183
	mulss	%xmm0, %xmm2	# _122, tmp183
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulss	%xmm1, %xmm1	# _120, tmp184
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulss	%xmm0, %xmm0	# _122, tmp185
# cosine.cpp:16:         dot += A[i] * B[i];
	addss	%xmm2, %xmm5	# tmp183, dot
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm1, %xmm6	# tmp184, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm0, %xmm7	# tmp185, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%eax, %ecx	# i, SIZE.0_35
	jle	.L5	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	cltq
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rsi,%rax,4), %xmm0	# *_51, _50
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rdi,%rax,4), %xmm1	# *_53, _52
# cosine.cpp:16:         dot += A[i] * B[i];
	movaps	%xmm0, %xmm2	# _50, tmp187
	mulss	%xmm1, %xmm2	# _52, tmp187
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulss	%xmm0, %xmm0	# _50, tmp189
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulss	%xmm1, %xmm1	# _52, tmp188
# cosine.cpp:16:         dot += A[i] * B[i];
	addss	%xmm2, %xmm5	# tmp187, dot
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm0, %xmm7	# tmp189, denom_b
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm1, %xmm6	# tmp188, denom_a
.L5:
	ucomiss	%xmm6, %xmm8	# denom_a, tmp194
	ja	.L20	#,
.L2:
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	sqrtss	%xmm6, %xmm6	# denom_a, denom_a
	movaps	%xmm6, %xmm1	# denom_a, _28
.L8:
	ucomiss	%xmm7, %xmm8	# denom_b, tmp194
	ja	.L17	#,
	sqrtss	%xmm7, %xmm7	# denom_b, denom_b
	movaps	%xmm7, %xmm3	# denom_b, _27
.L11:
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	mulss	%xmm3, %xmm1	# _27, tmp193
# cosine.cpp:21: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# cosine.cpp:20:     return dot / (sqrt(denom_a) * sqrt(denom_b));
	divss	%xmm1, %xmm5	# tmp193, dot
	movaps	%xmm5, %xmm0	# dot, tmp192
# cosine.cpp:21: }
	ret	
	.p2align 4,,10
	.p2align 3
.L12:
	.cfi_restore_state
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm8, %xmm8	# tmp194
	movaps	%xmm8, %xmm7	# tmp194, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm8, %xmm6	# tmp194, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm8, %xmm5	# tmp194, dot
	jmp	.L2	#
.L13:
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm8, %xmm8	# tmp194
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# tmp.62
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm8, %xmm7	# tmp194, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm8, %xmm6	# tmp194, denom_a
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm8, %xmm5	# tmp194, dot
	jmp	.L3	#
.L20:
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	movaps	%xmm6, %xmm0	# denom_a,
	movss	%xmm8, 12(%rsp)	# tmp194, %sfp
	movss	%xmm7, 8(%rsp)	# denom_b, %sfp
	movss	%xmm5, 4(%rsp)	# dot, %sfp
	call	sqrtf@PLT	#
	movss	12(%rsp), %xmm8	# %sfp, tmp194
	movss	8(%rsp), %xmm7	# %sfp, denom_b
	movss	4(%rsp), %xmm5	# %sfp, dot
	movaps	%xmm0, %xmm1	# tmp197, _28
	jmp	.L8	#
.L17:
	movaps	%xmm7, %xmm0	# denom_b,
	movss	%xmm1, 8(%rsp)	# _28, %sfp
	movss	%xmm5, 4(%rsp)	# dot, %sfp
	call	sqrtf@PLT	#
	movss	8(%rsp), %xmm1	# %sfp, _28
	movss	4(%rsp), %xmm5	# %sfp, dot
	movaps	%xmm0, %xmm3	# tmp198, _27
	jmp	.L11	#
	.cfi_endproc
.LFE3147:
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
.LFB3148:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
# cosine.cpp:24: {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	leaq	-52(%rbp), %r15	#, tmp239
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$56, %rsp	#,
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	movslq	SIZE(%rip), %rax	# SIZE, SIZE
	leaq	39(,%rax,4), %rax	#, tmp175
	shrq	$4, %rax	#, tmp177
	salq	$4, %rax	#, tmp179
	subq	%rax, %rsp	# tmp179,
	leaq	31(%rsp), %rbx	#, tmp181
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	subq	%rax, %rsp	# tmp179,
	leaq	31(%rsp), %r8	#, tmp192
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %rbx	#, tmp183
# cosine.cpp:26:     __attribute__((aligned(32))) float A[SIZE], B[SIZE];
	andq	$-32, %r8	#, tmp192
	movq	%rbx, %r13	# tmp183, ivtmp.126
	movq	%r8, %r14	# tmp192, tmp194
# cosine.cpp:29:     fp = fopen("../tools/vectors.csv", "r");
	call	fopen@PLT	#
	movq	%r14, %r12	# tmp194, ivtmp.128
	movq	%rax, -80(%rbp)	# tmp246, %sfp
	leaq	-56(%rbp), %rax	#, tmp238
	movq	%rax, -88(%rbp)	# tmp238, %sfp
	jmp	.L23	#
	.p2align 4,,10
	.p2align 3
.L36:
# cosine.cpp:35:         A[i] = a;
	movss	-56(%rbp), %xmm0	# a, a
	addq	$4, %r13	#, ivtmp.126
	addq	$4, %r12	#, ivtmp.128
	movss	%xmm0, -4(%r13)	# a, MEM[base: _145, offset: 0B]
# cosine.cpp:36:         B[i] = b;
	movss	-52(%rbp), %xmm0	# b, b
	movss	%xmm0, -4(%r12)	# b, MEM[base: _146, offset: 0B]
.L23:
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	movq	-88(%rbp), %rdx	# %sfp,
	movq	-80(%rbp), %rdi	# %sfp,
	xorl	%eax, %eax	#
	movq	%r15, %rcx	# tmp239,
	leaq	.LC3(%rip), %rsi	#,
	call	__isoc99_fscanf@PLT	#
# cosine.cpp:33:     while (fscanf(fp, "%g,%g\n", &a, &b) == 2)
	cmpl	$2, %eax	#, tmp247
	je	.L36	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_14
	testl	%eax, %eax	# EXECUTIONS.8_14
	jle	.L24	#,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	xorl	%r13d, %r13d	# i
	.p2align 4,,10
	.p2align 3
.L32:
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	movl	SIZE(%rip), %ecx	# SIZE, SIZE.0_61
# cosine.cpp:45:         auto t1 = high_resolution_clock::now();
	movq	%rax, %r12	# tmp248, t1
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	testl	%ecx, %ecx	# SIZE.0_61
	jle	.L25	#,
	leal	-1(%rcx), %eax	#, tmp199
	cmpl	$2, %eax	#, tmp199
	jbe	.L33	#,
	movl	%ecx, %edx	# SIZE.0_61, bnd.94
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm6, %xmm6	# tmp240
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# ivtmp.111
	shrl	$2, %edx	#,
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm6, %xmm4	#, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm6, %xmm5	# tmp24, denom_a
	salq	$4, %rdx	#, _54
	.p2align 4,,10
	.p2align 3
.L27:
# cosine.cpp:17:         denom_a += A[i] * A[i];
	movaps	(%rbx,%rax), %xmm1	# MEM[base: A.2_21, index: ivtmp.111_95, offset: 0B], vect__62.103
	mulps	%xmm1, %xmm1	#, vect__62.103
	movaps	%xmm1, %xmm3	# vect__62.103, stmp_denom_a_64.104
	movaps	%xmm1, %xmm0	# vect__62.103, tmp202
	addss	%xmm5, %xmm3	# denom_a, stmp_denom_a_64.104
	shufps	$85, %xmm1, %xmm0	#, vect__62.103, tmp202
	addss	%xmm0, %xmm3	# stmp_denom_a_64.104, stmp_denom_a_64.104
	movaps	%xmm1, %xmm0	# vect__62.103, tmp203
	unpckhps	%xmm1, %xmm0	# vect__62.103, tmp203
# cosine.cpp:17:         denom_a += A[i] * A[i];
	shufps	$255, %xmm1, %xmm1	#, vect__62.103, tmp206
	addss	%xmm0, %xmm3	# stmp_denom_a_64.104, stmp_denom_a_64.104
# cosine.cpp:18:         denom_b += B[i] * B[i];
	movaps	(%r14,%rax), %xmm0	# MEM[base: B.4_23, index: ivtmp.111_95, offset: 0B], vect__65.105
	addq	$16, %rax	#, ivtmp.111
	mulps	%xmm0, %xmm0	#, vect__65.105
# cosine.cpp:17:         denom_a += A[i] * A[i];
	movaps	%xmm3, %xmm5	# stmp_denom_a_64.104, stmp_denom_a_64.104
	addss	%xmm1, %xmm5	# stmp_denom_a_64.104, stmp_denom_a_64.104
	movaps	%xmm0, %xmm2	# vect__65.105, stmp_denom_b_67.106
	addss	%xmm4, %xmm2	# denom_b, stmp_denom_b_67.106
	movaps	%xmm0, %xmm4	# vect__65.105, tmp207
	shufps	$85, %xmm0, %xmm4	#, vect__65.105, tmp207
	addss	%xmm4, %xmm2	# stmp_denom_b_67.106, stmp_denom_b_67.106
	movaps	%xmm0, %xmm4	# vect__65.105, tmp208
	unpckhps	%xmm0, %xmm4	# vect__65.105, tmp208
# cosine.cpp:18:         denom_b += B[i] * B[i];
	shufps	$255, %xmm0, %xmm0	#, vect__65.105, tmp211
	addss	%xmm4, %xmm2	# stmp_denom_b_67.106, stmp_denom_b_67.106
	addss	%xmm0, %xmm2	# stmp_denom_b_67.106, stmp_denom_b_67.106
	movaps	%xmm2, %xmm4	# stmp_denom_b_67.106, denom_b
	cmpq	%rax, %rdx	# ivtmp.111, _54
	jne	.L27	#,
	movl	%ecx, %eax	# SIZE.0_61, tmp.96
	andl	$-4, %eax	#, tmp.96
	testb	$3, %cl	#, SIZE.0_61
	je	.L28	#,
.L26:
# cosine.cpp:16:         dot += A[i] * B[i];
	movslq	%eax, %rsi	# tmp.96, tmp.96
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%rbx,%rsi,4), %xmm1	# *_57, _58
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	(%r14,%rsi,4), %xmm0	# *_62, _65
# cosine.cpp:16:         dot += A[i] * B[i];
	leaq	0(,%rsi,4), %rdx	#, _56
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	leal	1(%rax), %esi	#, i
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulss	%xmm1, %xmm1	# _58, tmp213
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulss	%xmm0, %xmm0	# _65, tmp214
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm1, %xmm5	# tmp213, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm0, %xmm4	# tmp214, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%esi, %ecx	# i, SIZE.0_61
	jle	.L28	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	4(%rbx,%rdx), %xmm1	# *_136, _137
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	4(%r14,%rdx), %xmm0	# *_138, _139
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	addl	$2, %eax	#, i
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulss	%xmm1, %xmm1	# _137, tmp216
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulss	%xmm0, %xmm0	# _139, tmp217
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm1, %xmm5	# tmp216, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm0, %xmm4	# tmp217, denom_b
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	cmpl	%eax, %ecx	# i, SIZE.0_61
	jle	.L28	#,
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	8(%rbx,%rdx), %xmm1	# *_72, _71
# cosine.cpp:16:         dot += A[i] * B[i];
	movss	8(%r14,%rdx), %xmm0	# *_69, _66
# cosine.cpp:17:         denom_a += A[i] * A[i];
	mulss	%xmm1, %xmm1	# _71, tmp219
# cosine.cpp:18:         denom_b += B[i] * B[i];
	mulss	%xmm0, %xmm0	# _66, tmp220
# cosine.cpp:17:         denom_a += A[i] * A[i];
	addss	%xmm1, %xmm5	# tmp219, denom_a
# cosine.cpp:18:         denom_b += B[i] * B[i];
	addss	%xmm0, %xmm4	# tmp220, denom_b
.L28:
	ucomiss	%xmm5, %xmm6	# denom_a, tmp240
	ja	.L37	#,
.L29:
	ucomiss	%xmm4, %xmm6	# denom_b, tmp240
	ja	.L38	#,
.L25:
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	pxor	%xmm0, %xmm0	# tmp228
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	addl	$1, %r13d	#, i
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r12, %rax	# t1, tmp227
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	cvtsi2sdq	%rax, %xmm0	# tmp227, tmp228
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	divsd	.LC4(%rip), %xmm0	#, tmp229
# cosine.cpp:49:         normal_accum += duration.count();
	addsd	-72(%rbp), %xmm0	# %sfp, tmp229
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_14
# cosine.cpp:49:         normal_accum += duration.count();
	movsd	%xmm0, -72(%rbp)	# tmp229, %sfp
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%r13d, %eax	# i, EXECUTIONS.8_14
	jg	.L32	#,
.L24:
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	pxor	%xmm1, %xmm1	# tmp231
	movsd	-72(%rbp), %xmm0	# %sfp, normal_accum
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	leaq	_ZSt4cout(%rip), %rdi	#,
# cosine.cpp:52:     std::cout << normal_accum / EXECUTIONS << " ms\n";
	cvtsi2sdl	%eax, %xmm1	# EXECUTIONS.8_14, tmp231
	divsd	%xmm1, %xmm0	# tmp231, normal_accum
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	call	_ZNSo9_M_insertIdEERSoT_@PLT	#
# /usr/include/c++/10/ostream:611: 	__ostream_insert(__out, __s,
	movl	$4, %edx	#,
	leaq	.LC5(%rip), %rsi	#,
# /usr/include/c++/10/ostream:221:       { return _M_insert(__f); }
	movq	%rax, %rdi	# tmp251, _49
# /usr/include/c++/10/ostream:611: 	__ostream_insert(__out, __s,
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
.L33:
	.cfi_restore_state
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	pxor	%xmm6, %xmm6	# tmp240
# cosine.cpp:14:     for (auto i = 0; i < SIZE; ++i)
	xorl	%eax, %eax	# tmp.96
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm6, %xmm4	#, denom_b
# cosine.cpp:13:     float dot = 0.0, denom_a = 0.0, denom_b = 0.0;
	movaps	%xmm6, %xmm5	# tmp24, denom_a
	jmp	.L26	#
.L37:
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	movaps	%xmm5, %xmm0	# denom_a,
	movss	%xmm6, -88(%rbp)	# tmp240, %sfp
	movss	%xmm4, -80(%rbp)	# denom_b, %sfp
	call	sqrtf@PLT	#
	movss	-88(%rbp), %xmm6	# %sfp, tmp240
	movss	-80(%rbp), %xmm4	# %sfp, denom_b
	jmp	.L29	#
.L38:
	movaps	%xmm4, %xmm0	# denom_b,
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	addl	$1, %r13d	#, i
# /usr/include/c++/10/cmath:464:   { return __builtin_sqrtf(__x); }
	call	sqrtf@PLT	#
# cosine.cpp:47:         auto t2 = high_resolution_clock::now();
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT	#
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	pxor	%xmm0, %xmm0	# tmp224
# /usr/include/c++/10/chrono:564: 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
	subq	%r12, %rax	# t1, tmp223
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	cvtsi2sdq	%rax, %xmm0	# tmp223, tmp224
# /usr/include/c++/10/chrono:184: 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
	divsd	.LC4(%rip), %xmm0	#, tmp225
# cosine.cpp:49:         normal_accum += duration.count();
	addsd	-72(%rbp), %xmm0	# %sfp, tmp225
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	movl	EXECUTIONS(%rip), %eax	# EXECUTIONS, EXECUTIONS.8_14
# cosine.cpp:49:         normal_accum += duration.count();
	movsd	%xmm0, -72(%rbp)	# tmp225, %sfp
# cosine.cpp:43:     for (int i = 0; i < EXECUTIONS; i++)
	cmpl	%eax, %r13d	# EXECUTIONS.8_14, i
	jl	.L32	#,
	jmp	.L24	#
	.cfi_endproc
.LFE3148:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB3713:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# /usr/include/c++/10/iostream:74:   static ios_base::Init __ioinit;
	leaq	_ZStL8__ioinit(%rip), %rdi	#,
	call	_ZNSt8ios_base4InitC1Ev@PLT	#
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi	#,
# cosine.cpp:53: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
# /usr/include/c++/10/iostream:74:   static ios_base::Init __ioinit;
	leaq	__dso_handle(%rip), %rdx	#,
	leaq	_ZStL8__ioinit(%rip), %rsi	#,
	jmp	__cxa_atexit@PLT	#
	.cfi_endproc
.LFE3713:
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
