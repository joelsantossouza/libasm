extern	free

global	ft_list_remove_if
ft_list_remove_if:
	mov	r12, rdi
	mov	r13, [rdi]
	mov	r14, rcx
	mov	r15, rdx
	cmp	rcx, 0
	je	.remove_node_if
	jne	.remove_node_and_content_if

.remove_node_if:
	lea	rbx, [rel _free_node]
	jmp	iterate_list

.remove_node_and_content_if:
	lea	rbx, [rel _free_content]
	jmp	iterate_list

iterate_list:
	cmp		r13, 0
	je		return

	mov		rdi, [r13]
	call	r15
	cmp		eax, 0
	jne		next_node

	jmp		rbx
_free_node:
	mov		rdi, r13
	mov		r13, [r13 + 8]
	mov		[r12], r13
	call	free WRT ..plt
	jmp		iterate_list

	mov		r13, [r12]
	jmp		iterate_list

_free_content:
	mov		rdi, [r13]
	call	r14
	jmp		_free_node

next_node:
	lea	r12, [r13 + 8]
	mov	r13, [r12]
	jmp	iterate_list

return:
	ret
