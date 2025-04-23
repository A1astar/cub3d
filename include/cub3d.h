/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:20:34 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/23 16:24:22 by algadea          ###   ########.fr       */
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

# define PI 3.14159265358979323846
# define VELOCITY 0.1
# define MOVEMENT 0.5
# define SENSIBILITY 0.05

# define RUNNING 1

# define WINDOW_WIDTH 1280
# define WINDOW_HEIGHT 720

// # define WINDOW_WIDTH 1920
// # define WINDOW_HEIGHT 1080

enum e_program_state {game, level_menu, main_menu, main_menu_settings};
enum e_main_menu_state {start_game, settings, exit_game};
enum e_playing_state {running, playing_menu};
enum e_rendering {normal, transform};
enum e_epileptic {ep_floor, ep_ceiling};
enum e_key_press {release, pressed};
enum e_viewmodel {down, up};

typedef enum e_randy_state {angry, stoned, drunk, godlike}t_randy_state;
typedef enum e_orientation {north, south, east, west}t_orientation;

/*TEMPORAIRES*/
typedef struct s_ray_attributes
{
	bool	hit_wall;
	double	camera_x;
	double	raydir_x;
	double	raydir_y;
	double	side_dist_x;
	double	side_dist_y;
	double	delta_dist_x;
	double	delta_dist_y;
	int		map_pos_x;
	int		map_pos_y;
	int		step_x;
	int		step_y;
	int		side;
}			t_ray_attributes;

typedef struct s_draw_attributes
{
	double	perp_wall_dist;
	int		line_height;
	int		draw_start;
	int		draw_end;
	double	wall_x;
	int		tex_x;
	int		tex_y;
	double	step;
	double	tex_pos;
}			t_draw_attributes;

/*TEMPORAIRES*/



typedef struct s_img
{
	void	*ptr;
	char	*addr;
	int		bpp;
	int		height;
	int		width;
	int		endian;
	int		size_line;
}t_img;

typedef struct s_textures
{
	t_img	n_wall;
	t_img	s_wall;
	t_img	e_wall;
	t_img	w_wall;
	t_img	wall_one;
	t_img	wall_two;
	t_img	floor;
	t_img	o_door;
	t_img	c_door;
	t_img	shroom;
	t_img	trip_n_wall;
	t_img	trip_s_wall;
	t_img	trip_e_wall;
	t_img	trip_w_wall;
	t_img	trip_wall_one;
	t_img	trip_wall_two;
	t_img	trip_floor;
	t_img	trip_o_door;
	t_img	trip_c_door;
}t_textures;

typedef struct s_map
{
	bool	is_valid_map;
	char	**raw_data;
	char	**map;
	char	**assets_paths;
	int		ceilling_rgb[3];
	int		floor_rgb[3];
	size_t	height;
	size_t	width;
}t_map;

typedef struct s_minimap
{
	int	x_origin;
	int	y_origin;
	int	width;
	int	height;
	int	tile_width;
	int	tile_height;
	int	scale;
}t_minimap;

typedef struct s_hitbox
{
	double	x_origin;
	double	x_width;
	double	y_origin;
	double	y_height;
}t_hitbox;

typedef struct s_render
{
	double	px;
	double	py;
	double	x_cent;
	double	y_cent;
	double	x_rot;
	double	y_rot;
}	t_render;

typedef struct s_viewmodel
{
	bool	orientation;
	int		draw_pos;
	t_img	normal_stand;
	t_img	trip_stand;
	t_img	normal_sword_sprite[4];
	t_img	normal_wand_sprite[4];
	t_img	trip_sword_sprite[4];
	t_img	trip_cig_sprite[4];

}t_viewmodel;

typedef struct s_player
{
	t_viewmodel		viewmodel;
	t_render		render;
	t_orientation	orientation;

	double			x_pos;
	double			y_pos;

	double			x_dir;
	double			y_dir;

	int				x_size;
	int				y_size;

	int				width;
	int				height;

	t_hitbox		hitbox;

	int				angle;
	double			radian;
	double			center;

	double			move_speed;
	double			rotation_speed;
}t_player;

typedef struct s_raycast
{
	int		width;
	int		height;

	int		hit;
	int		side;

	int		line_height;
	int		pitch;

	int		draw_start;
	int		draw_end;

	int		x_step;
	int		y_step;

	double	x_dir;
	double	y_dir;
	double	x_old_dir;
	double	y_old_dir;

	double	x_camera; // 2 * x / double(w) - 1
	double	y_camera;

	double	x_raydir; // x_dir + x_plane * x_camera
	double	y_raydir; // y_dir + y_plane * x_camera

	double	x_plane;
	double	y_plane;
	double	x_old_plane;
	double	y_old_plane;

	double	x_map;
	double	y_map;

	double	x_delta; // sqrt(1 + (y_raydir * y_raydir) / (x_raydir * x_raydir))
					 // abs(raydir / x_raydir)
	double	y_delta; // sqrt(1 + (x_raydir * x_raydir) / (y_raydir * y_raydir))
					 // abs(raydir / y_raydir)

	double	x_side; // if x_raydir < 0 : (x_pos - x_map) * x_delta
					// if x_raydir > 0 : (x_map + 1.0 - x_pos) * x_delta
	double	y_side; // if y_raydir < 0 : (y_pos - y_map) * y_delta
					// if y_raydir > 0 : (y_map + 1.0 - y_pos) * y_delta

	double	perp_wall;

	double	fov;
	double	fov_rad;
}t_raycast;

typedef struct s_enemy
{
	t_randy_state	state;
	int				sprite_width;
	int				sprite_height;
	double			x_pos;
	double			y_pos;
	t_img			sprite[16];
}t_enemy;

typedef struct s_scene
{
	double	time;
	double	frame_time;
	double	old_time;
	t_img	img;
}t_scene;

typedef struct s_setting
{
	uint8_t	difficulty; // Hardcore is the only option
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

typedef struct s_key_state
{
	bool	w;
	bool	a;
	bool	s;
	bool	d;
	bool	up;
	bool	left;
	bool	down;
	bool	right;
}t_key_state;

typedef struct s_cub3d
{
	int				nb_enemy;
	int				nb_player;
	uint8_t			program_state;
	t_map			map;
	t_scene			scene;
	t_player		player;
	t_window		window;
	t_minimap		minimap;
	t_setting		setting;
	t_raycast		raycast;
	t_enemy			randy[4];
	t_textures		textures;
	t_main_menu		main_menu;
	t_key_state		key_state;
	t_level_menu	level_menu;
	pthread_mutex_t	print;
}t_cub3d;

typedef struct s_thread
{
	t_cub3d	*cub3d;
	int		ray_seg_start;
	int		ray_seg_end;
}t_thread;

/*		ERROR		*/
void	error_msg(const char *msg, const char *context);

/*		EVENT		*/
bool	is_player_button(int keynum);
bool	is_player_action_key(int keynum);
void	player_action_key(int keynum, t_cub3d *cub3d);
void	player_action_button(int keynum, t_cub3d *cub3d);
void	player_movement_key(int keynum, t_cub3d *cub3d);

void	move_player_west(t_cub3d *cub3d);
void	move_player_east(t_cub3d *cub3d);
void	move_player_north(t_cub3d *cub3d);
void	move_player_south(t_cub3d *cub3d);
void	rotate_player_left(t_cub3d *cub3d);
void	rotate_player_right(t_cub3d *cub3d);

int		cub3d_loop(t_cub3d *cub3d);
int		key_press_hook(int keynum, t_cub3d *cub3d);
int		key_release_hook(int keynum, t_cub3d *cub3d);
int		mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d);
int		mouse_motion_hook(int x, int y, t_cub3d *cub3d);

int		game_loop(t_cub3d *cub3d);
int		game_key_hook(int keynum, t_cub3d *cub3d);
int		game_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d);
int		game_mouse_motion_hook(int x, int y, t_cub3d *cub3d);

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
void	init_bonus_assets(t_cub3d *cub3d);
void	init_struct_attributes(t_cub3d *cub3d);
void	init_program(t_cub3d *cub3d, char **argv);
void	init_mlx(t_cub3d *cub3d, t_window *scene);
void	init_mandatory_assets(t_cub3d *cub3d, char **assets_paths);
void	check_asset_duplicates(t_cub3d *cub3d, t_img *texture);
bool	mandatory_assets_are_missing(t_textures *textures);

/*		MEMORY		*/
void	free_t_img(t_window *window, t_img *img);
void	free_t_main_menu(t_main_menu *menu, t_window *window);
void	free_program(t_cub3d *cub3d);
void	free_t_window(t_window *scene);
void	free_image(void *mlx, void *image);
void	free_t_scene(t_scene *scene, t_window *window);

/*		PARSING		*/
bool	is_enemy_spawn(char c);
bool	is_player_spawn(t_player *player, char c);

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
void	apply_enemy_state(t_enemy *randy, int nb_enemy);
char	*append_line(t_cub3d *cub3d, char *buffer, char *line);

/*		PHYSICS		*/
bool	can_move_to_north(t_raycast *raycast, t_player *player, t_map *map);
bool	can_move_to_south(t_raycast *raycast, t_player *player, t_map *map);
bool	can_move_to_east(t_raycast *raycast, t_player *player, t_map *map);
bool	can_move_to_west(t_raycast *raycast, t_player *player, t_map *map);

/*		PRINT		*/
void	print_2d_array_string(char **str);
void	print_usage(void);

/*		RENDERING		*/
void	raycast_map(t_cub3d *cub3d, t_raycast *raycast, t_player *player);
void	raycast_doors(t_cub3d *cub3d, t_raycast *raycast, t_player *player);
void	update_raycast(t_raycast *raycast, t_player *player, int x, int w);
void 	update_ray_step_x(t_raycast *raycast);
void 	update_ray_step_y(t_raycast *raycast);
void	render_raycast(t_cub3d *cub3d, t_raycast *raycast, int x);
void	raycast_threads(t_cub3d *cub3d);
void	drunk_raycast_threads(t_cub3d *cub3d);
int		game_loop(t_cub3d *cub3d);
int		main_menu_loop(t_cub3d *cub3d);
int		level_menu_loop(t_cub3d *cub3d);
void	draw_pixel(t_img *img, int x, int y, int color);
void	draw_square(t_cub3d *cub3d, int x_index, int y_index, unsigned int color);
void	render_minimap_ray(t_cub3d *cub3d);
void	render_minimap_player(t_cub3d *cub3d, t_minimap *minimap,
			t_player *player, t_render *render);
void	render_minimap(t_cub3d *cub3d, t_scene *scene, t_map *map,
			t_minimap *minimap);

#endif
