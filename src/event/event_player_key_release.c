/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_key_release.c                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 15:05:48 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 15:07:44algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	key_release_hook(int keynum, t_cub3d *cub3d)
{
	// if (keynum == XK_w || keynum == XK_Up)
	if (keynum == XK_w)
	{
		cub3d->key_state.w = release;
		// cub3d->key_state.up = release;
		// if (cub3d->player.movement_w_s != -1)
		// 	cub3d->player.movement_w_s--;
		cub3d->player.movement_w_s--;
	}
	// else if (keynum == XK_s || keynum == XK_Down)
	else if (keynum == XK_s)
	{
		// cub3d->key_state.down = release;
		// cub3d->key_state.s = release;
		// if (cub3d->player.movement_w_s != 1)
		// 	cub3d->player.movement_w_s++;
		cub3d->player.movement_w_s++;
	}
	else if (keynum == XK_a)
	{
		cub3d->key_state.a = release;
		cub3d->player.movement_a_d++;
	}
	else if (keynum == XK_d)
	{
		cub3d->key_state.d = release;
		cub3d->player.movement_a_d--;
	}
	else if (keynum == XK_Left)
	{
		cub3d->key_state.left = release;
		rotate_player_left(cub3d);
	}
	else if (keynum == XK_Right)
	{
		cub3d->key_state.right = release;
		rotate_player_right(cub3d);
	}
	else if (keynum == XK_Shift_L)
	{
		cub3d->key_state.shift_l = release;
		cub3d->player.velocity = VELOCITY;
	}
	return (0);
}