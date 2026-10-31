/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:47:14 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 15:11:12 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef RENDER_H
# define RENDER_H

typedef struct s_item_attr
{
	double		distance;
	double		relative_x;
	double		relative_y;
	double		inversion_val;
	double		trans_x;
	double		trans_y;
	int			sprite_screen_x;
	int			v_move_screen;
}				t_item_attr;

typedef struct s_item_draw
{
	int			sprite_screen_x;
	int			sprite_height;
	int			sprite_width;
	int			draw_start_x;
	int			draw_start_y;
	int			draw_end_x;
	int			draw_end_y;
	int			tex_x;
	int			tex_y;
	int			screen_to_tex_y;
}				t_item_draw;

typedef struct s_item_render
{
	t_item_attr	attr;
	t_item_draw	draw;
}				t_item_render;

typedef struct s_floor_ray
{
	double		raydir_x0;
	double		raydir_y0;
	double		raydir_x1;
	double		raydir_y1;
	int			p;
	double		pos_z;
	double		row_distance;
	double		floor_step_x;
	double		floor_step_y;
	double		floor_x;
	double		floor_y;
}				t_floor_ray;

typedef struct s_floor_draw
{
	int			cell_x;
	int			cell_y;
	int			tex_x;
	int			tex_y;
}				t_floor_draw;

typedef struct s_ray_attributes
{
	bool		hit_wall;
	double		camera_x;
	double		raydir_x;
	double		raydir_y;
	double		side_dist_x;
	double		side_dist_y;
	double		delta_dist_x;
	double		delta_dist_y;
	int			map_pos_x;
	int			map_pos_y;
	int			step_x;
	int			step_y;
	int			side;
}				t_ray_attributes;

typedef struct s_draw_attributes
{
	double		perp_wall_dist;
	int			line_height;
	int			draw_start;
	int			draw_end;
	double		wall_x;
	int			tex_x;
	int			tex_y;
	double		step;
	double		tex_pos;
}				t_draw_attributes;

typedef struct s_raycast
{
	int			width;
	int			height;
	int			hit;
	int			side;
	int			line_height;
	int			pitch;
	int			draw_start;
	int			draw_end;
	int			x_step;
	int			y_step;
	double		x_dir;
	double		y_dir;
	double		x_old_dir;
	double		y_old_dir;
	double		x_camera;
	double		y_camera;
	double		x_raydir;
	double		y_raydir;
	double		x_plane;
	double		y_plane;
	double		x_old_plane;
	double		y_old_plane;
	double		x_map;
	double		y_map;
	double		x_delta;
	double		y_delta;
	double		x_side;
	double		y_side;
	double		perp_wall;
	double		fov;
	double		fov_rad;
	double		z_buffer[WINDOW_WIDTH];
}				t_raycast;

#endif
