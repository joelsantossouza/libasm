# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: joesanto <joesanto@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/12/09 11:37:26 by joesanto          #+#    #+#              #
#    Updated: 2025/12/11 14:44:47 by joesanto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	ft_strlen
ft_strlen:
	xor	rax, rax

iterate_str:
	cmp	[rdi + rax], 0
	je	exit
	add	rax, 1
	ret

exit:
	ret
