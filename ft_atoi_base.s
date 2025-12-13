global	ft_atoi_base
ft_atoi_base:
	xor		rax, rax
	call	parse_base
	ret

parse_base:			; Check if the base is valid if it is, return its size
	mov		al, [rsi + rax]
	cmp		al, 0
	je		return
	inc		rax

	cmp		al, 43
	je		invalid_base

	cmp 	al, 45
	je		invalid_base

	sub		al, 9
	cmp		al, 4
	jle		invalid_base

	add		al, 9
	mov		rdx, rax
	dec		rdx
	call	check_repetition
	jmp		parse_base

check_repetition:
	cmp		rdx, 0
	je		return
	dec		rdx
	cmp		[rsi + rdx], al
	je		invalid_base
	jmp		check_repetition

invalid_base:
	xor		rax, rax
	ret

return:
	ret
