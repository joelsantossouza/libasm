# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: joesanto <joesanto@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/12/09 11:27:37 by joesanto          #+#    #+#              #
#    Updated: 2025/12/11 14:51:13 by joesanto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
SRCS = ft_strlen.s
OBJS = $(SRCS:.s=.o)

AR = ar rcs
AS = nasm
FLAGS = -felf64 -g

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $@ $^

%.o: %.s
	$(AS) $(FLAGS) $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
