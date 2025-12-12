extern	__errno_location
extern	malloc
extern	ft_strlen
extern	ft_strcpy

global	ft_strdup
ft_strdup:
	mov		rbx, rdi
	call	ft_strlen
	mov		rdi, 1
	add		rdi, rax
	call	malloc WRT ..plt
	cmp		rax, 0
	je		handle_error
	mov		rdi, rax
	mov		rsi, rbx
	call	ft_strcpy
	ret

handle_error:
	neg		rsi
	call	__errno_location WRT ..plt
	mov		[rax], esi
	xor		rax, rax
	ret
