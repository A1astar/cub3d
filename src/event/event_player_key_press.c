/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_key_press.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 12:08:00 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/22 15:33:25by algadea          ###   ########.fr       */
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
	if (keynum == XK_w || keynum == XK_Up)
	{
		cub3d->key_state.w = pressed;
		cub3d->key_state.up = pressed;
	}
	else if (keynum == XK_s || keynum == XK_Down)
	{
		cub3d->key_state.s = pressed;
		cub3d->key_state.down = pressed;
	}
	else if (keynum == XK_a)
		cub3d->key_state.a = pressed;
	else if (keynum == XK_d)
		cub3d->key_state.d = pressed;
	else if (keynum == XK_Left)
		cub3d->key_state.left = pressed;
	else if (keynum == XK_Right)
		cub3d->key_state.right = pressed;
}
