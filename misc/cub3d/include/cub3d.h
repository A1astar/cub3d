/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/20 11:52:49 by agadea            #+#    #+#             */
/*   Updated: 2024/10/16 22:51:25 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CUB3D_H
# define CUB3D_H

# include "../libft/include/libft.h"
# include "../minilibx-linux/mlx.h"
# include "cub3d_player.h"
# include <X11/keysym.h>
# include <inttypes.h>
# include <stdbool.h>
# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>
# include <errno.h>
# include <X11/X.h>
# include <math.h>

# define WINDOW_HEIGHT 720
# define WINDOW_WIDTH 1280

# define GRID_HEIGHT 20
# define GRID_WIDTH 20

# define SQUARE_HEIGHT 64
# define SQUARE_WIDTH 64

# define MASK_SIZE 8
# define WRONG_ELEMENT -1

# define MAP_FIRST_LINE 0
# define MAP_LAST_LINE map->height - 1

# define PREVIOUS_LINE map->data[i - 1]

# define IS_NOT_CLOSED_BY_WALL line[i] != '1'

typedef uint64_t	t_vector;

enum e_state_menu
{
	main_menu,
	level,
	stop
};

enum e_state_game
{
	play,
	menu
};

enum e_errname
{
	err_mlx_ptr,
	err_win_ptr,
	err_arg_nbr,
	err_xpm_to_image,
	err_filename,
	err_id,
	fileopen,
	err_floor,
	err_ceiling,
	err_malloc,
	err_map_format,
	err_map_starting_pos,
};

enum e_element
{
	north,
	east,
	west,
	south,
	e_floor,
	ceiling
};

enum e_color
{
	rgb = 3
};

typedef struct s_img
{
	void	*ptr;
	char	*addr;
	int		endian;
	int		size_line;
	int		bpp;
}	t_img;

typedef struct s_xpm
{
	int		width;
	int		height;
	void	*ptr;
}	t_xpm;

typedef struct s_map
{
	uint64_t	width;
	uint64_t	height;
	t_xpm		*no_texture;
	t_xpm		*so_texture;
	t_xpm		*we_texture;
	t_xpm		*ea_texture;
	uint8_t		ceiling[rgb];
	uint8_t		floor[rgb];
	char		**data;
}	t_map;

typedef struct s_file
{
	int			fd;
	uint8_t		mask;
	int			offset;
	char		*no_filename;
	char		*so_filename;
	char		*we_filename;
	char		*ea_filename;
	char		**data;
}	t_file;

typedef struct s_scene
{
	t_img	*img;
}	t_scene;


typedef struct s_window
{
	int	height;
	int	width;
}	t_window;

typedef struct s_raycast
{
	double	posX;
	double	posY;
	double	dirX;
	double	dirY;
	double	planeX;
	double	planeY;

	double	sideX;
	double	sideY;
	double	deltaDistX;
	double	deltaDistY;

	double	time;
	double	oldtime;
}	t_raycast;

typedef struct s_minimap
{
	uint16_t	height;
	uint16_t	width;
	uint16_t	x_pos;
	uint16_t	y_pos;
	// t_img		*img;
}	t_minimap;

typedef struct s_main_menu
{
	t_xpm		*xpm;
	uint8_t		height;
	uint8_t		width;
	uint32_t	color;
	uint32_t	pos_x;
	uint32_t	pos_y;
}	t_main_menu;

typedef struct s_cub3d
{
	uint8_t		program_state;
	void		*win_ptr;
	void		*mlx_ptr;
	t_map		*map;
	t_file		*file;
	t_scene		*scene;
	t_player	*player;
	t_window	*window;
	t_raycast	*raycast;
	t_minimap	*minimap;
	t_main_menu	*main_menu;
}	t_cub3d;

/*		ASSET		*/
void	load_asset(t_cub3d *cub3d);
t_img	*create_new_img(t_cub3d *cub3d, t_window *window, void *mlx_ptr);

/*		HOOK		*/
int		exit_hook(t_cub3d *cub3d);

int		menu_mouse_hook(int keynum);
int		menu_loop_hook(t_cub3d *cub3d);
int		menu_key_hook(int keynum, t_cub3d *cub3d);

int		level_mouse_hook(int keynum);
int		level_loop_hook(t_cub3d *cub3d);
int		level_key_hook(int keynum, t_cub3d *cub3d);

bool	have_collision_north(t_cub3d *cub3d, t_player *player);
bool	have_collision_south(t_cub3d *cub3d, t_player *player);
bool	have_collision_east(t_cub3d *cub3d, t_player *player);
bool	have_collision_west(t_cub3d *cub3d, t_player *player);
void	player_event(t_cub3d *cub3d, t_player *player, int keynum);

/*		RENDER		*/
void	render_menu(t_cub3d *cub3d);
void	render_level(t_cub3d *cub3d);
void	set_menu_loop(t_cub3d *cub3d);
void	set_level_loop(t_cub3d *cub3d);
void	draw_pixel(t_img *img, int x, int y, int color);
void	clean_scene_img(t_window *window, t_scene *scene);
void	render_player(t_cub3d *cub3d, t_player *player);
void	render_minimap(t_cub3d *cub3d, t_scene *scene, t_minimap *minimap);

/*		INIT		*/
void	init_struct_attr(t_cub3d *cub3d);
void	init_struct_attr_2(t_cub3d *cub3d);
void	init_cub3d(t_cub3d *cub3d, char *argv);

/*		MEMORY		*/
void	free_img(t_img *img);
void	free_xpm_file(t_xpm *xpm);
void	free_2d_char(char **data);
void	clean_program(t_cub3d *cub3d);
void	alloc_struct_attr(t_cub3d *cub3d);
void	print_error_then_exit_program(t_cub3d *cub3d, int errnum);

/*		PARSING		*/
void	parse_extracted_data(t_cub3d *cub3d);
void	set_mask_element(uint8_t element, uint8_t *mask);
bool	is_element_already_set(uint8_t element, uint8_t mask);
bool	is_filename_correct(char *filename);
bool	are_all_elements_set(uint32_t bitfield);

char	*get_rgb_value(char *line);
void	extract_map(t_cub3d *cub3d);
void	extract_elements(t_cub3d *cub3d);
void	extract_file(t_cub3d *cub3d, char *filename);
void	extract_floor_data(t_cub3d *cub3d, char *line);
void	extract_input_file(t_cub3d *cub3d, char *argv);
void	extract_ceiling_data(t_cub3d *cub3d, char *line);
void	extract_texture_data(t_cub3d *cub3d, char *id,
			int texture_id, char *line);

bool	is_space(char c);
bool	is_valid_floor(char *element);
bool	is_valid_ceiling(char *element);
bool	is_filename_correct(char *filename);
bool	is_valid_path(char *line, char *id);
bool	is_valid_texture(char *element, int *texture);

char	*get_identifier(char *line);
void	print_file_data(t_map *map);
void	print_map_data(char **data);

#endif