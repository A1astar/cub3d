/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_minimap.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 15:58:36 by algadea           #+#    #+#             */
/*   Updated: 2025/04/17 15:05:44 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_minimap_ray(t_cub3d *cub3d)
{
	(void)cub3d;
}

void	render_minimap(t_cub3d *cub3d, t_scene *scene, t_map *map,
		t_minimap *minimap)
{
	int	i;
	int	j;
	int	x;
	int	y;

	(void)scene;
	i = 0;
	y = minimap->y_origin;
	while (map->map[i])
	{
		j = 0;
		x = minimap->x_origin;
		while (map->map[i][j])
		{
			if (map->map[i][j] == '0' || map->map[i][j] == 'N'
				|| map->map[i][j] == 'S' || map->map[i][j] == 'E'
				|| map->map[i][j] == 'W')
				draw_square(cub3d, x, y, HEX_GREY);
			else if (map->map[i][j] == '1')
				draw_square(cub3d, x, y, HEX_BLACK);
			else if (map->map[i][j] == 'R')
				draw_square(cub3d, x, y, HEX_RED);
			else if (map->map[i][j] == 'D')
				draw_square(cub3d, x, y, HEX_BROWN);
			j++;
			x += minimap->tile_width;
		}
		y += minimap->tile_height;
		i++;
	}
}
