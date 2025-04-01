# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: algadea <algadea@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/15 10:52:20 by agadea            #+#    #+#              #
#    Updated: 2024/12/29 20:42:02 by algadea          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###########################		     TARGET			###########################

NAME				= fdf
MLX					= minilibx-linux/libmlx.a
LIBFT				= libft/libft.a

###########################		 	  FLAG			###########################

CC					= clang
CFLAGS				= -g3 -Wall -Wextra -Werror
LIBFLAGS			= -Llibft -lft -lX11 -lXext -Lminilibx-linux -lmlx -lm

###########################		 	 INCLUDE		###########################

INCLUDE				:= include/fdf.h

###########################		 	 SOURCE			###########################

SRC_DIR				:= src
SRC					:=	events/keyboard.c \
					events/mouse.c \
					memory/free.c \
					memory/malloc.c \
					parsing/altitudes.c \
					parsing/colors.c \
					parsing/dups.c \
					parsing/parsing.c \
					parsing/utils.c \
					rendering/bresenham/bresenham.c \
					rendering/bresenham/high.c \
					rendering/bresenham/low.c \
					rendering/changes.c \
					rendering/colors.c \
					rendering/interface.c \
					rendering/render.c \
					rendering/rotation.c \
					rendering/transformation.c \
					rendering/vertex.c \
					init.c \
					main.c
SRC					:= $(addprefix $(SRC_DIR)/, $(SRC))

###########################		  COMPILATION		###########################

PP_DIR				:= pp
PP					:= $(patsubst $(SRC_DIR)/%.c, $(PP_DIR)/%.i, $(SRC))

ASM_DIR				:= asm
ASM					:= $(patsubst $(SRC_DIR)/%.c, $(ASM_DIR)/%.s, $(SRC))

OBJ_DIR				:= obj
OBJ					:= $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

###########################		 	 RULE			###########################

all: $(MLX) $(LIBFT) $(NAME)

pp: $(PP)

asm: $(ASM)

$(NAME): $(OBJ) $(LIBFT)
	@$(CC) $(CFLAGS) $^ $(LIBFLAGS) -o $@
	@echo "$(GREEN)> $(NAME) creation successful!$(DEFAULT)"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(INCLUDE)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

$(MLX):
	@git submodule init
	@git submodule update
	@$(MAKE) -C minilibx-linux

$(LIBFT):
	$(MAKE) -C libft

# PREPROCESSING
$(PP_DIR)/%.i: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -E $< -o $@

# ASSEMBLY
$(ASM_DIR)/%.s: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -S $< -o $@

clean:
	@$(RM) -rf $(OBJ) $(OBJ_BONUS)
	@echo "$(YELLOW)> $(NAME) objects files removed!$(DEFAULT)"

clean-pp:
	@$(RM) -rf $(PP)
	@echo "$(YELLOW)> $(NAME) preprocessed files removed!$(DEFAULT)"

clean-asm:
	@$(RM) -rf $(ASM)
	@echo "$(YELLOW)> $(NAME) assembly files removed!$(DEFAULT)"

fclean: clean clean-pp clean-asm
	@$(MAKE) fclean -C libft
	@$(RM) -rf $(OBJ_DIR) $(PP_DIR) $(ASM_DIR)
	@$(RM) $(NAME) $(NAME_BONUS)
	@echo "$(YELLOW)> $(NAME) entirely cleaned!$(DEFAULT)"

re: fclean all

.PHONY: all pp asm libft clean clean-pp clean-asm fclean re

###########################		ESCAPE SEQUENCE		###########################

DEFAULT=\033[0m
BOLD=\033[1m
ITALIC=\033[3m

BLACK=\033[30m
RED=\033[31m
GREEN=\033[32m
YELLOW=\033[33m
BLUE=\033[34m
MAGENTA=\033[35m
CYAN=\033[36m
WHITE=\033[37m 