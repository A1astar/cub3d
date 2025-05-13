/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_key_press.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/07 11:58:32 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 11:11:58 by alacroix         ###   ########.fr       */
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
	if (keynum == XK_w)
		key_press_w(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_s)
		key_press_s(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_a)
		key_press_a(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_d)
		key_press_d(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_Left)
		cub3d->key_state.left = pressed;
	else if (keynum == XK_Right)
		cub3d->key_state.right = pressed;
	else if (keynum == XK_Shift_L)
		cub3d->key_state.shift_l = pressed;
}
