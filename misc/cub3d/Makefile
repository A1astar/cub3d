# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: agadea <agadea@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/15 10:52:20 by agadea            #+#    #+#              #
#    Updated: 2024/07/30 14:10:11 by agadea           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###########################		     TARGET			###########################

NAME				= cub3d
LIBFT				= libft/libft.a
MLX					= minilibx-linux/libmlx.a

###########################		 	  FLAG			###########################

CC					= clang
CFLAGS				= -g3 -Wall -Wextra -Werror
LFLAGS				= -Llibft -lft -lX11 -lXext -Lminilibx-linux -lmlx -lm
PFLAGS				= -pg

###########################		 	 INCLUDE		###########################

INCLUDE_DIR			:= include
INCLUDE				:= cub3d.h
INCLUDE				:= ${addprefix ${INCLUDE_DIR}/, ${INCLUDE}}

###########################		 	 SOURCE			###########################

SRC_DIR				:= src
SRC					:= main.c \
					print.c \
					asset/asset_init.c \
					error/error.c \
					hook/hook_level.c \
					hook/hook_menu.c \
					init/init_struct_attr_2.c \
					init/init_struct_attr.c \
					init/init.c \
					memory/memory_alloc.c \
					memory/memory_clean.c \
					memory/memory_utils.c \
					parsing/parsing_ceiling.c \
					parsing/parsing_element.c \
					parsing/parsing_file_bool.c \
					parsing/parsing_file.c \
					parsing/parsing_floor.c \
					parsing/parsing_map.c \
					parsing/parsing_mask.c \
					parsing/parsing_texture_bool.c \
					parsing/parsing_texture.c \
					parsing/parsing.c \
					player/player_collision.c \
					player/player.c \
					render/render_level.c \
					render/render_menu.c \
					render/render_minimap.c \
					render/render_player.c \
					render/render.c
SRC					:= ${addprefix ${SRC_DIR}/, ${SRC}}

###########################		  COMPILATION		###########################

PP_DIR				:= pp
PP					:= ${patsubst ${SRC_DIR}/%.c, ${PP_DIR}/%.i, ${SRC}}

ASM_DIR				:= asm
ASM					:= ${patsubst ${SRC_DIR}/%.c, ${ASM_DIR}/%.s, ${SRC}}

OBJ_DIR				:= obj
OBJ					:= ${patsubst ${SRC_DIR}/%.c, ${OBJ_DIR}/%.o, ${SRC}}

###########################		 	 RULE			###########################

all: ${MLX} ${LIBFT} ${PP} ${ASM} ${NAME}

${NAME}: ${OBJ}
	${CC} ${CFLAGS} $^ ${LFLAGS} -o $@
	@echo "${GREEN}CUB3D creation successful !${DEFAULT}"

${OBJ_DIR}/%.o: ${SRC_DIR}/%.c ${INCLUDE}
	@mkdir -p ${dir $@}
	@${CC} ${CFLAGS} -c $< -o $@

# PREPROCESSING
${PP_DIR}/%.i: ${SRC_DIR}/%.c
	@mkdir -p ${dir $@}
	@${CC} ${CFLAGS} -E $< -o $@

# ASSEMBLY
${ASM_DIR}/%.s: ${SRC_DIR}/%.c
	@mkdir -p ${dir $@}
	@${CC} ${CFLAGS} -S $< -o $@

${MLX}:
	@git submodule init
	@git submodule update 
	@${MAKE} -C minilibx-linux

${LIBFT}:
	@${MAKE} -C libft

clean:
	${RM} -rf ${OBJ} ${PP} ${ASM}
	@echo "${YELLOW}CUB3D objects removed !${DEFAULT}"

fclean: clean
	@${MAKE} -C libft fclean
	${RM} -rf ${OBJ_DIR} ${PP_DIR} ${ASM_DIR}
	${RM} ${NAME} ${LIBFT}
	@echo "${YELLOW}CUB3D entirely cleaned !${DEFAULT}"

re: fclean all

.PHONY: all libft clean fclean re

###########################		  ESCAPE		###########################

DEFAULT=\033[0m
BOLD=\033[1m
ITALIC=\033[3m
SLOW_BLINK=\033[5m
RAPID_BLINK=\033[6m
FRAKTUR=\033[20m

BLACK=\033[30m
RED=\033[31m
GREEN=\033[32m
YELLOW=\033[33m
BLUE=\033[34m
MAGENTA=\033[35m
CYAN=\033[36m
WHITE=\033[37m

BLACK_BACKGROUND=\033[40m
RED_BACKGROUND=\033[41m
GREEN_BACKGROUND=\033[42m
YELLOW_BACKGROUND=\033[43m
BLUE_BACKGROUND=\033[44m
MAGENTA_BACKGROUND=\033[45m
CYAN_BACKGROUND=\033[46m
WHITE_BACKGROUND=\033[47m

BRIGHT_BLACK=\033[90m
BRIGHT_RED=\033[91m
BRIGHT_GREEN=\033[92m
BRIGHT_YELLOW=\033[93m
BRIGHT_BLUE=\033[94m
BRIGHT_MAGENTA=\033[95m
BRIGHT_CYAN=\033[96m
BRIGHT_WHITE=\033[97m

BRIGHT_BLACK_BACKGROUND=\033[100m
BRIGHT_RED_BACKGROUND=\033[101m
BRIGHT_GREEN_BACKGROUND=\033[102m
BRIGHT_YELLOW_BACKGROUND=\033[103m
BRIGHT_BLUE_BACKGROUND=\033[104m
BRIGHT_MAGENTA_BACKGROUND=\033[105m
BRIGHT_CYAN_BACKGROUND=\033[106m
BRIGHT_WHITE_BACKGROUND=\033[107m