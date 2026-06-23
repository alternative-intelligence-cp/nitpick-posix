	.file	"ls_rec_test.npk"
	.text
	.weak	mem_utils.str_clone
	.p2align	4
	.type	mem_utils.str_clone,@function
mem_utils.str_clone:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	callq	npk_mem_read_byte@PLT
	testq	%rax, %rax
	je	.LBB0_3
	xorl	%ebx, %ebx
	.p2align	4
.LBB0_2:
	incq	%rbx
	callq	npk_gc_safepoint@PLT
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	npk_mem_read_byte@PLT
	testq	%rax, %rax
	jne	.LBB0_2
.LBB0_3:
	leaq	1(%rbx), %rdi
	callq	malloc@PLT
	movq	%rax, %r15
	testq	%rbx, %rbx
	jle	.LBB0_6
	xorl	%r12d, %r12d
	.p2align	4
.LBB0_5:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	npk_mem_read_byte@PLT
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	npk_mem_write_byte@PLT
	incq	%r12
	callq	npk_gc_safepoint@PLT
	cmpq	%r12, %rbx
	jne	.LBB0_5
.LBB0_6:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	npk_mem_write_byte@PLT
	movq	%r15, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	mem_utils.str_clone, .Lfunc_end0-mem_utils.str_clone
	.cfi_endproc

	.weak	singly.slist_create
	.p2align	4
	.type	singly.slist_create,@function
singly.slist_create:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	callq	npk_handle_arena_create@PLT
	movq	%rax, %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	callq	npk_handle_alloc@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	npk_handle_deref@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$24, %esi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%r14, %rax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	singly.slist_create, .Lfunc_end1-singly.slist_create
	.cfi_endproc

	.weak	singly.slist_push_back
	.p2align	4
	.type	singly.slist_push_back,@function
singly.slist_push_back:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	npk_handle_deref@PLT
	movl	$24, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	callq	npk_handle_alloc@PLT
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	npk_handle_deref@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%rbx, %rdi
	callq	npk_handle_deref@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	xorl	%r15d, %r15d
	testq	%rax, %rax
	setne	%r15b
	cmoveq	%rbx, %rax
	shll	$3, %r15d
	movq	%rax, %rdi
	callq	npk_handle_deref@PLT
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%rbx, %rdi
	callq	npk_handle_deref@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%rbx, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	leaq	1(%rax), %r14
	movq	%rbx, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	nitpick_libc_mem_write_i64@PLT
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	singly.slist_push_back, .Lfunc_end2-singly.slist_push_back
	.cfi_endproc

	.weak	singly.slist_pop_front
	.p2align	4
	.type	singly.slist_pop_front,@function
singly.slist_pop_front:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	callq	npk_handle_deref@PLT
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	nitpick_libc_mem_read_i64@PLT
	testq	%rax, %rax
	je	.LBB3_1
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	npk_handle_deref@PLT
	xorl	%ebx, %ebx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	nitpick_libc_mem_read_i64@PLT
	movq	%rax, %r12
	movq	%r15, %rdi
	callq	npk_handle_deref@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	movq	%rax, %r13
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	nitpick_libc_mem_write_i64@PLT
	testq	%r13, %r13
	jne	.LBB3_5
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	nitpick_libc_mem_write_i64@PLT
.LBB3_5:
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	leaq	-1(%rax), %r13
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	movq	%r13, %rdx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%r15, %rdi
	callq	npk_handle_free@PLT
	jmp	.LBB3_2
.LBB3_1:
	movq	$-1, %r12
.LBB3_2:
	xorl	%ecx, %ecx
	movq	%r12, %rax
	movq	%rbx, %rdx
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	singly.slist_pop_front, .Lfunc_end3-singly.slist_pop_front
	.cfi_endproc

	.weak	singly.slist_clear
	.p2align	4
	.type	singly.slist_clear,@function
singly.slist_clear:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	callq	npk_handle_deref@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	nitpick_libc_mem_read_i64@PLT
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	testq	%rax, %rax
	jle	.LBB4_4
	movq	%rax, %r15
	.p2align	4
.LBB4_2:
	testq	%r14, %r14
	je	.LBB4_5
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	npk_handle_free@PLT
	callq	npk_gc_safepoint@PLT
	movq	%r12, %r14
	decq	%r15
	jne	.LBB4_2
.LBB4_4:
	movq	%rbx, %rdi
	callq	npk_handle_deref@PLT
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%rbx, %rdi
	callq	npk_handle_deref@PLT
	movl	$8, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	nitpick_libc_mem_write_i64@PLT
	movq	%rbx, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	nitpick_libc_mem_write_i64@PLT
.LBB4_5:
	xorl	%eax, %eax
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	singly.slist_clear, .Lfunc_end4-singly.slist_clear
	.cfi_endproc

	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ebp
	xorl	%r12d, %r12d
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	npk_gc_init@PLT
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	npk_args_init@PLT
	callq	npk_streams_init@PLT
	leaq	.L.str.data.5(%rip), %rdi
	movl	$2, %eax
	movl	$65536, %esi
	xorl	%edx, %edx
	#APP
	syscall
	#NO_APP
	movq	%rax, %r14
	testq	%rax, %rax
	cmovleq	%r12, %r14
	movq	$-1, %rbx
	cmovsq	%rbx, %r14
	movl	$9, %eax
	movl	$32768, %esi
	movl	$3, %edx
	movl	$34, %r10d
	xorl	%edi, %edi
	movq	$-1, %r8
	xorl	%r9d, %r9d
	#APP
	syscall
	#NO_APP
	movq	%rax, %r15
	testq	%rax, %rax
	cmovleq	%r12, %r15
	cmovsq	%rbx, %r15
	callq	singly.slist_create@PLT
	movq	%rax, %rcx
	movl	$217, %eax
	movl	$32768, %edx
	movq	%r14, 8(%rsp)
	movq	%r14, %rdi
	movq	%rcx, %r14
	movq	%r15, %rsi
	#APP
	syscall
	#NO_APP
	testq	%rax, %rax
	cmovgq	%rax, %r12
	cmovsq	%rbx, %r12
	movq	%r12, 24(%rsp)
	testq	%r12, %r12
	jle	.LBB5_10
	leaq	20(%r15), %rax
	movq	%rax, 16(%rsp)
	xorl	%r13d, %r13d
	movq	%r14, (%rsp)
	jmp	.LBB5_2
	.p2align	4
.LBB5_8:
	movl	$1, %eax
	movl	$8, %edx
	leaq	.L.str.data.9(%rip), %rsi
	#APP
	syscall
	#NO_APP
	movq	(%rsp), %r14
.LBB5_9:
	addq	%rbx, %r13
	callq	npk_gc_safepoint@PLT
	cmpq	24(%rsp), %r13
	jge	.LBB5_10
.LBB5_2:
	movq	17(%r13,%r15), %rbx
	movq	18(%r13,%r15), %rax
	movq	%rax, 32(%rsp)
	shlq	$8, %rbx
	orq	16(%r13,%r15), %rbx
	movq	%r15, %r12
	cmpq	$0, 19(%r13,%r15)
	je	.LBB5_3
	movq	16(%rsp), %rax
	leaq	(%rax,%r13), %r15
	xorl	%ebp, %ebp
	.p2align	4
.LBB5_5:
	leaq	1(%rbp), %r14
	callq	npk_gc_safepoint@PLT
	cmpq	$0, (%r15,%rbp)
	movq	%r14, %rbp
	jne	.LBB5_5
	jmp	.LBB5_6
	.p2align	4
.LBB5_3:
	xorl	%r14d, %r14d
.LBB5_6:
	movq	%r12, %r15
	leaq	(%r12,%r13), %r8
	addq	$19, %r8
	movl	$1, %eax
	movl	$1, %edi
	movq	%r8, %rsi
	movq	%r14, %rdx
	#APP
	syscall
	#NO_APP
	cmpq	$4, 32(%rsp)
	jne	.LBB5_8
	movl	$1, %eax
	movl	$7, %edx
	leaq	.L.str.data.7(%rip), %rsi
	#APP
	syscall
	#NO_APP
	movq	%r8, %rdi
	callq	mem_utils.str_clone@PLT
	movq	(%rsp), %r14
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	singly.slist_push_back@PLT
	jmp	.LBB5_9
.LBB5_10:
	leaq	.L.str.data.11(%rip), %rsi
	movl	$1, %eax
	movl	$1, %edi
	movl	$20, %edx
	#APP
	syscall
	#NO_APP
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	testq	%rax, %rax
	je	.LBB5_17
	leaq	.L.str.data.13(%rip), %r12
	jmp	.LBB5_12
	.p2align	4
.LBB5_13:
	xorl	%ebp, %ebp
.LBB5_16:
	movl	$1, %eax
	movl	$1, %edi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	#APP
	syscall
	#NO_APP
	movl	$1, %eax
	movl	$1, %edx
	movq	%r12, %rsi
	#APP
	syscall
	#NO_APP
	callq	npk_gc_safepoint@PLT
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$16, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	testq	%rax, %rax
	je	.LBB5_17
.LBB5_12:
	movq	%r14, %rdi
	callq	singly.slist_pop_front@PLT
	movq	%rax, %r13
	cmpq	$0, (%rax)
	je	.LBB5_13
	xorl	%ebx, %ebx
	.p2align	4
.LBB5_15:
	leaq	1(%rbx), %rbp
	callq	npk_gc_safepoint@PLT
	cmpq	$0, 1(%r13,%rbx)
	movq	%rbp, %rbx
	jne	.LBB5_15
	jmp	.LBB5_16
.LBB5_17:
	movq	%r14, %rdi
	callq	singly.slist_clear@PLT
	movq	%r14, %rdi
	callq	npk_handle_deref@PLT
	movl	$24, %esi
	movq	%rax, %rdi
	callq	nitpick_libc_mem_read_i64@PLT
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	npk_handle_free@PLT
	movq	%r12, %rdi
	callq	npk_handle_arena_destroy@PLT
	movl	$11, %eax
	movl	$32768, %esi
	movq	%r15, %rdi
	#APP
	syscall
	#NO_APP
	xorl	%edi, %edi
	callq	proc_exit@PLT
	movl	$3, %eax
	movq	8(%rsp), %rdi
	#APP
	syscall
	#NO_APP
	movl	$3, %eax
	#APP
	syscall
	#NO_APP
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc

	.type	.L.str.data.5,@object
	.section	.rodata,"a",@progbits
.L.str.data.5:
	.asciz	"."
	.size	.L.str.data.5, 2

	.type	.L.str.data.7,@object
.L.str.data.7:
	.asciz	" (DIR)\n"
	.size	.L.str.data.7, 8

	.type	.L.str.data.9,@object
.L.str.data.9:
	.asciz	" (FILE)\n"
	.size	.L.str.data.9, 9

	.type	.L.str.data.11,@object
	.p2align	4, 0x0
.L.str.data.11:
	.asciz	"\nDirectories found:\n"
	.size	.L.str.data.11, 21

	.type	.L.str.data.13,@object
.L.str.data.13:
	.asciz	"\n"
	.size	.L.str.data.13, 2

	.section	".note.GNU-stack","",@progbits
