/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player_collision.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/30 14:09:55 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 14:27:52 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	have_collision_north(t_cub3d *cub3d, t_player *player)
{
	if (cub3d->map->data[(int)player->pos_y - 1][(int)player->pos_x] == '1'
		&& (int)(player->pos_y - 0.10) == (int)player->pos_y - 1)
		return (true);
	return (false);
}

bool	have_collision_south(t_cub3d *cub3d, t_player *player)
{
	if (cub3d->map->data[(int)player->pos_y + 1][(int)player->pos_x] == '1'
		&& (int)(player->pos_y + 0.50) == (int)player->pos_y + 1)
		return (true);
	return (false);
}

bool	have_collision_east(t_cub3d *cub3d, t_player *player)
{
	if (cub3d->map->data[(int)player->pos_y][(int)player->pos_x + 1] == '1'
		&& (int)(player->pos_x + 0.50) == (int)player->pos_x + 1)
		return (true);
	return (false);
}

bool	have_collision_west(t_cub3d *cub3d, t_player *player)
{
	if (cub3d->map->data[(int)player->pos_y][(int)player->pos_x - 1] == '1'
		&& (int)(player->pos_x - 0.10) == (int)player->pos_x - 1)
		return (true);
	return (false);
}
