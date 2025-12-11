global	ft_strlen
ft_strlen:
	xor	rax, rax
	jmp	iterate_str

iterate_str:
	cmp	byte [rdi + rax], 0
	je	exit
	add	rax, 1
	jmp	iterate_str

exit:
	ret
