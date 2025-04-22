/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_key.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:33:40 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 12:19:21 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	normalize_player_ange(t_player *player)
{
	if (player->angle > 360)
		player->angle -= 360;
	else if (player->angle < 0)
		player->angle += 360;
	player->radian = player->angle * (PI / 180.0);
}

void	move_player_north(t_cub3d *cub3d)
{
	if (!can_move_to_north(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	cub3d->player.x_pos += cub3d->raycast.x_dir * VELOCITY;
	cub3d->player.y_pos += cub3d->raycast.y_dir * VELOCITY;
}

void	move_player_south(t_cub3d *cub3d)
{
	if (!can_move_to_south(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	cub3d->player.x_pos -= cub3d->raycast.x_dir * VELOCITY;
	cub3d->player.y_pos -= cub3d->raycast.y_dir * VELOCITY;
}

void	rotate_player_left(t_cub3d *cub3d)
{
	double	x_old_dir;
	double	x_old_plane;

	x_old_dir = cub3d->raycast.x_dir;
	cub3d->raycast.x_dir = cub3d->raycast.x_dir * cos(-VELOCITY)
		- cub3d->raycast.y_dir * sin(-VELOCITY);
	cub3d->raycast.y_dir = x_old_dir * sin(-VELOCITY) + cub3d->raycast.y_dir
		* cos(-VELOCITY);
	x_old_plane = cub3d->raycast.x_plane;
	cub3d->raycast.x_plane = cub3d->raycast.x_plane * cos(-VELOCITY)
		- cub3d->raycast.y_plane * sin(-VELOCITY);
	cub3d->raycast.y_plane = x_old_plane * sin(-VELOCITY)
		+ cub3d->raycast.y_plane * cos(-VELOCITY);
	cub3d->player.angle -= VELOCITY * 10;
	cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
	normalize_player_ange(&cub3d->player);
}

void	rotate_player_right(t_cub3d *cub3d)
{
	double	x_old_dir;
	double	x_old_plane;

	x_old_dir = cub3d->raycast.x_dir;
	cub3d->raycast.x_dir = cub3d->raycast.x_dir * cos(VELOCITY)
		- cub3d->raycast.y_dir * sin(VELOCITY);
	cub3d->raycast.y_dir = x_old_dir * sin(VELOCITY) + cub3d->raycast.y_dir
		* cos(VELOCITY);
	x_old_plane = cub3d->raycast.x_plane;
	cub3d->raycast.x_plane = cub3d->raycast.x_plane * cos(VELOCITY)
		- cub3d->raycast.y_plane * sin(VELOCITY);
	cub3d->raycast.y_plane = x_old_plane * sin(VELOCITY)
		+ cub3d->raycast.y_plane * cos(VELOCITY);
	cub3d->player.angle += VELOCITY * 10;
	cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
	normalize_player_ange(&cub3d->player);
}
