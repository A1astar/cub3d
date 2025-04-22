/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast_doors.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 18:37:01 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/22 19:16:48 by alacroix         ###   ########.fr       */
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
		if (is_a_door(&cub3d->map, raycast))
			render_raycast(cub3d, raycast, x);
		x++;
	}
}
