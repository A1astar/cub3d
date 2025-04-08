/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:20:34 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/08 16:34:07 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CUB3D_H
# define CUB3D_H

# include "../libft/includes/libft.h"
# include "errors.h"
# include "keycodes.h"
# include "mlx.h"
# include "textures.h"
# include <fcntl.h>
# include <inttypes.h>
# include <limits.h>
# include <math.h>
# include <pthread.h>
# include <stdbool.h>
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

// enum e_error {err_none, err_malloc, err_file, };

// typedef struct s_error
// {
// 	uint8_t number;
// }	t_error;

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
	char			**ceilling_rgb;
	char			**floor_rgb;
	void			*viewmodel;
	void			*n_wall;
	void			*s_wall;
	void			*e_wall;
	void			*w_wall;
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
	t_img			img;
}					t_menu;

typedef struct s_thread
{
}					t_thread;

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

/*		ERROR		*/
void				error_msg(const char *msg, const char *context);

/*		PARSING		*/
int					init_program(int argc, char **argv, t_cub3d *game);
int					load_asset(char **map_tab, t_cub3d *game);
int					parse_map(char *file, t_cub3d *game);

#endif
