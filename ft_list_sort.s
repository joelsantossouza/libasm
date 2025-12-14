global	ft_list_sort
ft_list_sort:
	mov		r8, [rdi]
	mov		r10, rsi
	jmp		selection_sort_list

selection_sort_list:
	mov	r9, r8
	cmp	r8, 0
	jne	find_minimum_value
	ret

find_minimum_value:
	mov		r9, [r9 + 8]
	cmp		r9, 0
	je		found_min_value
	mov		rdi, [r8]
	mov		rsi, [r9]
	call	r10
	cmp		eax, 0
	jg		swap
	jmp		find_minimum_value

found_min_value:
	mov	r8, [r8 + 8]
	jmp	selection_sort_list

swap:
	mov	rdi, [r8]
	mov	rsi, [r9]
	mov	[r8], rsi
	mov	[r9], rdi
	jmp	find_minimum_value
