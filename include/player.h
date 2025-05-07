/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:40:49 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/07 11:55:30 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PLAYER_H
# define PLAYER_H

typedef struct s_hitbox
{
	double			x_origin;
	double			x_width;
	double			y_origin;
	double			y_height;
}					t_hitbox;

typedef struct s_render
{
	double			px;
	double			py;
	double			x_cent;
	double			y_cent;
	double			x_rot;
	double			y_rot;
}					t_render;

typedef struct s_viewmodel
{
	bool			orientation;
	int				draw_pos;
	t_img			normal_stand;
	t_img			trip_stand;
	t_img			normal_sword_sprite[4];
	t_img			normal_wand_sprite[4];
	t_img			trip_sword_sprite[4];
	t_img			trip_cig_sprite[4];
}					t_viewmodel;

typedef struct s_animation
{
	int				frame_count;
	int				current_frame;
	int				frame_delay;
	int				delay_count;
	t_anim_state	state;
	bool			active;
}					t_animation;

typedef struct s_player
{
	double			velocity;
	int				movement_w_s;
	int				movement_a_d;
	t_viewmodel		viewmodel;
	t_render		render;
	t_orientation	orientation;
	t_animation		animation;
	t_animation		magic;
	t_animation		slash;

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
}					t_player;

#endif
