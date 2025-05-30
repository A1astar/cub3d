/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_key_press.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/07 11:58:32 by algadea           #+#    #+#             */
/*   Updated: 2025/05/14 15:18:41 by algadea          ###   ########.fr       */
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
	if (keynum == XK_q || keynum == XK_e || keynum == XK_r || keynum == XK_l)
		return (true);
	return (false);
}

void	player_movement_key(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_w && cub3d->key_state.w != pressed)
		key_press_w(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_s && cub3d->key_state.s != pressed)
		key_press_s(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_a && cub3d->key_state.a != pressed)
		key_press_a(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_d && cub3d->key_state.d != pressed)
		key_press_d(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_Left && cub3d->key_state.left != pressed)
		cub3d->key_state.left = pressed;
	else if (keynum == XK_Right && cub3d->key_state.right != pressed)
		cub3d->key_state.right = pressed;
	else if (keynum == XK_Shift_L && cub3d->key_state.shift_l != pressed)
		cub3d->key_state.shift_l = pressed;
}
