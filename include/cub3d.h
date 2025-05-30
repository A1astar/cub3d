/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:20:34 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/14 15:17:50 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CUB3D_H
# define CUB3D_H

# include "../libft/includes/libft.h"
# include "../minilibx-linux/mlx.h"
# include <X11/X.h>
# include <X11/Xlib.h>
# include <X11/keysym.h>
# include <X11/keysymdef.h>
# include <fcntl.h>
# include <inttypes.h>
# include <limits.h>
# include <math.h>
# include <pthread.h>
# include <stdbool.h>
# include <stdio.h>
# include <sys/stat.h>
# include <sys/time.h>
# include <time.h>

# include "config.h"
# include "errors.h"
# include "map.h"
# include "memory.h"
# include "render.h"
# include "textures.h"
# include "player.h"
# include "elements.h"
# include "menu.h"
# include "types.h"

/*##############################	ERROR	##################################*/
void	error_msg(const char *msg, const char *context);

/*##############################	EVENT	##################################*/
bool	is_player_button(int keynum);
bool	is_player_action_key(int keynum);
void	player_action_key(int keynum, t_cub3d *cub3d);
void	player_action_button(int keynum, t_cub3d *cub3d);
void	player_movement_key(int keynum, t_cub3d *cub3d);

void	move_player_west(t_cub3d *cub3d);
void	move_player_east(t_cub3d *cub3d);
void	move_player_north(t_cub3d *cub3d);
void	move_player_south(t_cub3d *cub3d);
void	rotate_player_left(t_cub3d *cub3d, t_time *time);
void	rotate_player_right(t_cub3d *cub3d, t_time *time);

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
void	main_menu_launcher_key_hook(int keynum, t_cub3d *cub3d);

int		level_menu_loop(t_cub3d *cub3d);
int		level_menu_key_hook(int keynum, t_cub3d *cub3d);

int		exit_cub3d(t_cub3d *cub3d);

void	reset_blink_value(t_blink *blink);
void	player_sword(t_cub3d *cub3d, t_player *player);
void	player_cast(t_cub3d *cub3d, t_player *player);

void	key_press_w(t_key_state *key_state, t_player *player);
void	key_press_s(t_key_state *key_state, t_player *player);
void	key_press_a(t_key_state *key_state, t_player *player);
void	key_press_d(t_key_state *key_state, t_player *player);

void	key_release_w(t_key_state *key_state, t_player *player);
void	key_release_s(t_key_state *key_state, t_player *player);
void	key_release_a(t_key_state *key_state, t_player *player);
void	key_release_d(t_key_state *key_state, t_player *player);

/*##############################	INIT	##################################*/
bool	is_rgb_code(char **tab);
bool	is_rgb_line(char *line, size_t len);
bool	is_asset_line(char *line, size_t len);

void	init_asset(t_cub3d *cub3d);
void	init_main_menu(t_cub3d *cub3d);
void	init_main_menu_background(t_cub3d *cub3d);
void	init_level_menu(t_cub3d *cub3d);
void	init_level_menu_addr(t_cub3d *cub3d);
void	init_main_menu_addr(t_cub3d *cub3d);
void	init_bonus_assets(t_cub3d *cub3d);
void	init_program(t_cub3d *cub3d, char **argv);
void	init_mlx(t_cub3d *cub3d, t_window *scene);
void	init_player(t_player *player, t_minimap *minimap);
void	init_enemy(t_cub3d *cub3d);
void	init_mandatory_assets(t_cub3d *cub3d, char **assets_paths);
void	check_asset_duplicates(t_cub3d *cub3d, t_img *texture);
bool	mandatory_assets_are_missing(t_textures *textures);
void	init_loadbar(t_cub3d *cub3d);
void	display_loadbar(t_window *window, t_textures *textures);
void	load_text(t_cub3d *cub3d, t_img *texture, char *asset_path);
void	load_slash_assets(t_cub3d *cub3d, t_textures *text);
void	load_fireball_assets(t_cub3d *cub3d, t_textures *text);
void	load_normal_viewmodel(t_cub3d *cub3d, t_viewmodel *viewmodels);
void	load_trip_viewmodel(t_cub3d *cub3d, t_viewmodel *viewmodels);
void	load_env_assets(t_cub3d *cub3d, t_textures *textures);
void	load_trip_assets(t_cub3d *cub3d, t_textures *textures);
void	load_others_assets(t_cub3d *cub3d, t_item *item, t_textures *textures);

/*##############################	MEMORY	##################################*/
void	free_t_img(t_window *window, t_img *img);
void	free_t_level_menu(t_level_menu *level_menu, t_window *window);
void	free_t_textures(t_textures *textures, t_item *item, t_window *window);
void	free_t_main_menu(t_main_menu *menu, t_window *window);
void	free_program_and_exit(t_cub3d *cub3d, int exit_code);
void	free_t_window(t_window *scene);
void	free_image(void *mlx, void *image);
void	free_t_scene(t_scene *scene, t_window *window);

/*##############################	PARSING	##################################*/
bool	is_enemy_spawn(char c);
bool	is_player_spawn(t_player *player, char c);
bool	is_item(char c);

void	parsing(t_cub3d *cub3d, char *argv);
void	check_map(t_cub3d *cub3d, t_map *map);
void	extract_map(t_cub3d *game, char **data);
char	**dup_tab(char **map, size_t map_row_len);
int		open_file(t_cub3d *cub3d, char *filename);
void	check_valid_element(t_cub3d *cub3d, char c);
void	extract_data(t_cub3d *game, char *filename);
void	scan_map_line(t_cub3d *cub3d, char *map_line, size_t row);
void	check_enemy_nb(t_cub3d *cub3d, int enemy_nb);
void	check_player_nb(t_cub3d *cub3d, int player_nb);
void	check_item_nb(t_cub3d *cub3d, int item_nb);
int		get_line_count(t_cub3d *cub3d, char *filename);
void	extract_assets_path(t_cub3d *game, char **data);
void	apply_enemy_state(t_enemy *randy, int nb_enemy);
void	update_map_size(t_cub3d *cub3d, char *map_line);
char	*append_line(t_cub3d *cub3d, char *buffer, char *line);
void	check_enemy_nb(t_cub3d *cub3d, int enemy_nb);
void	check_player_nb(t_cub3d *cub3d, int player_nb);
void	check_item_nb(t_cub3d *cub3d, int item_nb);

/*##############################	PHYSICS	##################################*/
bool	entity_collision(double x_origin, double y_origin, double target_x,
			double target_y);
bool	can_move_to_north(t_time *time, t_raycast *raycast, t_player *player,
			t_map *map);
bool	can_move_to_south(t_time *time, t_raycast *raycast, t_player *player,
			t_map *map);
bool	can_move_to_east(t_time *time, t_raycast *raycast, t_player *player,
			t_map *map);
bool	can_move_to_west(t_time *time, t_raycast *raycast, t_player *player,
			t_map *map);

/*##############################	RENDERING	##############################*/
long	get_time(struct timeval *start_time);
double	get_time_seconds(void);
void	update_frame_rate(t_time *time);
void	raycast_map(t_cub3d *cub3d, t_raycast *raycast, t_player *player);
void	raycast_doors(t_cub3d *cub3d, t_raycast *raycast, t_player *player);
void	raycast_floor(t_cub3d *cub3d, t_raycast *raycast, t_player *player);
void	update_raycast(t_raycast *raycast, t_player *player, int x, int w);
void	update_ray_step_x(t_raycast *raycast);
void	update_ray_step_y(t_raycast *raycast);
void	render_blink(t_scene *scene, t_window *window,
			t_blink *blink, t_img *level_menu_img);
void	render_img(t_scene *scene, t_window *window, t_img *img);
void	render_game(t_cub3d *cub3d, t_window *window, t_scene *scene);
void	render_raycast(t_cub3d *cub3d, t_raycast *raycast, int x);
void	render_floor_ray(t_cub3d *cub3d, t_floor_ray *ray, int y);
void	render_item(t_cub3d *cub3d, t_item *item, t_raycast *raycast);
void	render_enemy(t_cub3d *cub3d, t_raycast *raycast, t_scene *scene);
bool	item_on_screen(t_item_render *item, t_raycast *ray, int stripe);
int		get_tex_x(t_item_render *item, t_img *img, int stripe);
void	update_draw_attributes(t_item_draw *draw, t_item_attr *attr, t_img *img,
			int y);
void	render_viewmodel(t_cub3d *cub3d, t_window *window,
			t_viewmodel *viewmodel, t_scene *scene);
void	render_effect(t_cub3d *cub3d, t_window *window, t_scene *scene,
			t_animation *effect);
char	*get_pixel(t_img *img, int x, int y);
int		get_alpha(unsigned int color);
int		game_loop(t_cub3d *cub3d);
int		main_menu_loop(t_cub3d *cub3d);
int		level_menu_loop(t_cub3d *cub3d);
void	draw_pixel_asset(t_img *img, int x, int y, char *pixel);
void	draw_pixel_color(t_img *scene, int x, int y, int color);
void	draw_square(t_cub3d *cub3d, int x_index, int y_index,
			unsigned int color);
void	rendering_psychedelic(t_scene *scene, t_map *map, int which);
void	render_minimap_player(t_cub3d *cub3d, t_minimap *minimap,
			t_player *player, t_render *render);
void	render_minimap(t_cub3d *cub3d, t_map *map, t_minimap *minimap,
			t_player *player);
void	draw_sprite(t_item_render *item, t_raycast *ray, t_scene *scene,
			t_img *img);
void	init_sprite_draw_attributes(t_window *window, t_item_draw *draw,
			t_item_attr *attr);
void	init_enemy_attributes(t_enemy *enemy, t_player *player,
			t_raycast *raycast, t_item_attr *attr);
void	init_item_attributes(t_item *item, t_player *player,
			t_raycast *raycast, t_item_attr *attr);
void	draw_viewmodel(t_img *viewmodel, t_scene *scene, int x_start,
			int y_start);
t_img	*select_texture(t_cub3d *cub3d, t_raycast *ray, t_textures *textures);
void	draw_sprite_pixel(t_scene *scene, unsigned int color, int x, int y);
int		get_offset(t_item_render *item, t_img *img);

/*##############################	DATA	##################################*/
void	update_game_data(t_cub3d *cub3d);
void	update_player_data(t_cub3d *cub3d);
void	update_enemy(t_cub3d *cub3d);
double	linear_interpol(double start, double end, double step);

#endif
