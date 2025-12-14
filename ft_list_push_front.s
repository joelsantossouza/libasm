extern	malloc

global	ft_list_push_front
ft_list_push_front:
	mov		r12, rdi
	call	create_node
	mov		[r12], rax
	ret

create_node:
	mov		rdi, 16
	mov		r13, rsi
	call	malloc WRT ..plt
	cmp		rax, 0
	je		return_return
	mov		[rax], r13
	mov		r13, [r12]
	mov		[rax + 8], r13
	ret

return_return:
	add	rsp, 8
	ret
