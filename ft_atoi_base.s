global	ft_atoi_base
ft_atoi_base:
	xor		rax, rax
	call	parse_base
	ret

parse_base:			; Check if the base is valid if it is, return its size
	mov		cl, [rsi + rax]
	cmp		cl, 0
	je		return

	cmp		cl, 43
	je		invalid_base

	cmp 	cl, 45
	je		invalid_base

	sub		cl, 9
	cmp		cl, 4
	jle		invalid_base

	add		cl, 9
	mov		rdx, rax
	inc		rax
	jmp		check_repetition

check_repetition:
	cmp		rdx, 0
	je		parse_base
	dec		rdx
	cmp		[rsi + rdx], cl
	je		invalid_base
	jmp		check_repetition

invalid_base:
	xor		rax, rax
	ret

return:
	ret
