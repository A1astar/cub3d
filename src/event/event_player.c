/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:48:38 by algadea           #+#    #+#             */
/*   Updated: 2025/04/15 12:10:47 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

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
	if (keynum == XK_w && can_move_to_north(&cub3d->player,
		&cub3d->map, (int)cub3d->player.x_pos, (int)cub3d->player.y_pos))
		cub3d->player.y_pos -= 0.1;
	else if (keynum == XK_s && can_move_to_south(&cub3d->player,
		&cub3d->map, (int)cub3d->player.x_pos, (int)(cub3d->player.y_pos)))
		cub3d->player.y_pos += 0.1;
	else if (keynum == XK_a && can_move_to_west(&cub3d->player,
		&cub3d->map, (int)cub3d->player.x_pos, (int)cub3d->player.y_pos))
		cub3d->player.x_pos -= 0.1;
	else if (keynum == XK_d && can_move_to_east(&cub3d->player,
		&cub3d->map, (int)cub3d->player.x_pos, (int)cub3d->player.y_pos))
		cub3d->player.x_pos += 0.1;
	else if (keynum == XK_Left)
	{
		// if (cub3d->player.angle == 0)
		// 	cub3d->player.angle = 360;
		cub3d->player.angle-= 5;
		cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
	}
	else if (keynum == XK_Right)
	{
		// if (cub3d->player.angle == 360)
		// 	cub3d->player.angle = 0;
		cub3d->player.angle+= 5;
		cub3d->player.radian = cub3d->player.angle * (PI / 180.0);
	}
}
