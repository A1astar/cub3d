/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 15:55:58 by algadea           #+#    #+#             */
/*   Updated: 2025/04/16 22:32:28 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/cub3d.h"

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
		raycast->x_side = (raycast->x_map + 1.0 - player->x_pos) * raycast->x_delta;
	}
	if (raycast->y_raydir < 0)
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
void	draw_vertical_line(t_scene *scene, int x, int draw_start, int draw_end, int color)
{
	printf("draw start = %d, draw end = %d\n", draw_start, draw_end);
	while (draw_start < draw_end)
	{
		draw_pixel(&scene->img, x, draw_start, color);
		draw_start++;
	}
}

void	render_raycast(t_cub3d *cub3d, t_raycast *raycast, int x)
{
	raycast->line_height = (int)(raycast->h / raycast->perp_wall);
	raycast->pitch = 100;

	printf("line height = %d\n", raycast->line_height);
	printf("perp wall = %f\n", raycast->perp_wall);
	raycast->draw_start = -raycast->line_height / 2 + raycast->h / 2;
	if (raycast->draw_start < 0 )
		raycast->draw_start = 0;

	raycast->draw_end = raycast->line_height / 2 + raycast->h / 2;
	if (raycast->draw_end >= raycast->h)
		raycast->draw_end = raycast->h - 1;

	static int color = 0x00FFFFFF;

	if (raycast->side == 1)
		color = color / 2;
	draw_vertical_line(&cub3d->scene, x, raycast->draw_start, raycast->draw_end, color);
	
}

bool	wall_hit(t_map *map, t_raycast *raycast)
{
	if (map->map[(int)raycast->y_map][(int)raycast->x_map] == '1')
		return (true);
	return (false);
}

void	raycast(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
{
	int	x;

	x = 0;
	while (x < raycast->w)
	{
		printf("x = %d\n", x);
		update_raycast(raycast, player, x, raycast->w);
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
		printf("here\n");
		if (raycast->side == 0)
			raycast->perp_wall = raycast->x_side - raycast->x_delta;
		else
			raycast->perp_wall = raycast->y_side - raycast->y_delta;
		render_raycast(cub3d, raycast, x);
		x++;
	}
}
