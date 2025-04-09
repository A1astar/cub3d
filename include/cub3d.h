/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:20:34 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 15:57:28 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#ifndef CUB3D_H
# define CUB3D_H

# include "../libft/includes/libft.h"
# include "../minilibx-linux/mlx.h"
# include "errors.h"
# include "keycodes.h"
# include "textures.h"
# include <X11/keysym.h>
# include <X11/Xlib.h>
# include <X11/X.h>
# include <X11/keysymdef.h>
# include <fcntl.h>
# include <inttypes.h>
# include <limits.h>
# include <math.h>
# include <pthread.h>
# include <stdbool.h>
# include <stdio.h>
# include <sys/stat.h>

/*		TEXT FORMATING		*/
# define DEFAULT "\033[0m"
# define BOLD "\033[1m"
# define ITALIC "\033[3m"
# define BLACK "\033[30m"
# define RED "\033[31m"
# define GREEN "\033[32m"
# define YELLOW "\033[33m"
# define BLUE "\033[34m"
# define MAGENTA "\033[35m"
# define CYAN "\033[36m"
# define WHITE "\033[37m"

/*		PROGRAM STATE		*/
# define PLAYING (1 << 1)
# define MAIN_MENU (1 << 2)
# define LEVEL_MENU (1 << 3)

# define RUNNING 1

// enum e_error {err_none, err_malloc, err_file, };

// typedef struct s_error
// {
// 	uint8_t number;
// }	t_error;

# define WINDOW_WIDTH 1280
# define WINDOW_HEIGHT 720

enum e_program_state {playing, level_menu, main_menu};

typedef enum e_randy_state
{
	angry,
	stoned,
	drunk,
	godlike,
}					t_randy_state;

typedef struct s_minimap
{
	uint32_t		x_origin;
	uint32_t		y_origin;
	uint32_t		x_width;
	uint32_t		y_height;
}					t_minimap;

typedef struct s_map
{
	bool			bonus;
	char			**raw_data;
	char			**map;
	char			**assets_paths;
	char			**ceilling_rgb;
	char			**floor_rgb;
	void			*viewmodel;
	void			*n_texture_wall;
	void			*s_texture_wall;
	void			*e_texture_wall;
	void			*w_texture_wall;
	void			*floor;
	void			*ceiling;
	void			*closed_door;
	void			*open_door;
}					t_map;

typedef struct s_player
{
	float			x_pos;
	float			y_pos;
	void			*pov;
}					t_player;

typedef struct s_enemy
{
	t_randy_state	state;
	float			x_pos;
	float			y_pos;
	void			*sprite[16];
}					t_enemy;

typedef struct s_img
{
	void			*ptr;
	char			*addr;
	char			*pixel;
	int				bpp;
	int				endian;
	int				size_line;
}					t_img;

typedef struct s_scene
{
	void			*mlx_ptr;
	void			*win_ptr;
	int				window_height;
	int				window_width;
	t_img			img;
}					t_scene;

typedef struct s_setting
{
	uint8_t difficulty; // Hardcore is the only option
	uint8_t			fov;
	uint8_t			velocity;
	bool			god_mod;
	bool drunk_mod; // promising
}					t_setting;

typedef struct s_menu
{
	int		width;
	int		height;
	int		index;
	t_img	img[3];
}t_menu;

typedef struct s_thread
{
}t_thread;

typedef struct s_cub3d
{
	uint8_t			program_state;
	uint32_t		enemy_nb;
	t_map			map;
	t_scene			scene;
	t_player		player;
	t_thread		thread;
	t_setting		setting;
	t_enemy			randy[4];
	t_menu			main_menu;
	t_menu			level_menu;
}					t_cub3d;


/*		EVENT		*/
int	playing_loop(t_cub3d *cub3d);
int	mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d);
int	mouse_motion_hook(int x, int y, t_cub3d *cub3d);
int	exit_cub3d(int keynum, t_cub3d *cub3d);
int	key_hook(int keynum, t_cub3d *cub3d);

/*		INIT		*/
void	init_struct_attributes(t_cub3d *cub3d);
void	init_mlx(t_cub3d *cub3d, t_scene *scene);
void	init_asset(t_cub3d *cub3d);

/*		ERROR		*/
void				error_msg(const char *msg, const char *context);

/*		PARSING		*/
void				init_program(t_cub3d *cub3d,char **argv);
int					load_asset(char **map_tab, t_cub3d *game);
void				extract_data(t_cub3d *game, char *filename);
void				parsing(t_cub3d *game, char *argv);
bool				is_valid_map(t_cub3d *game, t_map *map);
void				extract_assets_path(t_cub3d *game, char **data);
void				extract_map(t_cub3d *game, char **data);
char				*append_line(t_cub3d *game, char *buffer, char *line);
int					open_file(t_cub3d *game, char *filename);
int					get_line_count(t_cub3d *game, char *filename);

void				free_program(t_cub3d *game);

/*		PRINT		*/
void				print_2d_array_string(char **str);

/*		RENDER		*/
int	playing_loop(t_cub3d *cub3d);
int	level_menu_loop(t_cub3d *cub3d);
int	main_menu_loop(t_cub3d *cub3d);	

#endif
