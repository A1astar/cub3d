/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hitbox_player.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:43:49 by algadea           #+#    #+#             */
/*   Updated: 2025/04/15 14:34:30 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	can_move_to_north(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y - 1][x] == '1' && player->y_pos - MOVEMENT <= y)
		return (false);
	return (true);
}

bool	can_move_to_south(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y + 1][x] == '1' && player->y_pos + MOVEMENT >= y)
		return (false);
	if(map->map[y][x + 1] == '0' && map->map[y + 1][x + 1] == '1')
	{
		if(!can_move_to_east(player, map, (int)player->x_pos, (int)player->y_pos))
			return (false);
	}
	return (true);
}

bool	can_move_to_west(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y][x - 1] == '1' && player->x_pos - MOVEMENT <= x)
		return (false);
	return (true);
}

bool	can_move_to_east(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y][x + 1] == '1' && player->x_pos + MOVEMENT >= x)
		return (false);
	return (true);
}
