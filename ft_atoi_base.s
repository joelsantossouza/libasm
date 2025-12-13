global	ft_atoi_base
ft_atoi_base:
	xor		rax, rax
	call	parse_base
	cmp		rax, 2
	jb		return
	call	skip_spaces
	call	skip_sign
	call	convert
	mul		rax, rcx
	ret

; LOOPS THROUGHT STR
skip_spaces:
	mov	cl, [rdi]
	sub cl, 9
	cmp cl, 4
	jg	return
	inc	rdi
	jmp	skip_spaces

skip_sign:
	cmp	byte [rdi], 43
	jne	return


; BASE PARSING
parse_base:
	mov	cl, [rsi + rax]
	cmp	cl, 0
	je	return

	cmp	cl, 43
	je	invalid_base

	cmp cl, 45
	je	invalid_base

	sub	cl, 9
	cmp	cl, 4
	jle	invalid_base

	add	cl, 9
	mov	rdx, rax
	inc	rax
	jmp	check_repetition

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
