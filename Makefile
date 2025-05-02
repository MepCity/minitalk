# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yaarslan <yaarslan@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/04/15 15:31:29 by yaarslan          #+#    #+#              #
#    Updated: 2025/04/15 15:31:30 by yaarslan         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= minitalk
BONUS_NAME = minitalk_bonus
SERVER	= server
CLIENT	= client
CC		= cc
CFLAGS	= -Wall -Wextra -Werror
RM		= rm -f

all: $(NAME)

$(NAME): $(SERVER) $(CLIENT)

$(SERVER): server.c minitalk.h
	$(CC) $(CFLAGS) server.c -o $(SERVER)

$(CLIENT): client.c minitalk.h
	$(CC) $(CFLAGS) client.c -o $(CLIENT)

clean:
	$(RM) $(SERVER) $(CLIENT) $(BONUS_SERVER) $(BONUS_CLIENT)

fclean: clean

re: fclean all

.PHONY: all clean fclean re bonus