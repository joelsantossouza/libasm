extern	malloc

global	ft_list_push_front
ft_list_push_front:
	mov		rdx, rdi
	call	create_node
	mov		[rdx], rax

create_node:
	mov		rdi, 16
	call	malloc
	cmp		rax, 0
	je		return_return
	mov		[rax], rsi
	mov		[rax + 8], [rdx]
	ret

return_return:
	add	rsp, 8
	ret
