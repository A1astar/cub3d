/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast_update.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 19:03:43 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/23 11:08:48 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	update_raycast_side(t_raycast *raycast, t_player *player)
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

static void	update_raycast_delta(t_raycast *raycast)
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

void	update_ray_step_x(t_raycast *raycast)
{
	raycast->x_side += raycast->x_delta;
	raycast->x_map += raycast->x_step;
	raycast->side = 0;
}

void	update_ray_step_y(t_raycast *raycast)
{
	raycast->y_side += raycast->y_delta;
	raycast->y_map += raycast->y_step;
	raycast->side = 1;
}
