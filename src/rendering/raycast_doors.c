/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast_doors.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 18:37:01 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/28 14:34:25 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static bool	wall_hit(t_map *map, t_raycast *raycast)
{
	if (map->map[(int)raycast->y_map][(int)raycast->x_map] == 'O'
		|| map->map[(int)raycast->y_map][(int)raycast->x_map] == 'C'
		|| map->map[(int)raycast->y_map][(int)raycast->x_map] == '1')
		return (true);
	return (false);
}

static bool	is_a_door(t_map *map, t_raycast *raycast)
{
	if (map->map[(int)raycast->y_map][(int)raycast->x_map] == 'O'
		|| map->map[(int)raycast->y_map][(int)raycast->x_map] == 'C')
		return (true);
	return (false);
}

void	raycast_doors(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
{
	int	x;

	x = 0;
	while (x < raycast->width)
	{
		update_raycast(raycast, player, x, raycast->width);
		while (!wall_hit(&cub3d->map, &cub3d->raycast))
		{
			if (raycast->x_side < raycast->y_side)
				update_ray_step_x(raycast);
			else
				update_ray_step_y(raycast);
		}
		if (raycast->side == 0)
			raycast->perp_wall = raycast->x_side - raycast->x_delta;
		else
			raycast->perp_wall = raycast->y_side - raycast->y_delta;
		if (is_a_door(&cub3d->map, raycast))
		{
			render_raycast(cub3d, raycast, x);
			if(raycast->perp_wall < raycast->z_buffer[x])
				raycast->z_buffer[x] = raycast->perp_wall;
		}
		x++;
	}
}
