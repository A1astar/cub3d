/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:20:34 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/11 19:49:57 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CUB3D_H
# define CUB3D_H

# include "../libft/includes/libft.h"
# include "../minilibx-linux/mlx.h"
# include "hex_colors.h"
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

# define WINDOW_WIDTH 1280
# define WINDOW_HEIGHT 720

enum e_program_state {playing, level_menu, main_menu};
enum e_main_menu_state {start_game, settings, exit_game};
enum e_playing_state {running, playing_menu};

typedef enum e_randy_state {angry, stoned, drunk, godlike}t_randy_state;
typedef enum e_orientation {north, south, east, west}t_orientation;

typedef struct s_map
{
	bool			bonus;
	bool			is_valid_map;
	t_orientation	orientation;
	int				texture_width;
	int				texture_height;
	int				view_width;
	int				view_height;
	int				map_height;
	char			**raw_data;
	char			**map;
	char			**assets_paths;
	int				ceilling_rgb[3];
	int				floor_rgb[3];
	void			*viewmodel;
	void			*n_texture_wall;
	void			*s_texture_wall;
	void			*e_texture_wall;
	void			*w_texture_wall;
	void			*floor;
	void			*ceiling;
	void			*closed_door;
	void			*open_door;
}t_map;

typedef struct s_minimap
{
	int	x_origin;
	int	y_origin;
	int	width;
	int	height;
	int	scale;
}t_minimap;

typedef struct s_hitbox
{
	float	x_origin;
	float	x_width;
	float	y_origin;
	float	y_height;
}t_hitbox;

typedef struct s_player
{
	float		x_pos;
	float		y_pos;
	t_hitbox	hitbox;
	void		*pov;
}t_player;

typedef struct s_enemy
{
	t_randy_state	state;
	int				sprite_width;
	int				sprite_height;
	float			x_pos;
	float			y_pos;
	void			*sprite[16];
}t_enemy;

typedef struct s_img
{
	void	*ptr;
	char	*addr;
	char	*pixel;
	int		bpp;
	int		endian;
	int		size_line;
}t_img;

typedef struct s_scene
{
	t_img	img;
}t_scene;

typedef struct s_setting
{
	uint8_t difficulty; // Hardcore is the only option
	uint8_t	fov;
	uint8_t	velocity;
	bool	god_mod;
	bool	drunk_mod; // promising
}t_setting;

typedef struct s_main_menu
{
	int		width;
	int		height;
	int		index;
	t_img	img[3];
}t_main_menu;

typedef struct s_thread
{
}t_thread;

typedef struct s_window
{
	int		height;
	int		width;
	uint8_t	resolution;
	void	*win_ptr;
	void	*mlx_ptr;
}t_window;

typedef struct s_level_menu
{
	int		width;
	int		height;
	int		index;
	t_img	img;
}t_level_menu;

typedef struct s_cub3d
{
	int				nb_enemy;
	int				nb_player;
	uint8_t			program_state;
	t_map			map;
	t_scene			scene;
	t_player		player;
	t_thread		thread;
	t_window		window;
	t_minimap		minimap;
	t_setting		setting;
	t_enemy			randy[4];
	t_main_menu		main_menu;
	t_level_menu	level_menu;
}t_cub3d;

/*		EVENT		*/
int		game_loop(t_cub3d *cub3d);
int		key_hook(int keynum, t_cub3d *cub3d);
int		mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d);
int		mouse_motion_hook(int x, int y, t_cub3d *cub3d);

int		playing_loop(t_cub3d *cub3d);
int		playing_key_hook(int keynum, t_cub3d *cub3d);
int		playing_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d);
int		playing_mouse_motion_hook(int x, int y, t_cub3d *cub3d);

int		main_menu_loop(t_cub3d *cub3d);
int		main_menu_key_hook(int keynum, t_cub3d *cub3d);
int		main_menu_mouse_motion_hook(int x, int y, t_cub3d *cub3d);
int		main_menu_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d);

int		level_menu_loop(t_cub3d *cub3d);
int		level_menu_key_hook(int keynum, t_cub3d *cub3d);
int		level_menu_mouse_motion_hook(int x, int y, t_cub3d *cub3d);
int		level_menu_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d);

int		exit_cub3d(t_cub3d *cub3d);

/*		INIT		*/
bool	is_rgb_code(char **tab);
bool	is_rgb_line(char *line, size_t len);
bool	is_asset_line(char *line, size_t len);

void	init_asset(t_cub3d *cub3d);
void 	init_bonus_assets(t_cub3d *cub3d);
void	init_struct_attributes(t_cub3d *cub3d);
void	init_program(t_cub3d *cub3d,char **argv);
void	init_mlx(t_cub3d *cub3d, t_window *scene);
void	init_mandatory_assets(t_cub3d *cub3d, char **assets_paths);
void	update_mlx_hook(t_cub3d *cub3d, t_window *scene, int which);

/*		ERROR		*/
void	error_msg(const char *msg, const char *context);

/*		PARSING		*/
bool	is_enemy_spawn(char c);
bool	is_player_spawn(t_map *map, char c);
bool	is_valid_map(t_cub3d *game, t_map *map);

void	parsing(t_cub3d *cub3d, char *argv);
void	check_map(t_cub3d *cub3d, t_map *map);
void	extract_map(t_cub3d *game, char **data);
char	**dup_tab(char **map, size_t map_row_len);
int		open_file(t_cub3d *cub3d, char *filename);
int		load_asset(char **map_tab, t_cub3d *cub3d);
void	check_valid_element(t_cub3d *cub3d, char c);
void	extract_data(t_cub3d *game, char *filename);
void	check_enemy_nb(t_cub3d *cub3d, int enemy_nb);
void	check_player_nb(t_cub3d *cub3d, int enemy_nb);
int		get_line_count(t_cub3d *cub3d, char *filename);
void	extract_assets_path(t_cub3d *game, char **data);
void 	apply_enemy_state(t_enemy *randy, int nb_enemy);
char	*append_line(t_cub3d *cub3d, char *buffer, char *line);

/*		MEMORY		*/
void	free_t_img(t_img *img);
void	free_t_main_menu(t_main_menu *menu);
void	free_program(t_cub3d *cub3d);
void	free_t_window(t_window *scene);
void	free_image(void *mlx, void *image);
void	free_t_player(t_player *player, t_window *scene);

/*		PRINT		*/
void	print_2d_array_string(char **str);
void	print_usage(void);

/*		RENDER		*/
int		playing_loop(t_cub3d *cub3d);
int		main_menu_loop(t_cub3d *cub3d);
int		level_menu_loop(t_cub3d *cub3d);

#endif
