global	ft_strcpy
ft_strcpy:
	mov	rcx, rdi
	jmp	copy

copy:
	lodsb
	cmp	al, 0
	je	end_copy
	stosb
	jmp	copy

end_copy:
	mov	byte [rdi], 0
	mov	rax, rcx
	ret
