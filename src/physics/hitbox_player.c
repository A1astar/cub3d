/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hitbox_player.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:43:49 by algadea           #+#    #+#             */
/*   Updated: 2025/04/14 12:50:08 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	can_move_to_north(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y - 1][x] == '1' && player->y_pos - 0.1 <= y)
		return (false);
	return (true);
}

bool	can_move_to_south(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y + 1][x] == '1' && player->y_pos + 0.1 >= y)
		return (false);
	return (true);
}

bool	can_move_to_west(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y][x - 1] == '1' && player->x_pos - 0.1 <= x)
		return (false);
	return (true);
}

bool	can_move_to_east(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y][x + 1] == '1' && player->x_pos + 0.1 >= x)
		return (false);
	return (true);
}
