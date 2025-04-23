/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_rotate.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:33:40 by algadea           #+#    #+#             */
/*   Updated: 2025/04/23 12:17:41 by algadea          ###   ########.fr       */
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
	cub3d->raycast.x_dir = cub3d->raycast.x_dir * cos(-SENSIBILITY)
		- cub3d->raycast.y_dir * sin(-SENSIBILITY);
	cub3d->raycast.y_dir = x_old_dir * sin(-SENSIBILITY) + cub3d->raycast.y_dir
		* cos(-SENSIBILITY);
	x_old_plane = cub3d->raycast.x_plane;
	cub3d->raycast.x_plane = cub3d->raycast.x_plane * cos(-SENSIBILITY)
		- cub3d->raycast.y_plane * sin(-SENSIBILITY);
	cub3d->raycast.y_plane = x_old_plane * sin(-SENSIBILITY)
		+ cub3d->raycast.y_plane * cos(-SENSIBILITY);
	cub3d->player.angle -= SENSIBILITY * 10;
	cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
	normalize_player_ange(&cub3d->player);
}

void	rotate_player_right(t_cub3d *cub3d)
{
	double	x_old_dir;
	double	x_old_plane;

	x_old_dir = cub3d->raycast.x_dir;
	cub3d->raycast.x_dir = cub3d->raycast.x_dir * cos(SENSIBILITY)
		- cub3d->raycast.y_dir * sin(SENSIBILITY);
	cub3d->raycast.y_dir = x_old_dir * sin(SENSIBILITY) + cub3d->raycast.y_dir
		* cos(SENSIBILITY);
	x_old_plane = cub3d->raycast.x_plane;
	cub3d->raycast.x_plane = cub3d->raycast.x_plane * cos(SENSIBILITY)
		- cub3d->raycast.y_plane * sin(SENSIBILITY);
	cub3d->raycast.y_plane = x_old_plane * sin(SENSIBILITY)
		+ cub3d->raycast.y_plane * cos(SENSIBILITY);
	cub3d->player.angle += SENSIBILITY * 10;
	cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
	normalize_player_ange(&cub3d->player);
}
