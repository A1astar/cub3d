/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_checking.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 12:12:39 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 11:55:45 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	flood_fill(char **map, int x, int y, t_map *content)
{
	if (!content->is_valid_map)
		return ;
	if (y < 0 || y >= (int)content->height || x < 0
		|| x > (int)ft_strlen(map[y]))
	{
		error_msg(MAP_UNCL, NULL);
		content->is_valid_map = false;
		return ;
	}
	if (map[y][x] == '1' || map[y][x] == '*')
		return ;
	if (map[y][x] <= ' ' || map[y][x] == '\0')
	{
		error_msg(MAP_UNCL, NULL);
		content->is_valid_map = false;
		return ;
	}
	map[y][x] = '*';
	flood_fill(map, x + 1, y, content);
	flood_fill(map, x - 1, y, content);
	flood_fill(map, x, y + 1, content);
	flood_fill(map, x, y - 1, content);
}

void	check_map(t_cub3d *cub3d, t_map *map)
{
	char	**map_copy;

	map_copy = NULL;
	while (map->map[map->height])
	{
		scan_map_line(cub3d, map->map[map->height], map->height);
		map->height++;
	}
	cub3d->minimap.height = map->height;
	if (cub3d->nb_player == 0)
	{
		error_msg("Incorret map, no player found", NULL);
		free_program(cub3d);
	}
	map_copy = dup_tab(map->map, map->height);
	if (!map_copy)
		free_program(cub3d);
	map->is_valid_map = true;
	flood_fill(map_copy, cub3d->player.x_pos, cub3d->player.y_pos, &cub3d->map);
	ft_free_tab((void **)map_copy);
	if (!cub3d->map.is_valid_map)
		free_program(cub3d);
}
