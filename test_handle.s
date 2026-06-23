	.file	"test_handle.npk"
	.text
	.globl	main
	.p2align	4
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movl	%edi, %ebp
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	npk_gc_init@PLT
	movl	%ebp, %edi
	movq	%rbx, %rsi
	callq	npk_args_init@PLT
	callq	npk_streams_init@PLT
	callq	npk_handle_arena_create@PLT
	movq	%rax, %rbx
	movl	$32, %esi
	movq	%rax, %rdi
	callq	npk_handle_alloc@PLT
	movq	%rax, %rdi
	callq	npk_handle_deref@PLT
	movq	%rbx, %rdi
	callq	npk_handle_arena_destroy@PLT
	xorl	%edi, %edi
	callq	proc_exit@PLT
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.section	".note.GNU-stack","",@progbits
