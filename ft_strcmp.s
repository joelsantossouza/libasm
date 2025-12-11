global	ft_strcmp
ft_strcmp:
	mov	al, [rdi]
	cmp al, [rsi]
	jne	compare
	cmp al, 0
	je	equal
	add	rdi, 1
	add	rsi, 1
	jmp	ft_strcmp

compare:
	sub		al, [rsi]
	movsx	rax, al
	ret

equal:
	xor rax, rax
	ret
