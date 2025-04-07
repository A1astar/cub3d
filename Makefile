NAME = cube3D

SRCDIR = src
OBJDIR = obj
INCDIR = includes

SRC_MAIN = src/main.c src/error.c

SRC = $(SRC_MAIN)
SRC := $(addprefix $(SRCDIR)/, $(SRC))
OBJ := $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SRC))

LIBFT_DIR := libft
LIBFT := $(LIBFT_DIR)/libft.a
LIBFT_INCLUDE := $(LIBFT_DIR)
MINILIBX_DIR := ./minilibx-linux
MLX := $(MINILIBX_DIR)/libmlx.a
LDFLAGS =  -L$(MINILIBX_DIR) -L$(LIBFT_DIR)
LIBS =  $(MLX) $(LIBFT)

AR = ar
ARFLAGS = rcs

CC = cc
CFLAGS = -Wall -Wextra -Werror -I$(INCDIR) -g3 -I$(MINILIBX_DIR) -I/usr/include/X11 -I$(LIBFT_INCLUDE)

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	MLXFLAGS += -lmlx -lXext -lX11
else ifeq ($(UNAME_S),Darwin)
	MLXFLAGS += -L/opt/X11/lib -lX11 -lXext -lXrandr -lXcursor
endif

all: $(OBJDIR) $(MINILIBX_DIR) $(LIBFT) $(NAME)

$(OBJDIR):
	$(V)mkdir -p $(OBJDIR) || true

DEP = $(OBJ:.o=.d)

$(OBJDIR)/%.o: $(SRCDIR)/%.c | $(OBJDIR)
	@mkdir -p $(dir $@)
	$(V)$(CC) $(CFLAGS) -MMD -MP -c $< -o $@

-include $(DEP)

$(NAME): $(OBJ) $(LIBFT)
	$(V)$(CC) $(CFLAGS) $(LDFLAGS) $(OBJ) $(BONUS_OBJ) $(LIBS) $(MLXFLAGS) -o $(NAME)
	$(V)echo $(GREEN)"[$(NAME)] $(RESET)

$(LIBFT):
	$(V)$(MAKE) --silent -C $(LIBFT_DIR)

$(MINILIBX_DIR):
	@git clone https://github.com/42Paris/minilibx-linux.git $(MINILIBX_DIR) > /dev/null 2>&1
	@$(MAKE) -C $(MINILIBX_DIR) > /dev/null 2>&1

clean:
	$(V)rm -rf $(OBJDIR)

fclean: clean
	$(V)rm -f $(NAME)
	$(V)$(MAKE) --silent -C $(LIBFT_DIR) fclean
	$(V)echo $(RED)'[mlx] Remove directory'$(RESET)
	@rm -rf $(MINILIBX_DIR)

re: fclean all

.PHONY: all clean fclean re bonus regen
.DEFAULT_GOAL := all
