/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   data_enemy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/10 15:43:53 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/11 17:59:54 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	player_detected(t_enemy *enemy, t_player *player)
{
	float	dx;
	float	dy;
	float	distance;
	float	detection_zone;

	detection_zone = 4.0;
	dx = enemy->x_pos - (player->x_pos);
	dy = enemy->y_pos - (player->y_pos);
	distance = sqrtf(dx * dx  + dy * dy);
	if(distance <= detection_zone)
		return(true);
	return (false);
}

double	linear_interpol(double start, double end, double step)
{
	return (start + step * (end - start));
}

void	enemy_chase_mode(t_enemy *enemy, t_player *player, t_map *map)
{
	float next_x;
	float next_y;

	next_x = linear_interpol(enemy->x_pos, player->x_pos, 0.01);
	next_y = linear_interpol(enemy->y_pos, player->y_pos, 0.01);
	if(map->map[(int)next_y][(int)next_x] != '1'
		&& map->map[(int)next_y][(int)next_x] != 'C'
		&& !entity_collision(next_x, next_y, player->x_pos, player->y_pos))
	{
		enemy->x_pos = next_x;
		enemy->y_pos = next_y;
	}
}

void	enemy_patrol_mod(t_enemy *enemy, t_map *map)
{
	float	next_pos;

	next_pos = enemy->x_pos + (enemy->direction * 0.1);
	if (map->map[(int)enemy->y_pos][(int)next_pos] != '1'
		&& map->map[(int)enemy->y_pos][(int)next_pos] != 'C')
		enemy->x_pos = next_pos;
	else
		enemy->direction *= -1;
}

void	update_enemy_pos(t_enemy *enemy, t_player *player, t_map *map)
{
	if (enemy->state == dead)
		return ;
	if(player_detected(enemy, player))
		enemy_chase_mode(enemy, player, map);
	else
		enemy_patrol_mod(enemy, map);
}

void	update_enemy(t_cub3d *cub3d)
{
	int	enemy_id;

	enemy_id = 0;
	while (enemy_id < cub3d->nb_enemy)
		update_enemy_pos(&cub3d->randy[enemy_id++], &cub3d->player, &cub3d->map);
}

