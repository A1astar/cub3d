/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_movement.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/23 15:24:39 by algadea           #+#    #+#             */
/*   Updated: 2025/04/23 16:34:26 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	move_player_north(t_cub3d *cub3d)
{
	if (!can_move_to_north(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	cub3d->player.x_pos += cub3d->raycast.x_dir * VELOCITY;
	cub3d->player.y_pos += cub3d->raycast.y_dir * VELOCITY;
}

void	move_player_east(t_cub3d *cub3d)
{
	if (!can_move_to_east(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	printf("x_dir = %f | y_dir = %f\n", cub3d->raycast.x_dir, cub3d->raycast.y_dir);
	if (cub3d->raycast.x_dir > 0 && cub3d->player.x_pos)
		cub3d->player.y_pos += cub3d->raycast.y_dir * VELOCITY;
	else if (cub3d->raycast.x_dir < 0)
		cub3d->player.y_pos -= cub3d->raycast.y_dir * VELOCITY;
}

void	move_player_west(t_cub3d *cub3d)
{
	if (!can_move_to_west(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	if (cub3d->raycast.x_dir > 0)
		cub3d->player.y_pos -= cub3d->raycast.y_dir * VELOCITY;
	else if (cub3d->raycast.x_dir < 0)
		cub3d->player.y_pos += cub3d->raycast.y_dir * VELOCITY;
}

void	move_player_south(t_cub3d *cub3d)
{
	if (!can_move_to_south(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	cub3d->player.x_pos -= cub3d->raycast.x_dir * VELOCITY;
	cub3d->player.y_pos -= cub3d->raycast.y_dir * VELOCITY;
}
