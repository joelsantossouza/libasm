extern	malloc
extern	ft_strlen
extern	ft_strcpy

global	ft_strdup
ft_strdup:
	mov		r12, rdi
	call	ft_strlen
	mov		rdi, 1
	add		rdi, rax
	call	malloc WRT ..plt
	cmp		rax, 0
	je		_exit
	mov		rdi, rax
	mov		rsi, r12
	call	ft_strcpy
	ret

_exit:
	ret
