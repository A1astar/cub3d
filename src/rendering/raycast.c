/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 15:55:58 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 16:31:55 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	update_raycast_side(t_raycast *raycast, t_player *player)
// {
// 	if (raycast->x_raydir < 0)
// 	{
// 		raycast->x_step = -1;
// 		raycast->x_side = (player->x_pos - raycast->x_map) * raycast->x_delta;
// 	}
// 	else
// 	{
// 		raycast->x_step = 1;
// 		raycast->x_side = (raycast->x_map + 1.0 - player->x_pos)
// 			* raycast->x_delta;
// 	}
// 	if (raycast->y_raydir < 0)
// 	{
// 		raycast->y_step = -1;
// 		raycast->y_side = (player->y_pos - raycast->y_map) * raycast->y_delta;
// 	}
// 	else
// 	{
// 		raycast->y_step = 1;
// 		raycast->y_side = (raycast->y_map + 1.0 - player->y_pos)
// 			* raycast->y_delta;
// 	}
// }

// void	update_raycast_delta(t_raycast *raycast)
// {
// 	if (raycast->x_raydir == 0)
// 		raycast->x_delta = 1e30;
// 	else
// 		raycast->x_delta = fabs(1 / raycast->x_raydir);
// 	if (raycast->y_raydir == 0)
// 		raycast->y_delta = 1e30;
// 	else
// 		raycast->y_delta = fabs(1 / raycast->y_raydir);
// }

// void	update_raycast(t_raycast *raycast, t_player *player, int x, int w)
// {
// 	raycast->x_camera = 2 * x / (double)w - 1;
// 	raycast->x_raydir = raycast->x_dir + raycast->x_plane * raycast->x_camera;
// 	raycast->y_raydir = raycast->y_dir + raycast->y_plane * raycast->x_camera;
// 	raycast->x_map = (int)player->x_pos;
// 	raycast->y_map = (int)player->y_pos;
// 	update_raycast_delta(raycast);
// 	update_raycast_side(raycast, player);
// }
// void	draw_vertical_line(t_scene *scene, int x, int draw_start, int draw_end,
// 		int color)
// {
// 	while (draw_start < draw_end)
// 	{
// 		draw_pixel(&scene->img, x, draw_start, color);
// 		draw_start++;
// 	}
// }

// void	render_raycast(t_cub3d *cub3d, t_raycast *raycast, int x)
// {
// 	static int	color = 0x00FFFFFF;

// 	raycast->line_height = (int)(raycast->height / raycast->perp_wall);
// 	raycast->pitch = 100;
// 	raycast->draw_start = -raycast->line_height / 2 + raycast->height / 2;
// 	if (raycast->draw_start < 0)
// 		raycast->draw_start = 0;
// 	raycast->draw_end = raycast->line_height / 2 + raycast->height / 2;
// 	if (raycast->draw_end >= raycast->height)
// 		raycast->draw_end = raycast->height - 1;
// 	if (raycast->side == 1)
// 		color = color / 2;
// 	draw_vertical_line(&cub3d->scene, x, raycast->draw_start, raycast->draw_end,
// 		color);
// }

// bool	wall_hit(t_map *map, t_raycast *raycast)
// {
// 	if (map->map[(int)raycast->y_map][(int)raycast->x_map] == '1')
// 		return (true);
// 	return (false);
// }

// void	raycast(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
// {
// 	int	x;

// 	x = 0;
// 	while (x < raycast->width)
// 	{
// 		update_raycast(raycast, player, x, raycast->width);
// 		while (!wall_hit(&cub3d->map, &cub3d->raycast))
// 		{
// 			if (raycast->x_side < raycast->y_side)
// 			{
// 				raycast->x_side += raycast->x_delta;
// 				raycast->x_map += raycast->x_step;
// 				raycast->side = 0;
// 			}
// 			else
// 			{
// 				raycast->y_side += raycast->y_delta;
// 				raycast->y_map += raycast->y_step;
// 				raycast->side = 1;
// 			}
// 		}
// 		if (raycast->side == 0)
// 			raycast->perp_wall = raycast->x_side - raycast->x_delta;
// 		else
// 			raycast->perp_wall = raycast->y_side - raycast->y_delta;
// 		render_raycast(cub3d, raycast, x);
// 		x++;
// 	}
// }

void	update_raycast_side(t_raycast *raycast, t_player *player)
{
	if (raycast->x_raydir < 0)
	{
		raycast->x_step = -1;
		raycast->x_side = (player->x_pos - raycast->x_map) * raycast->x_delta;
	}
	else
	{
		raycast->x_step = 1;
		raycast->x_side = (raycast->x_map + 1.0 - player->x_pos)
			* raycast->x_delta;
	}
	if (raycast->y_raydir < 0)
	{
		raycast->y_step = -1;
		raycast->y_side = (player->y_pos - raycast->y_map) * raycast->y_delta;
	}
	else
	{
		raycast->y_step = 1;
		raycast->y_side = (raycast->y_map + 1.0 - player->y_pos)
			* raycast->y_delta;
	}
}

void	update_raycast_delta(t_raycast *raycast)
{
	if (raycast->x_raydir == 0)
		raycast->x_delta = 1e30;
	else
		raycast->x_delta = fabs(1 / raycast->x_raydir);
	if (raycast->y_raydir == 0)
		raycast->y_delta = 1e30;
	else
		raycast->y_delta = fabs(1 / raycast->y_raydir);
}

void	update_raycast(t_raycast *raycast, t_player *player, int x, int w)
{
	raycast->x_camera = 2 * x / (double)w - 1;
	raycast->x_raydir = raycast->x_dir + raycast->x_plane * raycast->x_camera;
	raycast->y_raydir = raycast->y_dir + raycast->y_plane * raycast->x_camera;
	raycast->x_map = (int)player->x_pos;
	raycast->y_map = (int)player->y_pos;
	update_raycast_delta(raycast);
	update_raycast_side(raycast, player);
}

t_img	*select_texture(t_cub3d *cub3d, t_raycast *ray, t_textures *textures)
{
	if (cub3d->map.map[(int)ray->y_map][(int)ray->x_map] == 'D')
		return (&textures->o_door);
	if (ray->side == 0)
	{
		if (((int)ray->x_map + (int)ray->y_map) % 2 != 0)
			return (&textures->wall_one);
		if (ray->x_raydir > 0)
			return (&textures->w_wall);
		else
			return (&textures->e_wall);
	}
	else
	{
		if (((int)ray->x_map + (int)ray->y_map) % 2 != 0)
			return (&textures->wall_two);
		if (ray->y_raydir > 0)
			return (&textures->n_wall);
		else
			return (&textures->s_wall);
	}
}

// static int get_alpha(unsigned int color)
// {
// 	unsigned char *a;

// 	a = (unsigned char *)&color;
// 	return(a[0]);
// }

void	draw_texture(t_cub3d *cub3d, t_raycast *ray, t_draw_attributes *draw,
		int ray_num)
{
	int				offset;
	unsigned int	color;
	t_img			*img;

	color = 0;
	img = select_texture(cub3d, ray, &cub3d->textures);
	draw->tex_x = (int)(draw->wall_x * (double)(img->width));
	if (draw->tex_x < 0)
		draw->tex_x = 0;
	else if (draw->tex_x >= img->width)
		draw->tex_x = img->width - 1;
	if (ray->side == 0 && ray->x_raydir > 0)
		draw->tex_x = img->width - draw->tex_x - 1;
	if (ray->side == 1 && ray->y_raydir < 0)
		draw->tex_x = img->width - draw->tex_x - 1;
	draw->step = 1.0 * img->height / draw->line_height;
	draw->tex_pos = (draw->draw_start - WINDOW_HEIGHT / 2 + draw->line_height
			/ 2) * draw->step;
	while (draw->draw_start < draw->draw_end)
	{
		draw->tex_y = (int)(draw->tex_pos);
		if (draw->tex_y >= img->height)
			draw->tex_y = img->height - 1;
		draw->tex_pos += draw->step;
		offset = draw->tex_y * img->size_line + draw->tex_x * (img->bpp / 8);
		color = *(unsigned int *)(img->addr + offset);
		if (ray->side == 1 && (color >> 24) != 0)
			color = (color >> 1) & 0x7F7F7F;
		//if(get_alpha(color) != 0)
		draw_pixel(&cub3d->scene.img, ray_num, draw->draw_start, color);
		draw->draw_start++;
	}
}

void	init_draw_attributes(t_raycast *ray, t_draw_attributes *draw,
		t_player *player)
{
	if (ray->side == 0)
		draw->perp_wall_dist = (ray->x_side - ray->x_delta);
	else
		draw->perp_wall_dist = (ray->y_side - ray->y_delta);
	draw->line_height = (int)(WINDOW_HEIGHT / draw->perp_wall_dist);
	draw->draw_start = -draw->line_height / 2 + WINDOW_HEIGHT / 2;
	if (draw->draw_start < 0)
		draw->draw_start = 0;
	draw->draw_end = draw->line_height / 2 + WINDOW_HEIGHT / 2;
	if (draw->draw_end >= WINDOW_HEIGHT)
		draw->draw_end = WINDOW_HEIGHT - 1;
	if (ray->side == 0)
		draw->wall_x = player->y_pos + draw->perp_wall_dist * ray->y_raydir;
	else
		draw->wall_x = player->x_pos + draw->perp_wall_dist * ray->x_raydir;
	draw->wall_x -= floor(draw->wall_x);
}

void	render_raycast(t_cub3d *cub3d, t_raycast *raycast, int x)
{
	t_draw_attributes	draw;

	ft_bzero(&draw, sizeof(t_draw_attributes));
	init_draw_attributes(raycast, &draw, &cub3d->player);
	draw_texture(cub3d, raycast, &draw, x);
}

bool	wall_hit(t_map *map, t_raycast *raycast)
{
	if (map->map[(int)raycast->y_map][(int)raycast->x_map] == '1')
		return (true);
	if (map->map[(int)raycast->y_map][(int)raycast->x_map] == 'D')
		return (true);
	return (false);
}

void	raycast(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
{
	int	x;

	x = 0;
	while (x < raycast->width)
	{
		update_raycast(raycast, player, x, raycast->width);
		while (!wall_hit(&cub3d->map, &cub3d->raycast))
		{
			if (raycast->x_side < raycast->y_side)
			{
				raycast->x_side += raycast->x_delta;
				raycast->x_map += raycast->x_step;
				raycast->side = 0;
			}
			else
			{
				raycast->y_side += raycast->y_delta;
				raycast->y_map += raycast->y_step;
				raycast->side = 1;
			}
		}
		if (raycast->side == 0)
			raycast->perp_wall = raycast->x_side - raycast->x_delta;
		else
			raycast->perp_wall = raycast->y_side - raycast->y_delta;
		render_raycast(cub3d, raycast, x);
		x++;
	}
}
