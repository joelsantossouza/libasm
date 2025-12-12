extern	__errno_location

global	ft_read
ft_read:
	mov	rax, 0
	syscall
	cmp	rax, 0
	jl	handle_error
	ret

handle_error:
	mov		rdi, rax
	neg		rdi
	call	__errno_location WRT ..plt
	mov		[rax], edi
	mov		rax, -1
	ret
