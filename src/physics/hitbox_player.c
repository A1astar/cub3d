/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hitbox_player.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 14:40:25 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/23 11:32:33 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	can_move_to_north(t_raycast *raycast, t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos + raycast->y_dir
			* VELOCITY)][(int)player->x_pos] == '1'
		|| map->map[(int)player->y_pos][(int)(player->x_pos + raycast->x_dir
			* VELOCITY)] == '1')
		return (false);
	else if (map->map[(int)(player->y_pos + raycast->y_dir
			* VELOCITY)][(int)player->x_pos] == 'C'
		|| map->map[(int)player->y_pos][(int)(player->x_pos + raycast->x_dir
			* VELOCITY)] == 'C')
		return (false);
	else
		return (true);
}

bool	can_move_to_south(t_raycast *raycast, t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos - raycast->y_dir
			* VELOCITY)][(int)player->x_pos] == '1'
		|| map->map[(int)player->y_pos][(int)(player->x_pos - raycast->x_dir
			* VELOCITY)] == '1')
		return (false);
	else if (map->map[(int)(player->y_pos - raycast->y_dir
			* VELOCITY)][(int)player->x_pos] == 'C'
		|| map->map[(int)player->y_pos][(int)(player->x_pos - raycast->x_dir
			* VELOCITY)] == 'C')
		return (false);
	else
		return (true);
}

bool	can_move_to_west(t_player *player, t_map *map, int x, int y)
{
	int	y_size;

	y_size = (int)(player->y_pos + 0.5);
	if ((map->map[y][x - 1] == '1' || map->map[y_size][x - 1] == '1')
		&& player->x_pos - MOVEMENT <= x)
		return (false);
	return (true);
}

bool	can_move_to_east(t_player *player, t_map *map, int x, int y)
{
	int	y_size;

	y_size = (int)(player->y_pos + 0.5);
	if ((map->map[y][x + 1] == '1' || map->map[y_size][x + 1] == '1')
		&& player->x_pos + MOVEMENT >= x)
		return (false);
	return (true);
}
