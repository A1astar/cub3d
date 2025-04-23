/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_minimap.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 15:58:36 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 19:27:13 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static bool	is_floor(char **map, int y, int x)
{
	if (map[y][x] == '0' || map[y][x] == 'N' || map[y][x] == 'S'
		|| map[y][x] == 'E' || map[y][x] == 'W')
		return (true);
	return (false);
}

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
			if (is_floor(map->map, i, j))
				draw_square(cub3d, x, y, HEX_GREY);
			else if (map->map[i][j] == '1')
				draw_square(cub3d, x, y, HEX_BLACK);
			else if (map->map[i][j] == 'R')
				draw_square(cub3d, x, y, HEX_RED);
			else if (map->map[i][j] == 'C' ||map->map[i][j] == 'O')
				draw_square(cub3d, x, y, HEX_BROWN);
			j++;
			x += minimap->tile_width;
		}
		y += minimap->tile_height;
		i++;
	}
}
