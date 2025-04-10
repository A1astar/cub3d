/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_checking.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 12:12:39 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/10 18:03:52 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	flood_fill(char **map, int x, int y, t_map *content,
		size_t map_heigt)
{
	if (!content->is_valid_map)
		return ;
	if (y < 0 || y >= (int)map_heigt || x < 0 || x >= (int)ft_strlen(map[y]))
	{
		error_msg(MAP_UNCL, NULL);
		content->is_valid_map = false;
		return ;
	}
	if (map[y][x] == '1' || map[y][x] == '*')
		return ;
	if (map[y][x] <= ' ' || map[y][x] == '\0')
	{
		content->is_valid_map = false;
		return ;
	}
	map[y][x] = '*';
	flood_fill(map, x + 1, y, content, map_heigt);
	flood_fill(map, x - 1, y, content, map_heigt);
	flood_fill(map, x, y + 1, content, map_heigt);
	flood_fill(map, x, y - 1, content, map_heigt);
}

static void	scan_map_line(t_cub3d *cub3d, t_map *map, char *map_line,
		size_t row)
{
	size_t	i;

	i = 0;
	while (map_line[i])
	{
		if (is_player_spawn(map, map_line[i]))
		{
			cub3d->player.x_pos = i;
			cub3d->player.y_pos = row;
			cub3d->nb_player++;
			check_player_nb(cub3d, cub3d->nb_player);
		}
		else if (is_enemy_spawn(map_line[i]))
		{
			check_enemy_nb(cub3d, cub3d->nb_enemy);
			apply_enemy_state(&cub3d->randy[cub3d->nb_enemy], cub3d->nb_enemy);
			cub3d->randy[cub3d->nb_enemy].x_pos = i;
			cub3d->randy[cub3d->nb_enemy].y_pos = row;
			cub3d->nb_enemy++;
		}
		else
			check_valid_element(cub3d, map_line[i]);
		i++;
	}
}

void	check_map(t_cub3d *cub3d, t_map *map)
{
	size_t	map_height;
	char	**map_copy;

	map_height = 0;
	map_copy = NULL;
	while (map->map[map_height])
	{
		scan_map_line(cub3d, &cub3d->map, map->map[map_height], map_height);
		map_height++;
	}
	if (cub3d->nb_player == 0)
	{
		error_msg("Incorret map, no player found", NULL);
		free_program(cub3d);
	}
	map_copy = dup_tab(map->map, map_height);
	if (!map_copy)
		free_program(cub3d);
	map->is_valid_map = true;
	flood_fill(map_copy, cub3d->player.x_pos, cub3d->player.y_pos, &cub3d->map,
		map_height);
	ft_free_tab((void **)map_copy);
	if (!cub3d->map.is_valid_map)
		free_program(cub3d);
}
