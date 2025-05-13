/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   data_player_rotation.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:33:40 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 11:30:35 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	normalize_player_angle(t_player *player)
{
	if (player->angle > 360)
		player->angle -= 360;
	else if (player->angle < 0)
		player->angle += 360;
	player->radian = player->angle * (PI / 180.0);
}

void	rotate_player_left(t_cub3d *cub3d, t_time *time)
{
	double	x_old_dir;
	double	x_old_plane;

	x_old_dir = cub3d->raycast.x_dir;
	cub3d->raycast.x_dir = cub3d->raycast.x_dir * cos(-SENSIBILITY
			* time->delta_time) - cub3d->raycast.y_dir * sin(-SENSIBILITY
			* time->delta_time);
	cub3d->raycast.y_dir = x_old_dir * sin(-SENSIBILITY * time->delta_time)
		+ cub3d->raycast.y_dir * cos(-SENSIBILITY * time->delta_time);
	x_old_plane = cub3d->raycast.x_plane;
	cub3d->raycast.x_plane = cub3d->raycast.x_plane * cos(-SENSIBILITY
			* time->delta_time) - cub3d->raycast.y_plane * sin(-SENSIBILITY
			* time->delta_time);
	cub3d->raycast.y_plane = x_old_plane * sin(-SENSIBILITY * time->delta_time)
		+ cub3d->raycast.y_plane * cos(-SENSIBILITY * time->delta_time);
	cub3d->player.angle -= SENSIBILITY * 10 * time->delta_time;
	cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
	cub3d->player.x_dir = cub3d->raycast.x_dir;
	cub3d->player.y_dir = cub3d->raycast.y_dir;
	normalize_player_angle(&cub3d->player);
}

void	rotate_player_right(t_cub3d *cub3d, t_time *time)
{
	double	x_old_dir;
	double	x_old_plane;

	x_old_dir = cub3d->raycast.x_dir;
	cub3d->raycast.x_dir = cub3d->raycast.x_dir * cos(SENSIBILITY
			* time->delta_time) - cub3d->raycast.y_dir * sin(SENSIBILITY
			* time->delta_time);
	cub3d->raycast.y_dir = x_old_dir * sin(SENSIBILITY * time->delta_time)
		+ cub3d->raycast.y_dir * cos(SENSIBILITY * time->delta_time);
	x_old_plane = cub3d->raycast.x_plane;
	cub3d->raycast.x_plane = cub3d->raycast.x_plane * cos(SENSIBILITY
			* time->delta_time) - cub3d->raycast.y_plane * sin(SENSIBILITY
			* time->delta_time);
	cub3d->raycast.y_plane = x_old_plane * sin(SENSIBILITY * time->delta_time)
		+ cub3d->raycast.y_plane * cos(SENSIBILITY * time->delta_time);
	cub3d->player.angle += SENSIBILITY * 10 * time->delta_time;
	cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
	cub3d->player.x_dir = cub3d->raycast.x_dir;
	cub3d->player.y_dir = cub3d->raycast.y_dir;
	normalize_player_angle(&cub3d->player);
}
