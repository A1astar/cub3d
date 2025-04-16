/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 15:55:58 by algadea           #+#    #+#             */
/*   Updated: 2025/04/16 18:03:14 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/cub3d.h"

void	upload_raycast_side(t_raycast *raycast, t_player *player, int x, int w)
{
	if (raycast->x_dir < 0)
	{
		raycast->x_step = -1;
		raycast->x_side = (player->x_pos - raycast->x_map) * raycast->x_delta;
	}
	else
	{
		raycast->x_step = 1;
		raycast->x_side = (raycast->x_map + 1.0 - player->x_pos) * raycast->x_delta;
	}
	if (raycast->y_dir < 0)
	{
		raycast->y_step = -1;
		raycast->y_side = (player->y_pos - raycast->y_map) * raycast->y_delta;
	}
	else
	{
		raycast->y_step = 1;
		raycast->y_side = (raycast->y_map + 1.0 - player->y_pos) * raycast->y_delta;
	}
}

void	upload_raycast_delta(t_raycast *raycast, t_player *player, int x, int w)
{
	if (raycast->x_raydir == 0)
		raycast->x_delta = 1e30;
	else
		raycast->x_delta = abs(1 / raycast->x_raydir);

	if (raycast->y_raydir == 0)
		raycast->y_delta = 1e30;
	else
		raycast->y_delta = abs(1 / raycast->y_raydir);
}

void	upload_raycast(t_raycast *raycast, t_player *player, int x, int w)
{
	raycast->x_camera = 2 * x / (double)w - 1;
	raycast->x_raydir = raycast->x_dir + raycast->x_plane * raycast->x_camera;
	raycast->y_raydir = raycast->y_dir + raycast->y_plane * raycast->x_camera;
	raycast->x_map = (int)player->x_pos;
	raycast->y_map = (int)player->y_pos;

	upload_raycast_delta(raycast, player, x ,w);
	upload_raycast_side(raycast, player, x, w);
}

bool	wall_hit(t_map *map, t_raycast *raycast)
{
	if (map->map[(int)raycast->x_map][(int)raycast->x_map] > 0)
		return (true);
	return (false);
}

void	render_raycast(t_cub3d *cub3d, t_raycast *raycast)
{
	raycast->line_height = (int)(raycast->h / raycast->perp_wall);
	raycast->pitch = 100;

	raycast->draw_start = -raycast->line_height / 2 + raycast->h / 2 + raycast->pitch;
	if (raycast->draw_start < 0 )
		raycast->draw_start = 0;

	raycast->draw_end = raycast->line_height / 2 + raycast->h / 2 + raycast->pitch;
	if (raycast->draw_end >= raycast->h)
		raycast->draw_end = raycast->h - 1;
	
}

void	raycast(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
{
	int	x;

	x = 0;
	while (x < raycast->w)
	{
		upload_raycast(raycast, player, x, w);
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
		render_raycast(cub3d, raycast);
		x++;
	}
}
