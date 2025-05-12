# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/09 23:24:31 by algadea           #+#    #+#              #
#    Updated: 2025/05/12 16:20:16 by alacroix         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

###########################          TARGET         ###########################

NAME				= cub3D
NAME_BONUS				= cub3D_bonus
MLX					= minilibx-linux/libmlx.a
LIBFT				= libft/libft.a

###########################           FLAG          ###########################

CC					= clang
CFLAGS				= -g3 -Wall -Wextra -Werror -MMD -pthread
ifdef GPROF
	CFLAGS			+= -pg
endif
ifdef ASAN
	CFLAGS			+= -fsanitize=address
endif
ifdef TSAN
	CFLAGS			+= -fsanitize=thread
endif
LIBFLAGS			= -Llibft -lft -lX11 -lXext -Lminilibx-linux -lmlx -lm

###########################          INCLUDE        ###########################

INCLUDE_DIR			:= include
INCLUDE				:= cub3d.h \
					elements.h \
					errors.h \
					map.h \
					menu.h \
					player.h \
					render.h \
					textures.h \
					thread.h \
					types.h
INCLUDE				:= $(addprefix $(INCLUDE_DIR)/, $(INCLUDE))

###########################          SOURCE         ###########################

SRC_DIR				:= src

SRC_SHARED			:= data/data_player_rotation.c \
					data/data_enemy.c \
					data/data_player.c \
					event/event_exit.c \
					event/event_game.c \
					event/event_launcher.c \
					event/event_level_menu.c \
					event/event_main_menu.c \
					event/event_player_interaction.c \
					event/event_player_key_press.c \
					event/event_player_key_release.c \
					event/event_player_mouse.c \
					event/event_player_movement.c \
					event/event.c \
					event/event_player_actions.c \
					init/init_asset.c \
					init/init_assets_utils.c \
					init/init_background.c \
					init/init_bonus_assets.c \
					init/init_main_menu_addr.c \
					init/init_main_menu.c \
					init/init_mandatory_assets.c \
					init/init_mlx.c \
					init/init_player.c \
					init/init.c \
					init/load_env_xpm_files.c \
					init/load_view_xpm_files.c \
					parsing/extract_assets_paths.c \
					parsing/extract_map.c \
					parsing/extract_utils.c \
					parsing/map_checking_line.c \
					parsing/map_checking_nb.c \
					parsing/map_checking_utils.c \
					parsing/map_checking_utils2.c \
					parsing/map_checking.c \
					parsing/parsing.c \
					physics/hitbox_player.c \
					rendering/draw.c \
					rendering/framerate.c \
					rendering/raycast_doors.c \
					rendering/raycast_floor.c \
					rendering/raycast_map.c \
					rendering/raycast_update.c \
					rendering/render_enemy.c \
					rendering/render_floor.c \
					rendering/render_item_utils.c \
					rendering/render_item.c \
					rendering/render_effects.c \
					rendering/render_raycast.c \
					rendering/render_viewmodel.c \
					rendering/rendering_level_menu.c \
					rendering/rendering_main_menu.c \
					rendering/rendering_minimap_player.c \
					rendering/rendering_minimap.c \
					rendering/rendering_psychedelic.c \
					rendering/rendering_utils.c \
					rendering/rendering.c \
					rendering/select_textures.c \
					thread/init_thread.c \
					error.c \
					memory/free_game.c \
					memory/free_graphics.c \
					main.c

SRC_MANDATORY		:= data/data_mandatory_game.c \
						rendering/rendering_mandatory_game.c \

SRC_BONUS			:= data/data_bonus_game.c \
						rendering/rendering_bonus_game.c \

SRC_SHARED			:= $(addprefix $(SRC_DIR)/, $(SRC_SHARED))
SRC_MANDATORY		:= $(addprefix $(SRC_DIR)/, $(SRC_MANDATORY))
SRC_BONUS			:= $(addprefix $(SRC_DIR)/, $(SRC_BONUS))

###########################       COMPILATION       ###########################

PP_DIR				:= pp
PP					:= $(patsubst $(SRC_DIR)/%.c, $(PP_DIR)/%.i, $(SRC))

ASM_DIR				:= asm
ASM					:= $(patsubst $(SRC_DIR)/%.c, $(ASM_DIR)/%.s, $(SRC))

OBJ_DIR				:= obj
OBJ_SHARED			:= $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_SHARED))
OBJ_MANDATORY		:= $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_MANDATORY))
OBJ_BONUS			:= $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_BONUS))

###########################          RULE           ###########################

all: $(MLX) $(LIBFT) $(NAME)

pp: $(PP)

asm: $(ASM)

$(NAME): $(OBJ_SHARED) $(OBJ_MANDATORY) $(LIBFT)
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

bonus : CFLAGS += -DBONUS
bonus: $(MLX) $(LIBFT) $(NAME_BONUS)

$(NAME_BONUS): $(OBJ_SHARED) $(OBJ_BONUS)
	@$(CC) $(CFLAGS) $^ $(LIBFLAGS) -o $@
	@echo "$(GREEN)> $(NAME_BONUS) build successful!$(DEFAULT)"

clean:
	@$(RM) -rf $(OBJ_SHARED) $(OBJ_MANDATORY) $(OBJ_BONUS)
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

###########################     ESCAPE SEQUENCE     ###########################

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
