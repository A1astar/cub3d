/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   data_game.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/23 18:24:58 by algadea           #+#    #+#             */
/*   Updated: 2025/05/07 15:55:42 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	update_enemy_pos(t_enemy *enemy, t_map *map)
{
	float	next_pos;

	if (enemy->state == dead)
		return ;
	next_pos = enemy->x_pos + (enemy->direction * 0.1);
	if (map->map[(int)enemy->y_pos][(int)next_pos] != '1')
		enemy->x_pos = next_pos;
	else
		enemy->direction *= -1;
}

void	update_enemy(t_cub3d *cub3d)
{
	int	enemy_id;

	enemy_id = 0;
	while (enemy_id < cub3d->nb_enemy)
		update_enemy_pos(&cub3d->randy[enemy_id++], &cub3d->map);
}

void	update_game_data(t_cub3d *cub3d)
{
	update_player_data(cub3d);
	update_enemy(cub3d);
}
