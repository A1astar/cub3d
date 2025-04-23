/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast_map.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 15:55:58 by algadea           #+#    #+#             */
/*   Updated: 2025/04/23 11:08:01 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	wall_hit(t_map *map, t_raycast *raycast)
{
	if (map->map[(int)raycast->y_map][(int)raycast->x_map] == '1')
		return (true);
	return (false);
}

void	raycast_map(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
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
		render_raycast(cub3d, raycast, x);
		x++;
	}
}
