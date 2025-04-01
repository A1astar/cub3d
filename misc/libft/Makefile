# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: algadea <algadea@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/15 10:52:20 by agadea            #+#    #+#              #
#    Updated: 2024/12/08 19:46:34 by algadea          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###########################		     TARGET			###########################

NAME				= libft.a

###########################		 	  FLAG			###########################

CC					= clang
CFLAGS				= -g3 -Wall -Wextra -Werror
AR					= ar rcs

###########################		 	 INCLUDE		###########################

INCLUDE_DIR			:= include
INCLUDE				:= ft_printf.h \
					get_next_line.h \
					libft.h
INCLUDE				:= $(addprefix $(INCLUDE_DIR)/, $(INCLUDE))

###########################		 	 SOURCE			###########################

SRC_DIR				:= src
SRC					:= ft_printf/conversion/c_conversion.c \
					ft_printf/conversion/d_i_conversion.c \
					ft_printf/conversion/p_conversion.c \
					ft_printf/conversion/s_conversion.c \
					ft_printf/conversion/u_conversion.c \
					ft_printf/conversion/upper_x_conversion.c \
					ft_printf/conversion/x_conversion.c \
					ft_printf/field_width/field_width.c \
					ft_printf/field_width/zero_padding.c \
					ft_printf/format/argument_length.c \
					ft_printf/format/check_format_error.c \
					ft_printf/format/find_format.c \
					ft_printf/precision/get_precision.c \
					ft_printf/precision/put_precision.c \
					ft_printf/print_utils/print_utils.c \
					ft_printf/ft_printf.c \
					get_next_line/get_next_line.c \
					get_next_line/get_next_line_utils.c \
					ft_atoi.c \
					ft_bzero.c \
					ft_calloc.c \
					ft_isalnum.c \
					ft_isalpha.c \
					ft_isascii.c \
					ft_isdigit.c \
					ft_isprint.c \
					ft_itoa.c \
					ft_lstadd_back.c \
					ft_lstadd_front.c \
					ft_lstclear.c \
					ft_lstdelone.c \
					ft_lstiter.c \
					ft_lstlast.c \
					ft_lstmap.c \
					ft_lstnew.c \
					ft_lstsize.c \
					ft_memchr.c \
					ft_memcmp.c \
					ft_memcpy.c \
					ft_memmove.c \
					ft_memset.c \
					ft_putchar_fd.c \
					ft_putendl_fd.c \
					ft_putnbr_fd.c \
					ft_putstr_fd.c \
					ft_split.c \
					ft_strchr.c \
					ft_strdup.c \
					ft_striteri.c \
					ft_strjoin.c \
					ft_strlcat.c \
					ft_strlcpy.c \
					ft_strlen.c \
					ft_strmapi.c \
					ft_strncmp.c \
					ft_strnstr.c \
					ft_strrchr.c \
					ft_strtrim.c \
					ft_substr.c \
					ft_tolower.c \
					ft_toupper.c
SRC					:= $(addprefix $(SRC_DIR)/, $(SRC))

###########################		  COMPILATION		###########################

PP_DIR				:= pp
PP					:= $(patsubst $(SRC_DIR)/%.c, $(PP_DIR)/%.i, $(SRC))

ASM_DIR				:= asm
ASM					:= $(patsubst $(SRC_DIR)/%.c, $(PP_DIR)/%.s, $(SRC))

OBJ_DIR				:= obj
OBJ					:= $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC))

###########################		 	 RULE			###########################


all: $(NAME)

pp: $(PP)

asm: $(ASM)

$(NAME): $(OBJ)
	$(AR) $@ $^
	@echo "$(GREEN)> $(NAME) creation successful!$(DEFAULT)"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(INCLUDE)
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

# PREPROCESSING
$(PP_DIR)/%.i: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -E $< -o $@

# ASSEMBLY
$(ASM_DIR)/%.s: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	@$(CC) $(CFLAGS) -S $< -o $@

clean:
	$(RM) -rf $(OBJ) $(OBJ_BONUS)
	@echo "$(YELLOW)> $(NAME) objects files removed!$(DEFAULT)"

clean-pp:
	$(RM) -rf $(PP) $(PP_BONUS)
	@echo "$(YELLOW)> $(NAME) preprocessed files removed!$(DEFAULT)"

clean-asm:
	$(RM) -rf $(ASM) $(ASM_BONUS)
	@echo "$(YELLOW)> $(NAME) assembly files removed!$(DEFAULT)"

fclean: clean clean-pp clean-asm
	$(RM) -rf $(NAME) $(OBJ_DIR)
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