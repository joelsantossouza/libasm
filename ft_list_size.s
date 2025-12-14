global	ft_list_size
ft_list_size:
	xor		rax, rax
	call	count_nodes
	ret

count_nodes:
	cmp	rdi, 0
	jne	next_node
	ret

next_node:
	inc	rax
	mov	rdi, [rdi + 8]
	jmp	count_nodes
