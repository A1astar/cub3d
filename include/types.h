/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   types.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:36:23 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/12 16:20:28 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TYPES_H
# define TYPES_H

typedef struct s_time
{
	struct timeval	game_start_timeval;
	double			current_frame;
	double			previous_frame;
	int				target_fps;
	int				target_dt;
	int				fps_counter;
	double			delta_time;
	double			target_frame_time;
}					t_time;

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
	t_img			img;
}					t_scene;

typedef struct s_cub3d
{
	int				nb_enemy;
	int				nb_player;
	int				nb_item;
	long			cpu_core_nbr;
	uint8_t			program_state;
	uint8_t			rendering_state;
	t_map			map;
	t_time			time;
	t_item			item;
	t_scene			scene;
	t_player		player;
	t_window		window;
	t_thread		*thread;
	t_minimap		minimap;
	t_setting		setting;
	t_raycast		raycast;
	t_enemy			randy[4];
	t_textures		textures;
	t_main_menu		main_menu;
	t_key_state		key_state;
	t_level_menu	level_menu;
	pthread_mutex_t	lock;
}					t_cub3d;

#endif
