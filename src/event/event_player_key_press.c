/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_key_press.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 11:32:22 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 11:32:28 by alacroix         ###   ########.fr       */
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
	if (keynum == XK_q || keynum == XK_e || keynum == XK_r
		|| keynum == XK_l)
		return (true);
	return (false);
}

void	player_movement_key(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_w)
	{
		cub3d->key_state.w = pressed;
		cub3d->player.movement_w_s++;
	}
	else if (keynum == XK_s)
	{
		cub3d->key_state.s = pressed;
		cub3d->player.movement_w_s--;
	}
	else if (keynum == XK_a)
	{
		cub3d->key_state.a = pressed;
		cub3d->player.movement_a_d--;
	}
	else if (keynum == XK_d)
	{
		cub3d->key_state.d = pressed;
		cub3d->player.movement_a_d++;
	}
	else if (keynum == XK_Left)
		cub3d->key_state.left = pressed;
	else if (keynum == XK_Right)
		cub3d->key_state.right = pressed;
	else if (keynum == XK_Shift_L)
		cub3d->key_state.shift_l = pressed;
}
