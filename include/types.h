/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   types.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:36:23 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 08:57:09 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TYPES_H
# define TYPES_H

# include "cub3d.h"

typedef struct s_window
{
	int				width;
	int				height;
	int				half_width;
	int				half_height;
	void			*win_ptr;
	void			*mlx_ptr;
	uint8_t			resolution;
}					t_window;

typedef struct s_setting
{
	uint8_t			difficulty;
	uint8_t			velocity;
	bool			god_mod;
	bool			drunk_mod;
}					t_setting;

typedef struct s_key_state
{
	bool			w;
	bool			a;
	bool			s;
	bool			d;
	bool			up;
	bool			left;
	bool			down;
	bool			right;
	bool			shift_l;
}					t_key_state;

typedef struct s_scene
{
	// struct timeval	frame_start;
	// struct timeval	frame_end;
	long			frame_start;
	long			frame_end;
	int				framerate;
	double			frame_delay_ms;
	int				fps_counter;
	int				delta_time_ms;
	double			delta_time;
	long			frame_ms;
	t_img			img;
}					t_scene;

typedef struct s_cub3d
{
	struct timeval	time;
	int				nb_enemy;
	int				nb_player;
	int				nb_item;
	uint8_t			program_state;
	uint8_t			rendering_state;
	t_map			map;
	t_scene			scene;
	t_player		player;
	t_window		window;
	t_minimap		minimap;
	t_setting		setting;
	t_raycast		raycast;
	t_enemy			randy[4];
	t_item			item;
	t_textures		textures;
	t_main_menu		main_menu;
	t_key_state		key_state;
	t_level_menu	level_menu;
	t_thread		thread;
}					t_cub3d;

#endif
