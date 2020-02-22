	.file	"greedy.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB357:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE357:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZSt16__deque_buf_sizem,"axG",@progbits,_ZSt16__deque_buf_sizem,comdat
	.weak	_ZSt16__deque_buf_sizem
	.type	_ZSt16__deque_buf_sizem, @function
_ZSt16__deque_buf_sizem:
.LFB494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	cmpq	$511, -8(%rbp)
	ja	.L4
	movl	$512, %eax
	movl	$0, %edx
	divq	-8(%rbp)
	jmp	.L6
.L4:
	movl	$1, %eax
.L6:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE494:
	.size	_ZSt16__deque_buf_sizem, .-_ZSt16__deque_buf_sizem
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.globl	m
	.bss
	.align 8
	.type	m, @object
	.size	m, 8
m:
	.zero	8
	.globl	n
	.align 8
	.type	n, @object
	.size	n, 8
n:
	.zero	8
	.section	.rodata
	.align 4
	.type	_ZL10MAX_SLICES, @object
	.size	_ZL10MAX_SLICES, 4
_ZL10MAX_SLICES:
	.long	1000000005
	.globl	slices
	.bss
	.align 32
	.type	slices, @object
	.size	slices, 800040
slices:
	.zero	800040
	.globl	save
	.align 16
	.type	save, @object
	.size	save, 24
save:
	.zero	24
	.globl	tmp
	.align 16
	.type	tmp, @object
	.size	tmp, 24
tmp:
	.zero	24
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEED2Ev,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEED5Ev,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev, @function
_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev:
.LFB2222:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2222:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev, .-_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEED1Ev
	.set	_ZNSt5stackIxSt5dequeIxSaIxEEED1Ev,_ZNSt5stackIxSt5dequeIxSaIxEEED2Ev
	.text
	.globl	_Z6greedyi
	.type	_Z6greedyi, @function
_Z6greedyi:
.LFB2220:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2220
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movl	%edi, -148(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt5stackIxSt5dequeIxSaIxEEEC1IS2_vEEv
.LEHE0:
	movq	$0, -120(%rbp)
	leaq	tmp(%rip), %rdi
	call	_ZNSt6vectorIxSaIxEE5clearEv
	movl	-148(%rbp), %eax
	movl	%eax, -132(%rbp)
.L11:
	cmpl	$0, -132(%rbp)
	js	.L9
	movl	-132(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	slices(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-120(%rbp), %rax
	addq	%rax, %rdx
	movq	m(%rip), %rax
	cmpq	%rax, %rdx
	jg	.L10
	movl	-132(%rbp), %eax
	cltq
	movq	%rax, -128(%rbp)
	leaq	-128(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx
	movl	-132(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	slices(%rip), %rax
	movq	(%rdx,%rax), %rax
	addq	%rax, -120(%rbp)
.L10:
	subl	$1, -132(%rbp)
	jmp	.L11
.L9:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L12
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv
	movq	%rax, %rsi
	leaq	tmp(%rip), %rdi
	call	_ZNSt6vectorIxSaIxEE9push_backERKx
.LEHE1:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv
	jmp	.L9
.L12:
	movq	-120(%rbp), %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5stackIxSt5dequeIxSaIxEEED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L15
	jmp	.L17
.L16:
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5stackIxSt5dequeIxSaIxEEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L17:
	call	__stack_chk_fail@PLT
.L15:
	addq	$152, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2220:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2220:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2220-.LLSDACSB2220
.LLSDACSB2220:
	.uleb128 .LEHB0-.LFB2220
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2220
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L16-.LFB2220
	.uleb128 0
	.uleb128 .LEHB2-.LFB2220
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE2220:
	.text
	.size	_Z6greedyi, .-_Z6greedyi
	.section	.rodata
.LC0:
	.string	"%lld%lld"
.LC1:
	.string	"%lld"
.LC2:
	.string	"%lld\n"
.LC3:
	.string	"%lld "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2224:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	$0, -32(%rbp)
	leaq	n(%rip), %rdx
	leaq	m(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	movl	$0, -44(%rbp)
.L20:
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	n(%rip), %rax
	cmpq	%rax, %rdx
	jge	.L19
	movl	-44(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	slices(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	scanf@PLT
	addl	$1, -44(%rbp)
	jmp	.L20
.L19:
	movq	n(%rip), %rax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
.L23:
	cmpl	$0, -40(%rbp)
	js	.L21
	movl	-40(%rbp), %eax
	movl	%eax, %edi
	call	_Z6greedyi
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jle	.L22
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	tmp(%rip), %rsi
	leaq	save(%rip), %rdi
	call	_ZNSt6vectorIxSaIxEEaSERKS1_
.L22:
	subl	$1, -40(%rbp)
	jmp	.L23
.L21:
	leaq	save(%rip), %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -36(%rbp)
.L25:
	movl	-36(%rbp), %eax
	movslq	%eax, %rbx
	leaq	save(%rip), %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	%rax, %rbx
	setb	%al
	testb	%al, %al
	je	.L24
	movl	-36(%rbp), %eax
	cltq
	movq	%rax, %rsi
	leaq	save(%rip), %rdi
	call	_ZNSt6vectorIxSaIxEEixEm
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -36(%rbp)
	jmp	.L25
.L24:
	movl	$0, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2224:
	.size	main, .-main
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB2456:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L28
	movq	-16(%rbp), %rax
	jmp	.L29
.L28:
	movq	-8(%rbp), %rax
.L29:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2456:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNSt6vectorIxSaIxEEC2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEEC2Ev
	.type	_ZNSt6vectorIxSaIxEEC2Ev, @function
_ZNSt6vectorIxSaIxEEC2Ev:
.LFB2471:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2471
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2471:
	.section	.gcc_except_table
.LLSDA2471:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2471-.LLSDACSB2471
.LLSDACSB2471:
.LLSDACSE2471:
	.section	.text._ZNSt6vectorIxSaIxEEC2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEEC5Ev,comdat
	.size	_ZNSt6vectorIxSaIxEEC2Ev, .-_ZNSt6vectorIxSaIxEEC2Ev
	.weak	_ZNSt6vectorIxSaIxEEC1Ev
	.set	_ZNSt6vectorIxSaIxEEC1Ev,_ZNSt6vectorIxSaIxEEC2Ev
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEEC5IS2_vEEv,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv, @function
_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv:
.LFB2474:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2474:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv, .-_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEEC1IS2_vEEv
	.set	_ZNSt5stackIxSt5dequeIxSaIxEEEC1IS2_vEEv,_ZNSt5stackIxSt5dequeIxSaIxEEEC2IS2_vEEv
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEED2Ev
	.type	_ZNSt5dequeIxSaIxEED2Ev, @function
_ZNSt5dequeIxSaIxEED2Ev:
.LFB2477:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2477
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE3endEv
	leaq	-96(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE5beginEv
	leaq	-64(%rbp), %rdx
	leaq	-96(%rbp), %rsi
	movq	-104(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEED2Ev
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L33
	call	__stack_chk_fail@PLT
.L33:
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2477:
	.section	.gcc_except_table
.LLSDA2477:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2477-.LLSDACSB2477
.LLSDACSB2477:
.LLSDACSE2477:
	.section	.text._ZNSt5dequeIxSaIxEED2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEED5Ev,comdat
	.size	_ZNSt5dequeIxSaIxEED2Ev, .-_ZNSt5dequeIxSaIxEED2Ev
	.weak	_ZNSt5dequeIxSaIxEED1Ev
	.set	_ZNSt5dequeIxSaIxEED1Ev,_ZNSt5dequeIxSaIxEED2Ev
	.section	.text._ZNSt6vectorIxSaIxEE5clearEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE5clearEv,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE5clearEv
	.type	_ZNSt6vectorIxSaIxEE5clearEv, @function
_ZNSt6vectorIxSaIxEE5clearEv:
.LFB2479:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2479:
	.size	_ZNSt6vectorIxSaIxEE5clearEv, .-_ZNSt6vectorIxSaIxEE5clearEv
	.section	.text._ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2481:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2481:
	.size	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx, @function
_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx:
.LFB2480:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt5dequeIxSaIxEE9push_backEOx
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2480:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx, .-_ZNSt5stackIxSt5dequeIxSaIxEEE4pushEOx
	.section	.text._ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv,"axG",@progbits,_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv
	.type	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv, @function
_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv:
.LFB2482:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5dequeIxSaIxEE5emptyEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2482:
	.size	_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv, .-_ZNKSt5stackIxSt5dequeIxSaIxEEE5emptyEv
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEE3topEv,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv, @function
_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv:
.LFB2483:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE4backEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2483:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv, .-_ZNSt5stackIxSt5dequeIxSaIxEEE3topEv
	.section	.text._ZNSt6vectorIxSaIxEE9push_backERKx,"axG",@progbits,_ZNSt6vectorIxSaIxEE9push_backERKx,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE9push_backERKx
	.type	_ZNSt6vectorIxSaIxEE9push_backERKx, @function
_ZNSt6vectorIxSaIxEE9push_backERKx:
.LFB2484:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L43
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L45
.L43:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIxSaIxEE3endEv
	movq	%rax, %rcx
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
.L45:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2484:
	.size	_ZNSt6vectorIxSaIxEE9push_backERKx, .-_ZNSt6vectorIxSaIxEE9push_backERKx
	.section	.text._ZNSt5stackIxSt5dequeIxSaIxEEE3popEv,"axG",@progbits,_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv,comdat
	.align 2
	.weak	_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv
	.type	_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv, @function
_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv:
.LFB2485:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE8pop_backEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2485:
	.size	_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv, .-_ZNSt5stackIxSt5dequeIxSaIxEEE3popEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIxEE27_S_propagate_on_copy_assignEv,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIxEE27_S_propagate_on_copy_assignEv,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIxEE27_S_propagate_on_copy_assignEv
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIxEE27_S_propagate_on_copy_assignEv, @function
_ZN9__gnu_cxx14__alloc_traitsISaIxEE27_S_propagate_on_copy_assignEv:
.LFB2487:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2487:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIxEE27_S_propagate_on_copy_assignEv, .-_ZN9__gnu_cxx14__alloc_traitsISaIxEE27_S_propagate_on_copy_assignEv
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaIxEE15_S_always_equalEv,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaIxEE15_S_always_equalEv,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaIxEE15_S_always_equalEv
	.type	_ZN9__gnu_cxx14__alloc_traitsISaIxEE15_S_always_equalEv, @function
_ZN9__gnu_cxx14__alloc_traitsISaIxEE15_S_always_equalEv:
.LFB2488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2488:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaIxEE15_S_always_equalEv, .-_ZN9__gnu_cxx14__alloc_traitsISaIxEE15_S_always_equalEv
	.section	.text._ZNSt6vectorIxSaIxEEaSERKS1_,"axG",@progbits,_ZNSt6vectorIxSaIxEEaSERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEEaSERKS1_
	.type	_ZNSt6vectorIxSaIxEEaSERKS1_, @function
_ZNSt6vectorIxSaIxEEaSERKS1_:
.LFB2486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	-56(%rbp), %rax
	je	.L52
	call	_ZN9__gnu_cxx14__alloc_traitsISaIxEE27_S_propagate_on_copy_assignEv
	testb	%al, %al
	je	.L53
	call	_ZN9__gnu_cxx14__alloc_traitsISaIxEE15_S_always_equalEv
	xorl	$1, %eax
	testb	%al, %al
	je	.L54
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZStneIxEbRKSaIT_ES3_
	testb	%al, %al
	je	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movl	$0, %eax
.L55:
	testb	%al, %al
	je	.L56
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIxSaIxEE5clearEv
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	movq	-56(%rbp), %rax
	movq	$0, (%rax)
	movq	-56(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-56(%rbp), %rax
	movq	$0, 16(%rax)
.L56:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt15__alloc_on_copyISaIxEEvRT_RKS1_
.L53:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, -48(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE8capacityEv
	cmpq	%rax, -48(%rbp)
	seta	%al
	testb	%al, %al
	je	.L57
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE3endEv
	movq	%rax, %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE5beginEv
	movq	%rax, %rdx
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rbx, %rcx
	movq	%rax, %rdi
	call	_ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_
	movq	%rax, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	movq	-56(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rsi
	movq	-56(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L58
.L57:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	%rax, -48(%rbp)
	setbe	%al
	testb	%al, %al
	je	.L59
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIxSaIxEE3endEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIxSaIxEE5beginEv
	movq	%rax, %r14
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE3endEv
	movq	%rax, %r13
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE5beginEv
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET0_T_SB_SA_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEExEvT_S7_RSaIT0_E
	jmp	.L58
.L59:
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %r12
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	salq	$3, %rax
	leaq	(%r12,%rax), %rcx
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPxS0_ET0_T_S2_S1_
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %r14
	movq	-56(%rbp), %rax
	movq	8(%rax), %r12
	movq	-64(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	(%rax), %r13
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	salq	$3, %rax
	addq	%r13, %rax
	movq	%r14, %rcx
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIPxS0_xET0_T_S2_S1_RSaIT1_E
.L58:
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
.L52:
	movq	-56(%rbp), %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2486:
	.size	_ZNSt6vectorIxSaIxEEaSERKS1_, .-_ZNSt6vectorIxSaIxEEaSERKS1_
	.section	.text._ZNKSt6vectorIxSaIxEE4sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE4sizeEv
	.type	_ZNKSt6vectorIxSaIxEE4sizeEv, @function
_ZNKSt6vectorIxSaIxEE4sizeEv:
.LFB2489:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2489:
	.size	_ZNKSt6vectorIxSaIxEE4sizeEv, .-_ZNKSt6vectorIxSaIxEE4sizeEv
	.section	.text._ZNSt6vectorIxSaIxEEixEm,"axG",@progbits,_ZNSt6vectorIxSaIxEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEEixEm
	.type	_ZNSt6vectorIxSaIxEEixEm, @function
_ZNSt6vectorIxSaIxEEixEm:
.LFB2490:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	salq	$3, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2490:
	.size	_ZNSt6vectorIxSaIxEEixEm, .-_ZNSt6vectorIxSaIxEEixEm
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev:
.LFB2593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2593:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEEC2Ev, @function
_ZNSt12_Vector_baseIxSaIxEEC2Ev:
.LFB2595:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2595:
	.size	_ZNSt12_Vector_baseIxSaIxEEC2Ev, .-_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEEC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEEC1Ev,_ZNSt12_Vector_baseIxSaIxEEC2Ev
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEED2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEED2Ev, @function
_ZNSt12_Vector_baseIxSaIxEED2Ev:
.LFB2598:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2598
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2598:
	.section	.gcc_except_table
.LLSDA2598:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2598-.LLSDACSB2598
.LLSDACSB2598:
.LLSDACSE2598:
	.section	.text._ZNSt12_Vector_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIxSaIxEED2Ev, .-_ZNSt12_Vector_baseIxSaIxEED2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEED1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEED1Ev,_ZNSt12_Vector_baseIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEEC2Ev,"axG",@progbits,_ZNSt5dequeIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEEC2Ev
	.type	_ZNSt5dequeIxSaIxEEC2Ev, @function
_ZNSt5dequeIxSaIxEEC2Ev:
.LFB2601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2601:
	.size	_ZNSt5dequeIxSaIxEEC2Ev, .-_ZNSt5dequeIxSaIxEEC2Ev
	.weak	_ZNSt5dequeIxSaIxEEC1Ev
	.set	_ZNSt5dequeIxSaIxEEC1Ev,_ZNSt5dequeIxSaIxEEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev:
.LFB2605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2605:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEED2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEED2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEED2Ev, @function
_ZNSt11_Deque_baseIxSaIxEED2Ev:
.LFB2607:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.L71
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	40(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
.L71:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2607:
	.size	_ZNSt11_Deque_baseIxSaIxEED2Ev, .-_ZNSt11_Deque_baseIxSaIxEED2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEED1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEED1Ev,_ZNSt11_Deque_baseIxSaIxEED2Ev
	.section	.text._ZNSt5dequeIxSaIxEE5beginEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE5beginEv
	.type	_ZNSt5dequeIxSaIxEE5beginEv, @function
_ZNSt5dequeIxSaIxEE5beginEv:
.LFB2609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2609:
	.size	_ZNSt5dequeIxSaIxEE5beginEv, .-_ZNSt5dequeIxSaIxEE5beginEv
	.section	.text._ZNSt5dequeIxSaIxEE3endEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE3endEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE3endEv
	.type	_ZNSt5dequeIxSaIxEE3endEv, @function
_ZNSt5dequeIxSaIxEE3endEv:
.LFB2610:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2610:
	.size	_ZNSt5dequeIxSaIxEE3endEv, .-_ZNSt5dequeIxSaIxEE3endEv
	.section	.text._ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB2611:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2611:
	.size	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, @function
_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_:
.LFB2613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2613:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_, .-_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1ERKS2_,_ZNSt15_Deque_iteratorIxRxPxEC2ERKS2_
	.section	.text._ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.type	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, @function
_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_:
.LFB2615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%rcx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2615:
	.size	_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_, .-_ZNSt5dequeIxSaIxEE15_M_destroy_dataESt15_Deque_iteratorIxRxPxES5_RKS0_
	.section	.text._ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx,"axG",@progbits,_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx
	.type	_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx, @function
_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx:
.LFB2616:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2616
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, 8(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2616:
	.section	.gcc_except_table
.LLSDA2616:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2616-.LLSDACSB2616
.LLSDACSB2616:
.LLSDACSE2616:
	.section	.text._ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx,"axG",@progbits,_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx,comdat
	.size	_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx, .-_ZNSt6vectorIxSaIxEE15_M_erase_at_endEPx
	.section	.text._ZNSt5dequeIxSaIxEE9push_backEOx,"axG",@progbits,_ZNSt5dequeIxSaIxEE9push_backEOx,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE9push_backEOx
	.type	_ZNSt5dequeIxSaIxEE9push_backEOx, @function
_ZNSt5dequeIxSaIxEE9push_backEOx:
.LFB2617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRxEONSt16remove_referenceIT_E4typeEOS2_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE12emplace_backIJxEEEvDpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2617:
	.size	_ZNSt5dequeIxSaIxEE9push_backEOx, .-_ZNSt5dequeIxSaIxEE9push_backEOx
	.section	.text._ZNKSt5dequeIxSaIxEE5emptyEv,"axG",@progbits,_ZNKSt5dequeIxSaIxEE5emptyEv,comdat
	.align 2
	.weak	_ZNKSt5dequeIxSaIxEE5emptyEv
	.type	_ZNKSt5dequeIxSaIxEE5emptyEv, @function
_ZNKSt5dequeIxSaIxEE5emptyEv:
.LFB2618:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSteqIxRxPxEbRKSt15_Deque_iteratorIT_T0_T1_ES8_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2618:
	.size	_ZNKSt5dequeIxSaIxEE5emptyEv, .-_ZNKSt5dequeIxSaIxEE5emptyEv
	.section	.text._ZNSt5dequeIxSaIxEE4backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE4backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE4backEv
	.type	_ZNSt5dequeIxSaIxEE4backEv, @function
_ZNSt5dequeIxSaIxEE4backEv:
.LFB2619:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -56(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-48(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE3endEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L87
	call	__stack_chk_fail@PLT
.L87:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2619:
	.size	_ZNSt5dequeIxSaIxEE4backEv, .-_ZNSt5dequeIxSaIxEE4backEv
	.section	.text._ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB2621:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2621:
	.size	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_:
.LFB2620:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2620:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	.section	.text._ZNSt6vectorIxSaIxEE3endEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE3endEv,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE3endEv
	.type	_ZNSt6vectorIxSaIxEE3endEv, @function
_ZNSt6vectorIxSaIxEE3endEv:
.LFB2622:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L93
	call	__stack_chk_fail@PLT
.L93:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2622:
	.size	_ZNSt6vectorIxSaIxEE3endEv, .-_ZNSt6vectorIxSaIxEE3endEv
	.section	.rodata
.LC4:
	.string	"vector::_M_realloc_insert"
	.section	.text._ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.type	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_, @function
_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_:
.LFB2623:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2623
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$80, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%rdx, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB3:
	call	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	movq	%rax, -48(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIxSaIxEE5beginEv
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
.LEHE3:
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rsi
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJRKxEEEvRS0_PT_DpOT0_
	movq	$0, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	(%rax), %rsi
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rdx
	movq	%rbx, %rcx
	movq	%rax, %rdi
.LEHB4:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	movq	%rax, -56(%rbp)
	addq	$8, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %r12
	movq	-72(%rbp), %rax
	movq	8(%rax), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%r12, %rcx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_
.LEHE4:
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rdx, %rcx
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rdx
	sarq	$3, %rdx
	movq	%rdx, %rsi
	movq	-72(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	%rsi, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
.LEHE5:
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L99
	jmp	.L102
.L100:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	cmpq	$0, -56(%rbp)
	jne	.L96
	movq	-40(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-32(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	jmp	.L97
.L96:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
.L97:
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	call	__cxa_rethrow@PLT
.LEHE6:
.L101:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L102:
	call	__stack_chk_fail@PLT
.L99:
	addq	$80, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2623:
	.section	.gcc_except_table
	.align 4
.LLSDA2623:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2623-.LLSDATTD2623
.LLSDATTD2623:
	.byte	0x1
	.uleb128 .LLSDACSE2623-.LLSDACSB2623
.LLSDACSB2623:
	.uleb128 .LEHB3-.LFB2623
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB2623
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L100-.LFB2623
	.uleb128 0x1
	.uleb128 .LEHB5-.LFB2623
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB2623
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L101-.LFB2623
	.uleb128 0
	.uleb128 .LEHB7-.LFB2623
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE2623:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2623:
	.section	.text._ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_,comdat
	.size	_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_, .-_ZNSt6vectorIxSaIxEE17_M_realloc_insertIJRKxEEEvN9__gnu_cxx17__normal_iteratorIPxS1_EEDpOT_
	.section	.text._ZNSt5dequeIxSaIxEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE8pop_backEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE8pop_backEv
	.type	_ZNSt5dequeIxSaIxEE8pop_backEv, @function
_ZNSt5dequeIxSaIxEE8pop_backEv:
.LFB2624:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2624
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	cmpq	%rax, %rdx
	je	.L104
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	jmp	.L106
.L104:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
.L106:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2624:
	.section	.gcc_except_table
.LLSDA2624:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2624-.LLSDACSB2624
.LLSDACSB2624:
.LLSDACSE2624:
	.section	.text._ZNSt5dequeIxSaIxEE8pop_backEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE8pop_backEv,comdat
	.size	_ZNSt5dequeIxSaIxEE8pop_backEv, .-_ZNSt5dequeIxSaIxEE8pop_backEv
	.section	.text._ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB2625:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2625:
	.size	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB2626:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2626:
	.size	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZStneIxEbRKSaIT_ES3_,"axG",@progbits,_ZStneIxEbRKSaIT_ES3_,comdat
	.weak	_ZStneIxEbRKSaIT_ES3_
	.type	_ZStneIxEbRKSaIT_ES3_, @function
_ZStneIxEbRKSaIT_ES3_:
.LFB2627:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2627:
	.size	_ZStneIxEbRKSaIT_ES3_, .-_ZStneIxEbRKSaIT_ES3_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.type	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, @function
_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm:
.LFB2628:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L115
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
.L115:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2628:
	.size	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm, .-_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	.section	.text._ZSt15__alloc_on_copyISaIxEEvRT_RKS1_,"axG",@progbits,_ZSt15__alloc_on_copyISaIxEEvRT_RKS1_,comdat
	.weak	_ZSt15__alloc_on_copyISaIxEEvRT_RKS1_
	.type	_ZSt15__alloc_on_copyISaIxEEvRT_RKS1_, @function
_ZSt15__alloc_on_copyISaIxEEvRT_RKS1_:
.LFB2629:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	$8, %rsp
	pushq	%rcx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt18__do_alloc_on_copyISaIxEEvRT_RKS1_St17integral_constantIbLb0EE
	addq	$16, %rsp
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L117
	call	__stack_chk_fail@PLT
.L117:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2629:
	.size	_ZSt15__alloc_on_copyISaIxEEvRT_RKS1_, .-_ZSt15__alloc_on_copyISaIxEEvRT_RKS1_
	.section	.text._ZNKSt6vectorIxSaIxEE8capacityEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE8capacityEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE8capacityEv
	.type	_ZNKSt6vectorIxSaIxEE8capacityEv, @function
_ZNKSt6vectorIxSaIxEE8capacityEv:
.LFB2630:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2630:
	.size	_ZNKSt6vectorIxSaIxEE8capacityEv, .-_ZNKSt6vectorIxSaIxEE8capacityEv
	.section	.text._ZNKSt6vectorIxSaIxEE5beginEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE5beginEv
	.type	_ZNKSt6vectorIxSaIxEE5beginEv, @function
_ZNKSt6vectorIxSaIxEE5beginEv:
.LFB2631:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L122
	call	__stack_chk_fail@PLT
.L122:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2631:
	.size	_ZNKSt6vectorIxSaIxEE5beginEv, .-_ZNKSt6vectorIxSaIxEE5beginEv
	.section	.text._ZNKSt6vectorIxSaIxEE3endEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE3endEv
	.type	_ZNKSt6vectorIxSaIxEE3endEv, @function
_ZNKSt6vectorIxSaIxEE3endEv:
.LFB2632:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC1ERKS2_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L125
	call	__stack_chk_fail@PLT
.L125:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2632:
	.size	_ZNKSt6vectorIxSaIxEE3endEv, .-_ZNKSt6vectorIxSaIxEE3endEv
	.section	.text._ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_,"axG",@progbits,_ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_
	.type	_ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_, @function
_ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_:
.LFB2633:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2633
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -64(%rbp)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
.LEHE8:
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-24(%rbp), %rdx
	movq	-64(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
.LEHB9:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E
.LEHE9:
	movq	-24(%rbp), %rax
	jmp	.L132
.L130:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt12_Vector_baseIxSaIxEE13_M_deallocateEPxm
	call	__cxa_rethrow@PLT
.LEHE10:
.L131:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L132:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2633:
	.section	.gcc_except_table
	.align 4
.LLSDA2633:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2633-.LLSDATTD2633
.LLSDATTD2633:
	.byte	0x1
	.uleb128 .LLSDACSE2633-.LLSDACSB2633
.LLSDACSB2633:
	.uleb128 .LEHB8-.LFB2633
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2633
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L130-.LFB2633
	.uleb128 0x1
	.uleb128 .LEHB10-.LFB2633
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L131-.LFB2633
	.uleb128 0
	.uleb128 .LEHB11-.LFB2633
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE2633:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2633:
	.section	.text._ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_,"axG",@progbits,_ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_,comdat
	.size	_ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_, .-_ZNSt6vectorIxSaIxEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKxS1_EEEEPxmT_S9_
	.section	.text._ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E:
.LFB2634:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPxEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2634:
	.size	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	.section	.text._ZNSt6vectorIxSaIxEE5beginEv,"axG",@progbits,_ZNSt6vectorIxSaIxEE5beginEv,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEE5beginEv
	.type	_ZNSt6vectorIxSaIxEE5beginEv, @function
_ZNSt6vectorIxSaIxEE5beginEv:
.LFB2635:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L136
	call	__stack_chk_fail@PLT
.L136:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2635:
	.size	_ZNSt6vectorIxSaIxEE5beginEv, .-_ZNSt6vectorIxSaIxEE5beginEv
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET0_T_SB_SA_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET0_T_SB_SA_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET0_T_SB_SA_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET0_T_SB_SA_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET0_T_SB_SA_:
.LFB2636:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET1_T0_SB_SA_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2636:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET0_T_SB_SA_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET0_T_SB_SA_
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEExEvT_S7_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEExEvT_S7_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEExEvT_S7_RSaIT0_E
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEExEvT_S7_RSaIT0_E, @function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEExEvT_S7_RSaIT0_E:
.LFB2637:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2637:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEExEvT_S7_RSaIT0_E, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEExEvT_S7_RSaIT0_E
	.section	.text._ZSt4copyIPxS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt4copyIPxS0_ET0_T_S2_S1_,comdat
	.weak	_ZSt4copyIPxS0_ET0_T_S2_S1_
	.type	_ZSt4copyIPxS0_ET0_T_S2_S1_, @function
_ZSt4copyIPxS0_ET0_T_S2_S1_:
.LFB2638:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPxET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPxET_S1_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb0EPxS0_ET1_T0_S2_S1_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2638:
	.size	_ZSt4copyIPxS0_ET0_T_S2_S1_, .-_ZSt4copyIPxS0_ET0_T_S2_S1_
	.section	.text._ZSt22__uninitialized_copy_aIPxS0_xET0_T_S2_S1_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPxS0_xET0_T_S2_S1_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPxS0_xET0_T_S2_S1_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPxS0_xET0_T_S2_S1_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPxS0_xET0_T_S2_S1_RSaIT1_E:
.LFB2639:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIPxS0_ET0_T_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2639:
	.size	_ZSt22__uninitialized_copy_aIPxS0_xET0_T_S2_S1_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPxS0_xET0_T_S2_S1_RSaIT1_E
	.section	.text._ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev:
.LFB2671:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIxEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2671:
	.size	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC1Ev,_ZNSt12_Vector_baseIxSaIxEE12_Vector_implC2Ev
	.section	.text._ZNSaIxED2Ev,"axG",@progbits,_ZNSaIxED5Ev,comdat
	.align 2
	.weak	_ZNSaIxED2Ev
	.type	_ZNSaIxED2Ev, @function
_ZNSaIxED2Ev:
.LFB2674:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2674:
	.size	_ZNSaIxED2Ev, .-_ZNSaIxED2Ev
	.weak	_ZNSaIxED1Ev
	.set	_ZNSaIxED1Ev,_ZNSaIxED2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEEC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEEC2Ev:
.LFB2677:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2677
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
.LEHE12:
	jmp	.L149
.L148:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB13:
	call	_Unwind_Resume@PLT
.LEHE13:
.L149:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2677:
	.section	.gcc_except_table
.LLSDA2677:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2677-.LLSDACSB2677
.LLSDACSB2677:
	.uleb128 .LEHB12-.LFB2677
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L148-.LFB2677
	.uleb128 0
	.uleb128 .LEHB13-.LFB2677
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
.LLSDACSE2677:
	.section	.text._ZNSt11_Deque_baseIxSaIxEEC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEEC5Ev,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEEC2Ev, .-_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEEC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEEC1Ev,_ZNSt11_Deque_baseIxSaIxEEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, @function
_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_:
.LFB2679:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.L152:
	movq	-8(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jnb	.L153
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	addq	$8, -8(%rbp)
	jmp	.L152
.L153:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2679:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, @function
_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm:
.LFB2680:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2680
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-9(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	leaq	-9(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	leaq	-9(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPxED1Ev
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L155
	call	__stack_chk_fail@PLT
.L155:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2680:
	.section	.gcc_except_table
.LLSDA2680:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2680-.LLSDACSB2680
.LLSDACSB2680:
.LLSDACSE2680:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	.section	.text._ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB2683:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2683:
	.size	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt5dequeIxSaIxEE12emplace_backIJxEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIxSaIxEE12emplace_backIJxEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE12emplace_backIJxEEEvDpOT_
	.type	_ZNSt5dequeIxSaIxEE12emplace_backIJxEEEvDpOT_, @function
_ZNSt5dequeIxSaIxEE12emplace_backIJxEEEvDpOT_:
.LFB2682:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	64(%rax), %rax
	subq	$8, %rax
	cmpq	%rax, %rdx
	je	.L159
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	leaq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 48(%rax)
	jmp	.L161
.L159:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_
.L161:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2682:
	.size	_ZNSt5dequeIxSaIxEE12emplace_backIJxEEEvDpOT_, .-_ZNSt5dequeIxSaIxEE12emplace_backIJxEEEvDpOT_
	.section	.text._ZSteqIxRxPxEbRKSt15_Deque_iteratorIT_T0_T1_ES8_,"axG",@progbits,_ZSteqIxRxPxEbRKSt15_Deque_iteratorIT_T0_T1_ES8_,comdat
	.weak	_ZSteqIxRxPxEbRKSt15_Deque_iteratorIT_T0_T1_ES8_
	.type	_ZSteqIxRxPxEbRKSt15_Deque_iteratorIT_T0_T1_ES8_, @function
_ZSteqIxRxPxEbRKSt15_Deque_iteratorIT_T0_T1_ES8_:
.LFB2684:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	sete	%al
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2684:
	.size	_ZSteqIxRxPxEbRKSt15_Deque_iteratorIT_T0_T1_ES8_, .-_ZSteqIxRxPxEbRKSt15_Deque_iteratorIT_T0_T1_ES8_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEmmEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEmmEv,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.type	_ZNSt15_Deque_iteratorIxRxPxEmmEv, @function
_ZNSt15_Deque_iteratorIxRxPxEmmEv:
.LFB2685:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	cmpq	%rax, %rdx
	jne	.L165
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
.L165:
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2685:
	.size	_ZNSt15_Deque_iteratorIxRxPxEmmEv, .-_ZNSt15_Deque_iteratorIxRxPxEmmEv
	.section	.text._ZNKSt15_Deque_iteratorIxRxPxEdeEv,"axG",@progbits,_ZNKSt15_Deque_iteratorIxRxPxEdeEv,comdat
	.align 2
	.weak	_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.type	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, @function
_ZNKSt15_Deque_iteratorIxRxPxEdeEv:
.LFB2686:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2686:
	.size	_ZNKSt15_Deque_iteratorIxRxPxEdeEv, .-_ZNKSt15_Deque_iteratorIxRxPxEdeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_:
.LFB2687:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKxEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L172
	movq	%rbx, (%rax)
.L172:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2687:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJRKxEEEvPT_DpOT0_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_, @function
_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_:
.LFB2689:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2689:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_, .-_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_,_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC2ERKS1_
	.section	.text._ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc:
.LFB2691:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L175
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L175:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE4sizeEv
	cmpq	%rax, -32(%rbp)
	jb	.L176
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	cmpq	%rax, -32(%rbp)
	jbe	.L177
.L176:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	jmp	.L178
.L177:
	movq	-32(%rbp), %rax
.L178:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L180
	call	__stack_chk_fail@PLT
.L180:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2691:
	.size	_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc, .-_ZNKSt6vectorIxSaIxEE12_M_check_lenEmPKc
	.section	.text._ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,"axG",@progbits,_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_,comdat
	.weak	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.type	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, @function
_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_:
.LFB2692:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	(%rax), %rax
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	(%rax), %rax
	subq	%rax, %rbx
	movq	%rbx, %rax
	sarq	$3, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2692:
	.size	_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, .-_ZN9__gnu_cxxmiIPxSt6vectorIxSaIxEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_
	.section	.text._ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm:
.LFB2693:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L184
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	jmp	.L186
.L184:
	movl	$0, %eax
.L186:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2693:
	.size	_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm, .-_ZNSt12_Vector_baseIxSaIxEE11_M_allocateEm
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv:
.LFB2694:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2694:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_:
.LFB2695:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPxES1_xET0_T_S4_S3_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2695:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPxS0_SaIxEET0_T_S3_S2_RT1_
	.section	.text._ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, @function
_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_:
.LFB2696:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2696:
	.size	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_, .-_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	.section	.text._ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,"axG",@progbits,_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.type	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, @function
_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv:
.LFB2697:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	subq	$8, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	leaq	-8(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	movq	-24(%rbp), %rax
	movq	48(%rax), %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE7destroyIxEEvRS0_PT_
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2697:
	.size	_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv, .-_ZNSt5dequeIxSaIxEE15_M_pop_back_auxEv
	.section	.text._ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.type	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, @function
_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm:
.LFB2698:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2698:
	.size	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm, .-_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	.section	.text._ZSt18__do_alloc_on_copyISaIxEEvRT_RKS1_St17integral_constantIbLb0EE,"axG",@progbits,_ZSt18__do_alloc_on_copyISaIxEEvRT_RKS1_St17integral_constantIbLb0EE,comdat
	.weak	_ZSt18__do_alloc_on_copyISaIxEEvRT_RKS1_St17integral_constantIbLb0EE
	.type	_ZSt18__do_alloc_on_copyISaIxEEvRT_RKS1_St17integral_constantIbLb0EE, @function
_ZSt18__do_alloc_on_copyISaIxEEvRT_RKS1_St17integral_constantIbLb0EE:
.LFB2699:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2699:
	.size	_ZSt18__do_alloc_on_copyISaIxEEvRT_RKS1_St17integral_constantIbLb0EE, .-_ZSt18__do_alloc_on_copyISaIxEEvRT_RKS1_St17integral_constantIbLb0EE
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_:
.LFB2701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2701:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEC2ERKS2_
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E:
.LFB2703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2703:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxxET0_T_SA_S9_RSaIT1_E
	.section	.text._ZSt8_DestroyIPxEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPxEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPxEvT_S1_
	.type	_ZSt8_DestroyIPxEvT_S1_, @function
_ZSt8_DestroyIPxEvT_S1_:
.LFB2704:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2704:
	.size	_ZSt8_DestroyIPxEvT_S1_, .-_ZSt8_DestroyIPxEvT_S1_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_:
.LFB2705:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2705:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET1_T0_SB_SA_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET1_T0_SB_SA_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET1_T0_SB_SA_
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET1_T0_SB_SA_, @function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET1_T0_SB_SA_:
.LFB2706:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_
	movq	%rax, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEC1ERKS1_
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L203
	call	__stack_chk_fail@PLT
.L203:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2706:
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET1_T0_SB_SA_, .-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEENS1_IPxS6_EEET1_T0_SB_SA_
	.section	.text._ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_
	.type	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_, @function
_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_:
.LFB2707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEEvT_S9_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2707:
	.size	_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_, .-_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEvT_S7_
	.section	.text._ZSt12__miter_baseIPxET_S1_,"axG",@progbits,_ZSt12__miter_baseIPxET_S1_,comdat
	.weak	_ZSt12__miter_baseIPxET_S1_
	.type	_ZSt12__miter_baseIPxET_S1_, @function
_ZSt12__miter_baseIPxET_S1_:
.LFB2708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2708:
	.size	_ZSt12__miter_baseIPxET_S1_, .-_ZSt12__miter_baseIPxET_S1_
	.section	.text._ZSt14__copy_move_a2ILb0EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPxS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPxS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb0EPxS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb0EPxS0_ET1_T0_S2_S1_:
.LFB2709:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPxET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPxET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPxET_S1_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb0EPxS0_ET1_T0_S2_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2709:
	.size	_ZSt14__copy_move_a2ILb0EPxS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb0EPxS0_ET1_T0_S2_S1_
	.section	.text._ZSt18uninitialized_copyIPxS0_ET0_T_S2_S1_,"axG",@progbits,_ZSt18uninitialized_copyIPxS0_ET0_T_S2_S1_,comdat
	.weak	_ZSt18uninitialized_copyIPxS0_ET0_T_S2_S1_
	.type	_ZSt18uninitialized_copyIPxS0_ET0_T_S2_S1_, @function
_ZSt18uninitialized_copyIPxS0_ET0_T_S2_S1_:
.LFB2710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPxS2_EET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2710:
	.size	_ZSt18uninitialized_copyIPxS0_ET0_T_S2_S1_, .-_ZSt18uninitialized_copyIPxS0_ET0_T_S2_S1_
	.section	.text._ZNSaIxEC2Ev,"axG",@progbits,_ZNSaIxEC5Ev,comdat
	.align 2
	.weak	_ZNSaIxEC2Ev
	.type	_ZNSaIxEC2Ev, @function
_ZNSaIxEC2Ev:
.LFB2742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2742:
	.size	_ZNSaIxEC2Ev, .-_ZNSaIxEC2Ev
	.weak	_ZNSaIxEC1Ev
	.set	_ZNSaIxEC1Ev,_ZNSaIxEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxED2Ev:
.LFB2745:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2745:
	.size	_ZN9__gnu_cxx13new_allocatorIxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxED1Ev,_ZN9__gnu_cxx13new_allocatorIxED2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC5Ev,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.type	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, @function
_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev:
.LFB2748:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIxEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2748:
	.size	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev, .-_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.weak	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev
	.set	_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC1Ev,_ZNSt11_Deque_baseIxSaIxEE11_Deque_implC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, @function
_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm:
.LFB2750:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2750
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rbx
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	addq	$2, %rax
	movq	%rax, -56(%rbp)
	movq	$8, -64(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
.LEHE14:
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	-48(%rbp), %rax
	shrq	%rax
	salq	$3, %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
.LEHE15:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-32(%rbp), %rdx
	subq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-72(%rbp), %rax
	movq	24(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-72(%rbp), %rax
	movq	56(%rax), %rbx
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	movq	%rax, %rcx
	movq	-80(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rdx, %rax
	salq	$3, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 48(%rax)
	nop
	movq	-24(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L217
	jmp	.L220
.L218:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-72(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	movq	-72(%rbp), %rax
	movq	$0, (%rax)
	movq	-72(%rbp), %rax
	movq	$0, 8(%rax)
.LEHB16:
	call	__cxa_rethrow@PLT
.LEHE16:
.L219:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB17:
	call	_Unwind_Resume@PLT
.LEHE17:
.L220:
	call	__stack_chk_fail@PLT
.L217:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2750:
	.section	.gcc_except_table
	.align 4
.LLSDA2750:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2750-.LLSDATTD2750
.LLSDATTD2750:
	.byte	0x1
	.uleb128 .LLSDACSE2750-.LLSDACSB2750
.LLSDACSB2750:
	.uleb128 .LEHB14-.LFB2750
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB15-.LFB2750
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L218-.LFB2750
	.uleb128 0x1
	.uleb128 .LEHB16-.LFB2750
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L219-.LFB2750
	.uleb128 0
	.uleb128 .LEHB17-.LFB2750
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
.LLSDACSE2750:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2750:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE17_M_initialize_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.type	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, @function
_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx:
.LFB2751:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE10deallocateERS0_Pxm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2751:
	.size	_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx, .-_ZNSt11_Deque_baseIxSaIxEE18_M_deallocate_nodeEPx
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, @function
_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv:
.LFB2752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIPxEC1IxEERKSaIT_E
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2752:
	.size	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	.section	.text._ZNSaIPxED2Ev,"axG",@progbits,_ZNSaIPxED5Ev,comdat
	.align 2
	.weak	_ZNSaIPxED2Ev
	.type	_ZNSaIPxED2Ev, @function
_ZNSaIPxED2Ev:
.LFB2754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2754:
	.size	_ZNSaIPxED2Ev, .-_ZNSaIPxED2Ev
	.weak	_ZNSaIPxED1Ev
	.set	_ZNSaIPxED1Ev,_ZNSaIPxED2Ev
	.section	.text._ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.type	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, @function
_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m:
.LFB2759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2759:
	.size	_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m, .-_ZNSt16allocator_traitsISaIPxEE10deallocateERS1_PS0_m
	.section	.text._ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_:
.LFB2761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2761:
	.size	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	.section	.text._ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_,"axG",@progbits,_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_
	.type	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_, @function
_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_:
.LFB2762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	leaq	8(%rdx), %rbx
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	movq	%rax, (%rbx)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	48(%rax), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE9constructIxJxEEEvRS0_PT_DpOT0_
	movq	-24(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 48(%rax)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2762:
	.size	_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_, .-_ZNSt5dequeIxSaIxEE16_M_push_back_auxIJxEEEvDpOT_
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.type	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, @function
_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_:
.LFB2763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 24(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rbx
	call	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	salq	$3, %rax
	leaq	(%rbx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2763:
	.size	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_, .-_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	.section	.text._ZNKSt6vectorIxSaIxEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorIxSaIxEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.type	_ZNKSt6vectorIxSaIxEE8max_sizeEv, @function
_ZNKSt6vectorIxSaIxEE8max_sizeEv:
.LFB2764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2764:
	.size	_ZNKSt6vectorIxSaIxEE8max_sizeEv, .-_ZNKSt6vectorIxSaIxEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIxEE8allocateERS0_m:
.LFB2765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2765:
	.size	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	.section	.text._ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_
	.type	_ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_, @function
_ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_:
.LFB2766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIPxEC1ES0_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L235
	call	__stack_chk_fail@PLT
.L235:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2766:
	.size	_ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_, .-_ZSt32__make_move_if_noexcept_iteratorIxSt13move_iteratorIPxEET0_PT_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPxES1_xET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPxES1_xET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPxES1_xET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPxES1_xET0_T_S4_S3_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPxES1_xET0_T_S4_S3_RSaIT1_E:
.LFB2767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyISt13move_iteratorIPxES1_ET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2767:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPxES1_xET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPxES1_xET0_T_S4_S3_RSaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_:
.LFB2768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2768:
	.size	_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_, .-_ZN9__gnu_cxx13new_allocatorIxE7destroyIxEEvPT_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.type	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, @function
_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm:
.LFB2769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2769:
	.size	_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm, .-_ZN9__gnu_cxx13new_allocatorIxE10deallocateEPxm
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_:
.LFB2770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2770:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_:
.LFB2771:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2771:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPxEEvT_S3_
	.section	.text._ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.type	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, @function
_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE:
.LFB2772:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2772:
	.size	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, .-_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	.section	.text._ZSt12__niter_baseIPxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,"axG",@progbits,_ZSt12__niter_baseIPxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE,comdat
	.weak	_ZSt12__niter_baseIPxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.type	_ZSt12__niter_baseIPxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, @function
_ZSt12__niter_baseIPxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE:
.LFB2773:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2773:
	.size	_ZSt12__niter_baseIPxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, .-_ZSt12__niter_baseIPxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE
	.section	.text._ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_, @function
_ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_:
.LFB2774:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2774:
	.size	_ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEEvT_S9_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEEvT_S9_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEEvT_S9_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEEvT_S9_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEEvT_S9_:
.LFB2775:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2775:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEEvT_S9_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPxSt6vectorIxSaIxEEEEEEvT_S9_
	.section	.text._ZSt12__niter_baseIPxET_S1_,"axG",@progbits,_ZSt12__niter_baseIPxET_S1_,comdat
	.weak	_ZSt12__niter_baseIPxET_S1_
	.type	_ZSt12__niter_baseIPxET_S1_, @function
_ZSt12__niter_baseIPxET_S1_:
.LFB2776:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2776:
	.size	_ZSt12__niter_baseIPxET_S1_, .-_ZSt12__niter_baseIPxET_S1_
	.section	.text._ZSt13__copy_move_aILb0EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb0EPxS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb0EPxS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb0EPxS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb0EPxS0_ET1_T0_S2_S1_:
.LFB2777:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2777:
	.size	_ZSt13__copy_move_aILb0EPxS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb0EPxS0_ET1_T0_S2_S1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPxS2_EET0_T_S4_S3_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPxS2_EET0_T_S4_S3_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPxS2_EET0_T_S4_S3_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPxS2_EET0_T_S4_S3_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPxS2_EET0_T_S4_S3_:
.LFB2778:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPxS0_ET0_T_S2_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2778:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPxS2_EET0_T_S4_S3_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPxS2_EET0_T_S4_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIxEC2Ev:
.LFB2812:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2812:
	.size	_ZN9__gnu_cxx13new_allocatorIxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIxEC1Ev,_ZN9__gnu_cxx13new_allocatorIxEC2Ev
	.section	.text._ZNSt15_Deque_iteratorIxRxPxEC2Ev,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxEC5Ev,comdat
	.align 2
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.type	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, @function
_ZNSt15_Deque_iteratorIxRxPxEC2Ev:
.LFB2815:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2815:
	.size	_ZNSt15_Deque_iteratorIxRxPxEC2Ev, .-_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.weak	_ZNSt15_Deque_iteratorIxRxPxEC1Ev
	.set	_ZNSt15_Deque_iteratorIxRxPxEC1Ev,_ZNSt15_Deque_iteratorIxRxPxEC2Ev
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, @function
_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm:
.LFB2817:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2817
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-25(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt11_Deque_baseIxSaIxEE20_M_get_map_allocatorEv
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
.LEHE18:
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPxED1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L261
	jmp	.L263
.L262:
	movq	%rax, %rbx
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIPxED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB19:
	call	_Unwind_Resume@PLT
.LEHE19:
.L263:
	call	__stack_chk_fail@PLT
.L261:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2817:
	.section	.gcc_except_table
.LLSDA2817:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2817-.LLSDACSB2817
.LLSDACSB2817:
	.uleb128 .LEHB18-.LFB2817
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L262-.LFB2817
	.uleb128 0
	.uleb128 .LEHB19-.LFB2817
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE2817:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm, .-_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.type	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, @function
_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_:
.LFB2818:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2818
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
.L266:
	movq	-24(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jnb	.L271
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
.LEHB20:
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
.LEHE20:
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	addq	$8, -24(%rbp)
	jmp	.L266
.L269:
	movq	%rax, %rdi
	call	__cxa_begin_catch@PLT
	movq	-24(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE16_M_destroy_nodesEPPxS3_
.LEHB21:
	call	__cxa_rethrow@PLT
.LEHE21:
.L270:
	movq	%rax, %rbx
	call	__cxa_end_catch@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB22:
	call	_Unwind_Resume@PLT
.LEHE22:
.L271:
	nop
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2818:
	.section	.gcc_except_table
	.align 4
.LLSDA2818:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT2818-.LLSDATTD2818
.LLSDATTD2818:
	.byte	0x1
	.uleb128 .LLSDACSE2818-.LLSDACSB2818
.LLSDACSB2818:
	.uleb128 .LEHB20-.LFB2818
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L269-.LFB2818
	.uleb128 0x1
	.uleb128 .LEHB21-.LFB2818
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L270-.LFB2818
	.uleb128 0
	.uleb128 .LEHB22-.LFB2818
	.uleb128 .LEHE22-.LEHB22
	.uleb128 0
	.uleb128 0
.LLSDACSE2818:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT2818:
	.section	.text._ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_,comdat
	.size	_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_, .-_ZNSt11_Deque_baseIxSaIxEE15_M_create_nodesEPPxS3_
	.section	.text._ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, @function
_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv:
.LFB2819:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2819:
	.size	_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv, .-_ZNKSt11_Deque_baseIxSaIxEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaIPxEC2IxEERKSaIT_E,"axG",@progbits,_ZNSaIPxEC5IxEERKSaIT_E,comdat
	.align 2
	.weak	_ZNSaIPxEC2IxEERKSaIT_E
	.type	_ZNSaIPxEC2IxEERKSaIT_E, @function
_ZNSaIPxEC2IxEERKSaIT_E:
.LFB2821:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2821:
	.size	_ZNSaIPxEC2IxEERKSaIT_E, .-_ZNSaIPxEC2IxEERKSaIT_E
	.weak	_ZNSaIPxEC1IxEERKSaIT_E
	.set	_ZNSaIPxEC1IxEERKSaIT_E,_ZNSaIPxEC2IxEERKSaIT_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPxED2Ev:
.LFB2824:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2824:
	.size	_ZN9__gnu_cxx13new_allocatorIPxED2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxED1Ev,_ZN9__gnu_cxx13new_allocatorIPxED2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.type	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, @function
_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m:
.LFB2829:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2829:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m, .-_ZN9__gnu_cxx13new_allocatorIPxE10deallocateEPS1_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_:
.LFB2830:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIxEOT_RNSt16remove_referenceIS0_E4typeE
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$8, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L280
	movq	%rbx, (%rax)
.L280:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2830:
	.size	_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorIxE9constructIxJxEEEvPT_DpOT0_
	.section	.text._ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,"axG",@progbits,_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.type	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, @function
_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm:
.LFB2831:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	1(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rsi
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rsi
	movq	%rsi, %rax
	sarq	$3, %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	cmpq	%rax, %rcx
	jbe	.L283
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
.L283:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2831:
	.size	_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm, .-_ZNSt5dequeIxSaIxEE22_M_reserve_map_at_backEm
	.section	.text._ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,"axG",@progbits,_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv,comdat
	.align 2
	.weak	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.type	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, @function
_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv:
.LFB2832:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIxEE8allocateERS0_m
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2832:
	.size	_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv, .-_ZNSt11_Deque_baseIxSaIxEE16_M_allocate_nodeEv
	.section	.text._ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,"axG",@progbits,_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv,comdat
	.weak	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.type	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, @function
_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv:
.LFB2833:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$8, %edi
	call	_ZSt16__deque_buf_sizem
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2833:
	.size	_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv, .-_ZNSt15_Deque_iteratorIxRxPxE14_S_buffer_sizeEv
	.section	.text._ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_:
.LFB2834:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2834:
	.size	_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIxEE8max_sizeERKS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv:
.LFB2835:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	testb	%al, %al
	je	.L291
	call	_ZSt17__throw_bad_allocv@PLT
.L291:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2835:
	.size	_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIxE8allocateEmPKv
	.section	.text._ZNSt13move_iteratorIPxEC2ES0_,"axG",@progbits,_ZNSt13move_iteratorIPxEC5ES0_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPxEC2ES0_
	.type	_ZNSt13move_iteratorIPxEC2ES0_, @function
_ZNSt13move_iteratorIPxEC2ES0_:
.LFB2837:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2837:
	.size	_ZNSt13move_iteratorIPxEC2ES0_, .-_ZNSt13move_iteratorIPxEC2ES0_
	.weak	_ZNSt13move_iteratorIPxEC1ES0_
	.set	_ZNSt13move_iteratorIPxEC1ES0_,_ZNSt13move_iteratorIPxEC2ES0_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPxES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPxES1_ET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPxES1_ET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPxES1_ET0_T_S4_S3_, @function
_ZSt18uninitialized_copyISt13move_iteratorIPxES1_ET0_T_S4_S3_:
.LFB2839:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPxES3_EET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2839:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPxES1_ET0_T_S4_S3_, .-_ZSt18uninitialized_copyISt13move_iteratorIPxES1_ET0_T_S4_S3_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_:
.LFB2840:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2840:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxEET0_T_SC_SB_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv:
.LFB2841:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2841:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEE4baseEv
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_:
.LFB2842:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L301
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L301:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2842:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	.section	.text._ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,"axG",@progbits,_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m,comdat
	.weak	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.type	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, @function
_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m:
.LFB2867:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2867:
	.size	_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m, .-_ZNSt16allocator_traitsISaIPxEE8allocateERS1_m
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIPxEC2Ev:
.LFB2869:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2869:
	.size	_ZN9__gnu_cxx13new_allocatorIPxEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIPxEC1Ev,_ZN9__gnu_cxx13new_allocatorIPxEC2Ev
	.section	.text._ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,"axG",@progbits,_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb,comdat
	.align 2
	.weak	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.type	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, @function
_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb:
.LFB2871:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movl	%edx, %eax
	movb	%al, -84(%rbp)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	addq	$1, %rax
	movq	%rax, -48(%rbp)
	movq	-80(%rbp), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	movq	-40(%rbp), %rdx
	addq	%rdx, %rdx
	cmpq	%rdx, %rax
	jbe	.L307
	movq	-72(%rbp), %rax
	movq	(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	8(%rax), %rax
	subq	-40(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rcx
	cmpb	$0, -84(%rbp)
	je	.L308
	movq	-80(%rbp), %rax
	salq	$3, %rax
	jmp	.L309
.L308:
	movl	$0, %eax
.L309:
	addq	%rcx, %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	cmpq	%rax, -56(%rbp)
	jnb	.L310
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	jmp	.L312
.L310:
	movq	-48(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-56(%rbp), %rax
	addq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	jmp	.L312
.L307:
	movq	-72(%rbp), %rax
	movq	8(%rax), %rbx
	movq	-72(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	addq	$2, %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE15_M_allocate_mapEm
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	subq	-40(%rbp), %rax
	shrq	%rax
	leaq	0(,%rax,8), %rdx
	cmpb	$0, -84(%rbp)
	je	.L313
	movq	-80(%rbp), %rax
	salq	$3, %rax
	jmp	.L314
.L313:
	movl	$0, %eax
.L314:
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movq	-72(%rbp), %rax
	movq	72(%rax), %rax
	leaq	8(%rax), %rcx
	movq	-72(%rbp), %rax
	movq	40(%rax), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	movq	-72(%rbp), %rax
	movq	-72(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-72(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11_Deque_baseIxSaIxEE17_M_deallocate_mapEPPxm
	movq	-72(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-72(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
.L312:
	movq	-72(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	movq	-72(%rbp), %rax
	addq	$48, %rax
	movq	-48(%rbp), %rdx
	salq	$3, %rdx
	leaq	-8(%rdx), %rcx
	movq	-56(%rbp), %rdx
	addq	%rcx, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15_Deque_iteratorIxRxPxE11_M_set_nodeEPS1_
	nop
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2871:
	.size	_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb, .-_ZNSt5dequeIxSaIxEE17_M_reallocate_mapEmb
	.section	.text._ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv:
.LFB2872:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2872:
	.size	_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIxE8max_sizeEv
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPxES3_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPxES3_EET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPxES3_EET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPxES3_EET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPxES3_EET0_T_S6_S5_:
.LFB2873:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyISt13move_iteratorIPxES1_ET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2873:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPxES3_EET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPxES3_EET0_T_S6_S5_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_:
.LFB2874:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEET_S8_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2874:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET0_T_SA_S9_
	.section	.text._ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv:
.LFB2883:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIPxE8max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	testb	%al, %al
	je	.L322
	call	_ZSt17__throw_bad_allocv@PLT
.L322:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2883:
	.size	_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIPxE8allocateEmPKv
	.section	.text._ZSt4copyIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4copyIPPxS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.type	_ZSt4copyIPPxS1_ET0_T_S3_S2_, @function
_ZSt4copyIPPxS1_ET0_T_S3_S2_:
.LFB2884:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPxET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPxET_S2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2884:
	.size	_ZSt4copyIPPxS1_ET0_T_S3_S2_, .-_ZSt4copyIPPxS1_ET0_T_S3_S2_
	.section	.text._ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.type	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, @function
_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_:
.LFB2885:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPxET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPPxET_S2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2885:
	.size	_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_, .-_ZSt13copy_backwardIPPxS1_ET0_T_S3_S2_
	.section	.text._ZSt4copyISt13move_iteratorIPxES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyISt13move_iteratorIPxES1_ET0_T_S4_S3_,comdat
	.weak	_ZSt4copyISt13move_iteratorIPxES1_ET0_T_S4_S3_
	.type	_ZSt4copyISt13move_iteratorIPxES1_ET0_T_S4_S3_, @function
_ZSt4copyISt13move_iteratorIPxES1_ET0_T_S4_S3_:
.LFB2886:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb1EPxS0_ET1_T0_S2_S1_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2886:
	.size	_ZSt4copyISt13move_iteratorIPxES1_ET0_T_S4_S3_, .-_ZSt4copyISt13move_iteratorIPxES1_ET0_T_S4_S3_
	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_, @function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_:
.LFB2887:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPxET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKxSt6vectorIxSaIxEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb0EPKxPxET1_T0_S4_S3_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2887:
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_, .-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKxSt6vectorIxSaIxEEEEPxET1_T0_SA_S9_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIPxE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIPxE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIPxE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIPxE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIPxE8max_sizeEv:
.LFB2890:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$2305843009213693951, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2890:
	.size	_ZNK9__gnu_cxx13new_allocatorIPxE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIPxE8max_sizeEv
	.section	.text._ZSt12__miter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__miter_baseIPPxET_S2_,comdat
	.weak	_ZSt12__miter_baseIPPxET_S2_
	.type	_ZSt12__miter_baseIPPxET_S2_, @function
_ZSt12__miter_baseIPPxET_S2_:
.LFB2891:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2891:
	.size	_ZSt12__miter_baseIPPxET_S2_, .-_ZSt12__miter_baseIPPxET_S2_
	.section	.text._ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB2892:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPxET_S2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPxET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPxET_S2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2892:
	.size	_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt14__copy_move_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_:
.LFB2893:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPxET_S2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPxET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPPxET_S2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2893:
	.size	_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt23__copy_move_backward_a2ILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,"axG",@progbits,_ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E,comdat
	.weak	_ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.type	_ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E, @function
_ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E:
.LFB2894:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPxE4baseEv
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPxET_S1_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2894:
	.size	_ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E, .-_ZSt12__miter_baseIPxEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E
	.section	.text._ZSt14__copy_move_a2ILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EPxS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb1EPxS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb1EPxS0_ET1_T0_S2_S1_:
.LFB2895:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPxET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPxET_S1_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPxET_S1_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb1EPxS0_ET1_T0_S2_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2895:
	.size	_ZSt14__copy_move_a2ILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZSt12__niter_baseIPPxET_S2_,"axG",@progbits,_ZSt12__niter_baseIPPxET_S2_,comdat
	.weak	_ZSt12__niter_baseIPPxET_S2_
	.type	_ZSt12__niter_baseIPPxET_S2_, @function
_ZSt12__niter_baseIPPxET_S2_:
.LFB2896:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2896:
	.size	_ZSt12__niter_baseIPPxET_S2_, .-_ZSt12__niter_baseIPPxET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_:
.LFB2897:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2897:
	.size	_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt13__copy_move_aILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.type	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, @function
_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_:
.LFB2898:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2898:
	.size	_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_, .-_ZSt22__copy_move_backward_aILb0EPPxS1_ET1_T0_S3_S2_
	.section	.text._ZNKSt13move_iteratorIPxE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPxE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPxE4baseEv
	.type	_ZNKSt13move_iteratorIPxE4baseEv, @function
_ZNKSt13move_iteratorIPxE4baseEv:
.LFB2899:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2899:
	.size	_ZNKSt13move_iteratorIPxE4baseEv, .-_ZNKSt13move_iteratorIPxE4baseEv
	.section	.text._ZSt13__copy_move_aILb1EPxS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb1EPxS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb1EPxS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb1EPxS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb1EPxS0_ET1_T0_S2_S1_:
.LFB2900:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2900:
	.size	_ZSt13__copy_move_aILb1EPxS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb1EPxS0_ET1_T0_S2_S1_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_:
.LFB2901:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L355
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L355:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2901:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPxEEPT_PKS4_S7_S5_
	.section	.text._ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.type	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, @function
_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_:
.LFB2902:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L358
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	salq	$3, %rax
	negq	%rax
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	memmove@PLT
.L358:
	movq	-8(%rbp), %rax
	salq	$3, %rax
	negq	%rax
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2902:
	.size	_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_, .-_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPxEEPT_PKS4_S7_S5_
	.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_:
.LFB2903:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L361
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L361:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2903:
	.size	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIxEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2904:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L365
	cmpl	$65535, -8(%rbp)
	jne	.L365
	leaq	save(%rip), %rdi
	call	_ZNSt6vectorIxSaIxEEC1Ev
	leaq	__dso_handle(%rip), %rdx
	leaq	save(%rip), %rsi
	leaq	_ZNSt6vectorIxSaIxEED1Ev(%rip), %rdi
	call	__cxa_atexit@PLT
	leaq	tmp(%rip), %rdi
	call	_ZNSt6vectorIxSaIxEEC1Ev
	leaq	__dso_handle(%rip), %rdx
	leaq	tmp(%rip), %rsi
	leaq	_ZNSt6vectorIxSaIxEED1Ev(%rip), %rdi
	call	__cxa_atexit@PLT
.L365:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2904:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIxSaIxEED2Ev
	.type	_ZNSt6vectorIxSaIxEED2Ev, @function
_ZNSt6vectorIxSaIxEED2Ev:
.LFB2906:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2906
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPxxEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIxSaIxEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2906:
	.section	.gcc_except_table
.LLSDA2906:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2906-.LLSDACSB2906
.LLSDACSB2906:
.LLSDACSE2906:
	.section	.text._ZNSt6vectorIxSaIxEED2Ev,"axG",@progbits,_ZNSt6vectorIxSaIxEED5Ev,comdat
	.size	_ZNSt6vectorIxSaIxEED2Ev, .-_ZNSt6vectorIxSaIxEED2Ev
	.weak	_ZNSt6vectorIxSaIxEED1Ev
	.set	_ZNSt6vectorIxSaIxEED1Ev,_ZNSt6vectorIxSaIxEED2Ev
	.text
	.type	_GLOBAL__sub_I_m, @function
_GLOBAL__sub_I_m:
.LFB2908:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2908:
	.size	_GLOBAL__sub_I_m, .-_GLOBAL__sub_I_m
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_m
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
