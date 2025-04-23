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

void	update_viewmodel(t_viewmodel *viewmodel)
{
	if (viewmodel->draw_pos == 20)
		viewmodel->orientation = down;
	else if (viewmodel->draw_pos == 0)
		viewmodel->orientation = up;
	if (viewmodel->orientation == down)
		viewmodel->draw_pos--;
	else if (viewmodel->orientation == up)
		viewmodel->draw_pos++;
}

void	player_movement_key(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_w || keynum == XK_Up)
	{
		cub3d->key_state.w = pressed;
		cub3d->key_state.up = pressed;
		move_player_north(cub3d);
	}
	else if (keynum == XK_s || keynum == XK_Down)
	{
		cub3d->key_state.s = pressed;
		cub3d->key_state.down = pressed;
		move_player_south(cub3d);
	}
	else if (keynum == XK_a)
	{
		cub3d->key_state.a = pressed;
		move_player_west(cub3d);
	}
	else if (keynum == XK_d)
	{
		cub3d->key_state.d = pressed;
		move_player_east(cub3d);
	}
	else if (keynum == XK_Left)
	{
		cub3d->key_state.left = pressed;
		rotate_player_left(cub3d);
	}
	else if (keynum == XK_Right)
	{
		cub3d->key_state.right = pressed;
		rotate_player_right(cub3d);
	}
}
