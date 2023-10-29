	.file	"cosine.cpp"
	.text
	.p2align 4
	.globl	_Z17cosine_similarityPfS_
	.type	_Z17cosine_similarityPfS_, @function
_Z17cosine_similarityPfS_:
.LFB8484:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$40, %rsp
	movl	SIZE(%rip), %ecx
	testl	%ecx, %ecx
	jle	.L14
	leal	-1(%rcx), %r8d
	cmpl	$6, %r8d
	jbe	.L15
	movl	%ecx, %edx
	vxorps	%xmm3, %xmm3, %xmm3
	xorl	%eax, %eax
	shrl	$3, %edx
	vmovaps	%xmm3, %xmm7
	vmovaps	%xmm3, %xmm5
	vmovaps	%xmm3, %xmm6
	salq	$5, %rdx
	.p2align 4
	.p2align 3
.L4:
	vmovups	(%rdi,%rax), %ymm4
	vmulps	(%rsi,%rax), %ymm4, %ymm1
	vshufps	$85, %xmm1, %xmm1, %xmm0
	vshufps	$255, %xmm1, %xmm1, %xmm4
	vaddss	%xmm1, %xmm6, %xmm2
	vextractf128	$0x1, %ymm1, %xmm6
	vaddss	%xmm0, %xmm2, %xmm2
	vunpckhps	%xmm1, %xmm1, %xmm0
	vaddss	%xmm0, %xmm2, %xmm2
	vshufps	$85, %xmm6, %xmm6, %xmm0
	vaddss	%xmm4, %xmm2, %xmm2
	vaddss	%xmm6, %xmm2, %xmm2
	vaddss	%xmm0, %xmm2, %xmm2
	vunpckhps	%xmm6, %xmm6, %xmm0
	vshufps	$255, %xmm6, %xmm6, %xmm6
	vaddss	%xmm0, %xmm2, %xmm2
	vaddss	%xmm6, %xmm2, %xmm6
	vmovups	(%rdi,%rax), %ymm2
	vmulps	%ymm2, %ymm2, %ymm2
	vshufps	$85, %xmm2, %xmm2, %xmm1
	vshufps	$255, %xmm2, %xmm2, %xmm4
	vaddss	%xmm2, %xmm5, %xmm0
	vextractf128	$0x1, %ymm2, %xmm5
	vaddss	%xmm1, %xmm0, %xmm0
	vunpckhps	%xmm2, %xmm2, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vshufps	$85, %xmm5, %xmm5, %xmm1
	vaddss	%xmm4, %xmm0, %xmm0
	vmovups	(%rsi,%rax), %ymm4
	addq	$32, %rax
	vaddss	%xmm5, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vunpckhps	%xmm5, %xmm5, %xmm1
	vshufps	$255, %xmm5, %xmm5, %xmm5
	vmulps	%ymm4, %ymm4, %ymm4
	vaddss	%xmm1, %xmm0, %xmm0
	vshufps	$85, %xmm4, %xmm4, %xmm2
	vshufps	$255, %xmm4, %xmm4, %xmm1
	vaddss	%xmm5, %xmm0, %xmm5
	vaddss	%xmm4, %xmm7, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	vunpckhps	%xmm4, %xmm4, %xmm2
	vextractf128	$0x1, %ymm4, %xmm4
	vaddss	%xmm2, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vshufps	$85, %xmm4, %xmm4, %xmm1
	vaddss	%xmm4, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vunpckhps	%xmm4, %xmm4, %xmm1
	vshufps	$255, %xmm4, %xmm4, %xmm4
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm4, %xmm0, %xmm7
	cmpq	%rax, %rdx
	jne	.L4
	movl	%ecx, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	cmpl	%eax, %ecx
	je	.L23
	vzeroupper
.L3:
	movl	%ecx, %r9d
	subl	%eax, %r8d
	subl	%eax, %r9d
	cmpl	$2, %r8d
	jbe	.L6
	salq	$2, %rax
	vmovups	(%rdi,%rax), %xmm4
	vmovups	(%rsi,%rax), %xmm1
	movl	%r9d, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	vmulps	%xmm1, %xmm4, %xmm8
	vmulps	%xmm1, %xmm1, %xmm1
	vaddss	%xmm8, %xmm6, %xmm2
	vshufps	$85, %xmm8, %xmm8, %xmm6
	vaddss	%xmm6, %xmm2, %xmm2
	vunpckhps	%xmm8, %xmm8, %xmm6
	vaddss	%xmm6, %xmm2, %xmm2
	vshufps	$255, %xmm8, %xmm8, %xmm6
	vaddss	%xmm6, %xmm2, %xmm6
	vmulps	%xmm4, %xmm4, %xmm2
	vaddss	%xmm1, %xmm7, %xmm4
	vshufps	$85, %xmm1, %xmm1, %xmm7
	vaddss	%xmm2, %xmm5, %xmm0
	vshufps	$85, %xmm2, %xmm2, %xmm5
	vaddss	%xmm7, %xmm4, %xmm4
	vunpckhps	%xmm1, %xmm1, %xmm7
	vshufps	$255, %xmm1, %xmm1, %xmm1
	vaddss	%xmm5, %xmm0, %xmm5
	vunpckhps	%xmm2, %xmm2, %xmm0
	vaddss	%xmm7, %xmm4, %xmm7
	vshufps	$255, %xmm2, %xmm2, %xmm2
	vaddss	%xmm0, %xmm5, %xmm5
	vaddss	%xmm1, %xmm7, %xmm7
	vaddss	%xmm2, %xmm5, %xmm5
	cmpl	%eax, %r9d
	je	.L5
.L6:
	movslq	%edx, %rax
	salq	$2, %rax
	vmovss	(%rdi,%rax), %xmm1
	vmovss	(%rsi,%rax), %xmm0
	leal	1(%rdx), %eax
	vfmadd231ss	%xmm0, %xmm1, %xmm6
	vfmadd231ss	%xmm1, %xmm1, %xmm5
	vfmadd231ss	%xmm0, %xmm0, %xmm7
	cmpl	%eax, %ecx
	jle	.L5
	cltq
	addl	$2, %edx
	salq	$2, %rax
	vmovss	(%rdi,%rax), %xmm1
	vmovss	(%rsi,%rax), %xmm0
	vfmadd231ss	%xmm1, %xmm1, %xmm5
	vfmadd231ss	%xmm1, %xmm0, %xmm6
	vfmadd231ss	%xmm0, %xmm0, %xmm7
	cmpl	%edx, %ecx
	jle	.L5
	movslq	%edx, %rdx
	salq	$2, %rdx
	vmovss	(%rdi,%rdx), %xmm1
	vmovss	(%rsi,%rdx), %xmm0
	vfmadd231ss	%xmm1, %xmm1, %xmm5
	vfmadd231ss	%xmm0, %xmm1, %xmm6
	vfmadd231ss	%xmm0, %xmm0, %xmm7
.L5:
	vucomiss	%xmm5, %xmm3
	ja	.L24
.L2:
	vsqrtss	%xmm5, %xmm5, %xmm5
.L10:
	vucomiss	%xmm7, %xmm3
	ja	.L19
	vsqrtss	%xmm7, %xmm7, %xmm0
.L13:
	movq	-8(%rbp), %r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	vmulss	%xmm0, %xmm5, %xmm0
	leave
	vdivss	%xmm0, %xmm6, %xmm0
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4
	.p2align 3
.L14:
	.cfi_restore_state
	vxorps	%xmm3, %xmm3, %xmm3
	vmovaps	%xmm3, %xmm7
	vmovaps	%xmm3, %xmm5
	vmovaps	%xmm3, %xmm6
	jmp	.L2
	.p2align 4
	.p2align 3
.L23:
	vzeroupper
	jmp	.L5
.L15:
	vxorps	%xmm3, %xmm3, %xmm3
	xorl	%eax, %eax
	xorl	%edx, %edx
	vmovaps	%xmm3, %xmm7
	vmovaps	%xmm3, %xmm5
	vmovaps	%xmm3, %xmm6
	jmp	.L3
.L24:
	vmovaps	%xmm5, %xmm0
	vmovss	%xmm3, -28(%rbp)
	vmovss	%xmm7, -24(%rbp)
	vmovss	%xmm6, -20(%rbp)
	call	sqrtf@PLT
	vmovss	-28(%rbp), %xmm3
	vmovss	-24(%rbp), %xmm7
	vmovss	-20(%rbp), %xmm6
	vmovaps	%xmm0, %xmm5
	jmp	.L10
.L19:
	vmovaps	%xmm7, %xmm0
	vmovss	%xmm5, -24(%rbp)
	vmovss	%xmm6, -20(%rbp)
	call	sqrtf@PLT
	vmovss	-24(%rbp), %xmm5
	vmovss	-20(%rbp), %xmm6
	jmp	.L13
	.cfi_endproc
.LFE8484:
	.size	_Z17cosine_similarityPfS_, .-_Z17cosine_similarityPfS_
	.p2align 4
	.globl	_Z22cosine_similarity_simdPfS_
	.type	_Z22cosine_similarity_simdPfS_, @function
_Z22cosine_similarity_simdPfS_:
.LFB8486:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vxorps	%xmm1, %xmm1, %xmm1
	pushq	-8(%r10)
	pushq	%rbp
	vmovaps	%ymm1, %ymm2
	vmovaps	%ymm1, %ymm0
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	subq	$40, %rsp
	movslq	SIZE(%rip), %rdx
	testq	%rdx, %rdx
	je	.L26
	xorl	%eax, %eax
	.p2align 4
	.p2align 3
.L27:
	vmovups	(%rdi,%rax,4), %ymm5
	vmovups	(%rsi,%rax,4), %ymm7
	vfmadd231ps	(%rsi,%rax,4), %ymm5, %ymm0
	addq	$8, %rax
	vfmadd231ps	%ymm5, %ymm5, %ymm2
	vfmadd231ps	%ymm7, %ymm7, %ymm1
	cmpq	%rdx, %rax
	jb	.L27
.L26:
	vextractf128	$0x1, %ymm0, %xmm3
	vxorps	%xmm4, %xmm4, %xmm4
	vaddps	%xmm3, %xmm0, %xmm0
	vmovhlps	%xmm0, %xmm0, %xmm3
	vaddps	%xmm0, %xmm3, %xmm0
	vmovshdup	%xmm0, %xmm3
	vaddss	%xmm3, %xmm0, %xmm0
	vmovaps	%xmm0, %xmm3
	vextractf128	$0x1, %ymm2, %xmm0
	vaddps	%xmm2, %xmm0, %xmm2
	vmovhlps	%xmm2, %xmm2, %xmm0
	vaddps	%xmm0, %xmm2, %xmm2
	vmovshdup	%xmm2, %xmm0
	vaddss	%xmm0, %xmm2, %xmm2
	vextractf128	$0x1, %ymm1, %xmm0
	vaddps	%xmm1, %xmm0, %xmm1
	vucomiss	%xmm2, %xmm4
	vmovhlps	%xmm1, %xmm1, %xmm0
	vaddps	%xmm0, %xmm1, %xmm1
	vmovshdup	%xmm1, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
	ja	.L38
	vsqrtss	%xmm2, %xmm2, %xmm2
	vzeroupper
.L30:
	vucomiss	%xmm1, %xmm4
	ja	.L39
	vsqrtss	%xmm1, %xmm1, %xmm1
.L33:
	movq	-8(%rbp), %r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	vmulss	%xmm1, %xmm2, %xmm2
	leave
	vdivss	%xmm2, %xmm3, %xmm0
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L38:
	.cfi_restore_state
	vmovaps	%xmm2, %xmm0
	vmovss	%xmm1, -24(%rbp)
	vmovss	%xmm3, -20(%rbp)
	vzeroupper
	call	sqrtf@PLT
	vxorps	%xmm4, %xmm4, %xmm4
	vmovss	-24(%rbp), %xmm1
	vmovss	-20(%rbp), %xmm3
	vmovaps	%xmm0, %xmm2
	jmp	.L30
.L39:
	vmovaps	%xmm1, %xmm0
	vmovss	%xmm2, -24(%rbp)
	vmovss	%xmm3, -20(%rbp)
	call	sqrtf@PLT
	vmovaps	%xmm0, %xmm1
	vmovss	-24(%rbp), %xmm2
	vmovss	-20(%rbp), %xmm3
	jmp	.L33
	.cfi_endproc
.LFE8486:
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
.LFB8487:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	leaq	.LC2(%rip), %rsi
	leaq	.LC3(%rip), %rdi
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	leaq	-56(%rbp), %r14
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	pushq	%rbx
	subq	$64, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movslq	SIZE(%rip), %rax
	leaq	39(,%rax,4), %rax
	shrq	$4, %rax
	salq	$4, %rax
	subq	%rax, %rsp
	leaq	31(%rsp), %r8
	subq	%rax, %rsp
	leaq	31(%rsp), %r9
	andq	$-32, %r8
	andq	$-32, %r9
	movq	%r8, %r13
	movq	%r9, %r15
	call	fopen@PLT
	movq	%r13, %r12
	movq	%rax, -80(%rbp)
	leaq	-52(%rbp), %rax
	movq	%r15, %rbx
	movq	%rax, -88(%rbp)
	jmp	.L43
	.p2align 4
	.p2align 3
.L66:
	vmovss	-56(%rbp), %xmm0
	addq	$4, %r12
	addq	$4, %rbx
	vmovss	%xmm0, -4(%r12)
	vmovss	-52(%rbp), %xmm0
	vmovss	%xmm0, -4(%rbx)
.L43:
	movq	-88(%rbp), %rcx
	xorl	%eax, %eax
	movq	%r14, %rdx
	leaq	.LC4(%rip), %rsi
	movq	-80(%rbp), %rdi
	call	__isoc99_fscanf@PLT
	cmpl	$2, %eax
	je	.L66
	movl	EXECUTIONS(%rip), %eax
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.L67
	.p2align 4
	.p2align 3
.L56:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movl	SIZE(%rip), %ecx
	movq	%rax, %rbx
	testl	%ecx, %ecx
	jle	.L47
	leal	-1(%rcx), %eax
	cmpl	$6, %eax
	jbe	.L59
	movl	%ecx, %edx
	vxorps	%xmm4, %xmm4, %xmm4
	xorl	%eax, %eax
	shrl	$3, %edx
	vmovaps	%xmm4, %xmm6
	vmovaps	%xmm4, %xmm7
	salq	$5, %rdx
	.p2align 4
	.p2align 3
.L49:
	vmovaps	0(%r13,%rax), %ymm3
	vmulps	%ymm3, %ymm3, %ymm3
	vshufps	$85, %xmm3, %xmm3, %xmm1
	vshufps	$255, %xmm3, %xmm3, %xmm5
	vaddss	%xmm3, %xmm7, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vunpckhps	%xmm3, %xmm3, %xmm1
	vextractf128	$0x1, %ymm3, %xmm3
	vaddss	%xmm1, %xmm0, %xmm0
	vshufps	$85, %xmm3, %xmm3, %xmm1
	vaddss	%xmm5, %xmm0, %xmm0
	vaddss	%xmm3, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vunpckhps	%xmm3, %xmm3, %xmm1
	vshufps	$255, %xmm3, %xmm3, %xmm3
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm3, %xmm0, %xmm7
	vmovaps	(%r15,%rax), %ymm3
	addq	$32, %rax
	vmulps	%ymm3, %ymm3, %ymm2
	vshufps	$85, %xmm2, %xmm2, %xmm1
	vshufps	$255, %xmm2, %xmm2, %xmm5
	vaddss	%xmm2, %xmm6, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vunpckhps	%xmm2, %xmm2, %xmm1
	vextractf128	$0x1, %ymm2, %xmm2
	vaddss	%xmm1, %xmm0, %xmm0
	vshufps	$85, %xmm2, %xmm2, %xmm1
	vaddss	%xmm5, %xmm0, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	vaddss	%xmm1, %xmm0, %xmm0
	vunpckhps	%xmm2, %xmm2, %xmm1
	vshufps	$255, %xmm2, %xmm2, %xmm2
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm2, %xmm0, %xmm6
	cmpq	%rdx, %rax
	jne	.L49
	movl	%ecx, %eax
	andl	$-8, %eax
	movl	%eax, %edx
	cmpl	%ecx, %eax
	je	.L68
	vzeroupper
.L48:
	movl	%ecx, %esi
	subl	%eax, %esi
	leal	-1(%rsi), %edi
	cmpl	$2, %edi
	jbe	.L51
	salq	$2, %rax
	vmovaps	0(%r13,%rax), %xmm2
	vmovaps	(%r15,%rax), %xmm1
	movl	%esi, %eax
	andl	$-4, %eax
	addl	%eax, %edx
	vmulps	%xmm2, %xmm2, %xmm2
	vmulps	%xmm1, %xmm1, %xmm1
	vaddss	%xmm2, %xmm7, %xmm0
	vshufps	$85, %xmm2, %xmm2, %xmm3
	vunpckhps	%xmm2, %xmm2, %xmm7
	vshufps	$255, %xmm2, %xmm2, %xmm2
	vaddss	%xmm3, %xmm0, %xmm3
	vaddss	%xmm7, %xmm3, %xmm7
	vaddss	%xmm2, %xmm7, %xmm7
	vaddss	%xmm1, %xmm6, %xmm2
	vshufps	$85, %xmm1, %xmm1, %xmm6
	vaddss	%xmm6, %xmm2, %xmm2
	vunpckhps	%xmm1, %xmm1, %xmm6
	vshufps	$255, %xmm1, %xmm1, %xmm1
	vaddss	%xmm6, %xmm2, %xmm6
	vaddss	%xmm1, %xmm6, %xmm6
	cmpl	%eax, %esi
	je	.L50
.L51:
	movslq	%edx, %rax
	leal	1(%rdx), %esi
	salq	$2, %rax
	vmovss	0(%r13,%rax), %xmm1
	vmovss	(%r15,%rax), %xmm0
	vfmadd231ss	%xmm1, %xmm1, %xmm7
	vfmadd231ss	%xmm0, %xmm0, %xmm6
	cmpl	%ecx, %esi
	jge	.L50
	vmovss	4(%r13,%rax), %xmm1
	vmovss	4(%r15,%rax), %xmm0
	addl	$2, %edx
	vfmadd231ss	%xmm1, %xmm1, %xmm7
	vfmadd231ss	%xmm0, %xmm0, %xmm6
	cmpl	%edx, %ecx
	jle	.L50
	vmovss	8(%r13,%rax), %xmm1
	vmovss	8(%r15,%rax), %xmm0
	vfmadd231ss	%xmm1, %xmm1, %xmm7
	vfmadd231ss	%xmm0, %xmm0, %xmm6
.L50:
	vucomiss	%xmm7, %xmm4
	ja	.L69
.L53:
	vucomiss	%xmm6, %xmm4
	ja	.L70
.L47:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	incl	%r12d
	subq	%rbx, %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vdivsd	.LC5(%rip), %xmm0, %xmm0
	movl	EXECUTIONS(%rip), %eax
	vaddsd	-72(%rbp), %xmm0, %xmm4
	vmovsd	%xmm4, -72(%rbp)
	cmpl	%r12d, %eax
	jg	.L56
	movq	.LC1(%rip), %rbx
	testl	%eax, %eax
	jle	.L44
	xorl	%r14d, %r14d
	.p2align 4
	.p2align 3
.L46:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%r15, %rsi
	movq	%r13, %rdi
	incl	%r14d
	movq	%rax, %r12
	call	_Z22cosine_similarity_simdPfS_
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	subq	%r12, %rax
	vcvtsi2sdq	%rax, %xmm4, %xmm0
	vdivsd	.LC5(%rip), %xmm0, %xmm0
	vmovq	%rbx, %xmm4
	movl	EXECUTIONS(%rip), %eax
	vaddsd	%xmm0, %xmm4, %xmm4
	vmovq	%xmm4, %rbx
	cmpl	%r14d, %eax
	jg	.L46
.L44:
	vmovsd	-72(%rbp), %xmm7
	vxorpd	%xmm4, %xmm4, %xmm4
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdl	%eax, %xmm4, %xmm0
	vdivsd	%xmm0, %xmm7, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	leaq	_ZSt4cout(%rip), %rdi
	vcvtsi2sdl	EXECUTIONS(%rip), %xmm4, %xmm0
	vmovq	%rbx, %xmm4
	vdivsd	%xmm0, %xmm4, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movl	$4, %edx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	-48(%rbp), %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4
	.p2align 3
.L68:
	.cfi_restore_state
	vzeroupper
	jmp	.L50
.L59:
	vxorps	%xmm4, %xmm4, %xmm4
	xorl	%eax, %eax
	xorl	%edx, %edx
	vmovaps	%xmm4, %xmm6
	vmovaps	%xmm4, %xmm7
	jmp	.L48
.L67:
	movq	.LC1(%rip), %rbx
	jmp	.L44
.L69:
	vmovaps	%xmm7, %xmm0
	vmovss	%xmm4, -88(%rbp)
	vmovss	%xmm6, -80(%rbp)
	call	sqrtf@PLT
	vmovss	-88(%rbp), %xmm4
	vmovss	-80(%rbp), %xmm6
	jmp	.L53
.L70:
	vmovaps	%xmm6, %xmm0
	call	sqrtf@PLT
	jmp	.L47
	.cfi_endproc
.LFE8487:
	.size	main, .-main
	.p2align 4
	.type	_GLOBAL__sub_I_SIZE, @function
_GLOBAL__sub_I_SIZE:
.LFB9052:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE9052:
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
