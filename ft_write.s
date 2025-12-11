extern	__errno_location

global	ft_write
ft_write:
	mov	rax, 1
	syscall
	cmp	rax, 0
	jl	error_handling
	ret

error_handling:
	mov		rcx, rax
	neg		rcx
	call	__errno_location WRT ..plt
	mov		[rax], ecx
	mov		rax, -1
	ret
