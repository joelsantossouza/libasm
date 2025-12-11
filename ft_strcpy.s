global	ft_strcpy
ft_strcpy:
	xor	rcx, rcx
	jmp	copy

copy:
	cmp	byte [rsi + rcx], 0
	je	end_copy
	mov	al, [rsi + rcx]
	mov	[rdi + rcx], al
	add	rcx, 1
	jmp	copy

end_copy:
	mov	byte [rdi + rcx], 0
	mov	rax, rdi
	ret
