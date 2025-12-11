global	ft_strlen
ft_strlen:
	xor	rax, rax

iterate_str:
	cmp	byte [rdi + rax], 0
	je	exit
	add	rax, 1
	ret

exit:
	ret
