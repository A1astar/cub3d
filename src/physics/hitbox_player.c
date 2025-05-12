/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hitbox_player.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/07 11:58:09 by algadea           #+#    #+#             */
/*   Updated: 2025/05/12 16:31:54 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	entity_collision(double x_origin, double y_origin, double target_x, double target_y)
{
	if((int)x_origin == (int)target_x && (int)y_origin == (int)target_y)
		return (true);
	return (false);
}

bool	can_move_to_north(t_time *time, t_raycast *raycast,
			t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos + raycast->y_dir
			* player->velocity * time->delta_time)][(int)player->x_pos] == '1'
		|| map->map[(int)player->y_pos][(int)(player->x_pos + raycast->x_dir
			* player->velocity * time->delta_time)] == '1')
		return (false);
	else if (map->map[(int)(player->y_pos + raycast->y_dir
			* player->velocity * time->delta_time)][(int)player->x_pos] == 'C'
		|| map->map[(int)player->y_pos][(int)(player->x_pos + raycast->x_dir
			* player->velocity * time->delta_time)] == 'C')
		return (false);
	return (true);
}

bool	can_move_to_south(t_time *time, t_raycast *raycast,
			t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos - raycast->y_dir
			* player->velocity * time->delta_time)][(int)player->x_pos] == '1'
		|| map->map[(int)player->y_pos][(int)(player->x_pos - raycast->x_dir
			* player->velocity * time->delta_time)] == '1')
		return (false);
	else if (map->map[(int)(player->y_pos - raycast->y_dir
			* player->velocity * time->delta_time)][(int)player->x_pos] == 'C'
		|| map->map[(int)player->y_pos][(int)(player->x_pos - raycast->x_dir
			* player->velocity * time->delta_time)] == 'C')
		return (false);
	return (true);
}

bool	can_move_to_west(t_time *time, t_raycast *raycast,
			t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos - raycast->x_dir
			* player->velocity * time->delta_time)][(int)player->x_pos] == '1'
		|| map->map[(int)player->y_pos][(int)(player->x_pos + raycast->y_dir
			* player->velocity * time->delta_time)] == '1')
		return (false);
	else if (map->map[(int)(player->y_pos - raycast->x_dir
			* player->velocity * time->delta_time)][(int)player->x_pos] == 'C'
		|| map->map[(int)player->y_pos][(int)(player->x_pos + raycast->y_dir
			* player->velocity * time->delta_time)] == 'C')
		return (false);
	return (true);
}

bool	can_move_to_east(t_time *time, t_raycast *raycast,
			t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos + raycast->x_dir
			* player->velocity * time->delta_time)][(int)player->x_pos] == '1'
		|| map->map[(int)player->y_pos][(int)(player->x_pos - raycast->y_dir
			* player->velocity * time->delta_time)] == '1')
		return (false);
	else if (map->map[(int)(player->y_pos + raycast->x_dir
			* player->velocity * time->delta_time)][(int)player->x_pos] == 'C'
		|| map->map[(int)player->y_pos][(int)(player->x_pos - raycast->y_dir
			* player->velocity * time->delta_time)] == 'C')
		return (false);
	return (true);
}
