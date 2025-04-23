/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hitbox_player.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 14:40:25 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/23 21:33:07 by algadea          ###   ########.fr       */
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
	return (true);
}

bool	can_move_to_west(t_raycast *raycast, t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos - raycast->x_dir
			* VELOCITY)][(int)player->x_pos] == '1'
		|| map->map[(int)player->y_pos][(int)(player->x_pos + raycast->y_dir
			* VELOCITY)] == '1')
		return (false);
	else if (map->map[(int)(player->y_pos - raycast->x_dir
			* VELOCITY)][(int)player->x_pos] == 'C'
		|| map->map[(int)player->y_pos][(int)(player->x_pos + raycast->y_dir
			* VELOCITY)] == 'C')
		return (false);
	return (true);
}

bool	can_move_to_east(t_raycast *raycast, t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos + raycast->x_dir
			* VELOCITY)][(int)player->x_pos] == '1'
		|| map->map[(int)player->y_pos][(int)(player->x_pos - raycast->y_dir
			* VELOCITY)] == '1')
		return (false);
	else if (map->map[(int)(player->y_pos + raycast->x_dir
			* VELOCITY)][(int)player->x_pos] == 'C'
		|| map->map[(int)player->y_pos][(int)(player->x_pos - raycast->y_dir
			* VELOCITY)] == 'C')
		return (false);
	return (true);
}
