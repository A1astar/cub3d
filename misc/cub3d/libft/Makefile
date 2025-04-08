# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: agadea <agadea@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/15 12:12:15 by agadea            #+#    #+#              #
#    Updated: 2023/07/02 19:10:51 by agadea           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GREEN	= \e[32m
YELLOW	= \e[33m
DEFAULT	= \e[0m

###################################		     TARGET			###################################

NAME			= libft.a

###################################		  COMPILATION		###################################

CC				= clang
CFLAGS			= -g3 -Wall -Wextra -Werror
AR				= ar rcs

###################################		   DEBUGGING		###################################

VALGRIND		= valgrind --check-leak=full --show-leak-kinds=all --track-origin=yes

###################################		 	 SOURCE			###################################

SRC_DIR			:= src
SRC				:= ${wildcard ${SRC_DIR}/*.c ${SRC_DIR}/*/*.c ${SRC_DIR}/*/*/*.c}

###################################		 	OBJECT			###################################

OBJ_DIR			:= obj
OBJ				:= ${patsubst ${SRC_DIR}/%.c, ${OBJ_DIR}/%.o, ${SRC}}

###################################		 	 RULE			###################################

all: ${NAME}

${NAME}: ${OBJ} 
	@${AR} $@ $^
	@echo "${GREEN}LIBFT_AR creation successful !${DEFAULT}"

${OBJ_DIR}/%.o: ${SRC_DIR}/%.c
	@mkdir -p ${dir $@}
	@${CC} ${CFLAGS} -c $< -o $@

clean:
	@${RM} -rf ${OBJ_DIR}
	@echo "${YELLOW}Libft objects removed !${DEFAULT}"

fclean: clean
	@${RM} ${NAME} 
	@echo "${YELLOW}Libft entirely cleaned !${DEFAULT}"

re: fclean all

.PHONY: all bonus clean fclean re