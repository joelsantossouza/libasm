global	ft_atoi_base
ft_atoi_base:
	xor		rax, rax
	xor		r8, r8
	call	parse_base
	cmp		r8, 2
	jb		return
	call	skip_spaces
	call	skip_sign
	call	convert
	mul		r9
	ret

; LOOPS THROUGHT STR
skip_spaces:
	mov	cl, [rdi]
	cmp	cl, 32
	je	.increment_skip_spaces
	sub	cl, 9
	cmp	cl, 4
	jg	return
.increment_skip_spaces:
	inc	rdi
	jmp	skip_spaces

skip_sign:
	mov	r9, 1
	cmp	byte [rdi], 43
	je	increment_return
	cmp byte [rdi], 45
	jne	return
	mov	r9, -1
	jmp	increment_return

convert:
	xor		r10, r10
	call	value_in_base
	mul		r8
	add		rax, r10
	inc		rdi
	jmp		convert

value_in_base:
	mov	dl, [rsi + r10]
	cmp	dl, 0
	je	return_return
	cmp	[rdi], dl
	je	return
	inc	r10
	jmp	value_in_base

; BASE PARSING
parse_base:
	mov	cl, [rsi + r8]
	cmp	cl, 0
	je	return

	cmp	cl, 43
	je	return_return

	cmp	cl, 45
	je	return_return

	cmp	cl, 32
	je	return_return

	sub	cl, 9
	cmp	cl, 4
	jle	return_return

	add	cl, 9
	mov	rdx, r8
	inc	r8
	jmp	check_repetition

check_repetition:
	cmp	rdx, 0
	je	parse_base
	dec	rdx
	cmp	[rsi + rdx], cl
	je	return_return
	jmp	check_repetition

; UTILS
increment_return:
	inc	rdi
	ret

return_return:
	add	rsp, 8
	ret

return:
	ret
