/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:48:38 by algadea           #+#    #+#             */
/*   Updated: 2025/04/17 15:47:44by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	player_ange_normalize(t_player *player)
{
	if(player->angle > 360)
		player->angle -= 360;
	else if (player->angle < 0)
		player->angle += 360;
	player->radian = player->angle * (PI / 180.0);
}

bool	is_player_button(int keynum)
{
	if (keynum == Button1 || keynum == Button3)
		return (true);
	return (false);
}

bool	is_player_action_key(int keynum)
{
	if (keynum == XK_q || keynum == XK_e || keynum == XK_r)
		return (true);
	return (false);
}

void	player_movement_key(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_w && can_move_to_north(&cub3d->raycast, &cub3d->player, &cub3d->map))
	{
		cub3d->player.x_pos += cub3d->raycast.x_dir * VELOCITY;
		cub3d->player.y_pos += cub3d->raycast.y_dir * VELOCITY;
	}
	else if (keynum == XK_s && can_move_to_south(&cub3d->raycast, &cub3d->player, &cub3d->map))
	{
		cub3d->player.x_pos -= cub3d->raycast.x_dir * VELOCITY;
		cub3d->player.y_pos -= cub3d->raycast.y_dir * VELOCITY;
	}
	else if (keynum == XK_a || keynum == XK_Left)
	{
		double x_old_dir = cub3d->raycast.x_dir;
		cub3d->raycast.x_dir = cub3d->raycast.x_dir * cos(-VELOCITY) - cub3d->raycast.y_dir * sin(-VELOCITY);
		cub3d->raycast.y_dir = x_old_dir * sin(-VELOCITY) + cub3d->raycast.y_dir * cos(-VELOCITY);

		double x_old_plane = cub3d->raycast.x_plane;
		cub3d->raycast.x_plane = cub3d->raycast.x_plane * cos(-VELOCITY) - cub3d->raycast.y_plane * sin(-VELOCITY);
		cub3d->raycast.y_plane = x_old_plane * sin(-VELOCITY) + cub3d->raycast.y_plane * cos(-VELOCITY);

		cub3d->player.angle -= VELOCITY * 10;
		cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
		player_ange_normalize(&cub3d->player);
	}
	else if (keynum == XK_d || keynum == XK_Right)
	{
		double x_old_dir = cub3d->raycast.x_dir;
		cub3d->raycast.x_dir = cub3d->raycast.x_dir * cos(VELOCITY) - cub3d->raycast.y_dir * sin(VELOCITY);
		cub3d->raycast.y_dir = x_old_dir * sin(VELOCITY) + cub3d->raycast.y_dir * cos(VELOCITY);

		double x_old_plane = cub3d->raycast.x_plane;
		cub3d->raycast.x_plane = cub3d->raycast.x_plane * cos(VELOCITY) - cub3d->raycast.y_plane * sin(VELOCITY);
		cub3d->raycast.y_plane = x_old_plane * sin(VELOCITY) + cub3d->raycast.y_plane * cos(VELOCITY);

		cub3d->player.angle += VELOCITY * 10;
		cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
		player_ange_normalize(&cub3d->player);
	}
}
