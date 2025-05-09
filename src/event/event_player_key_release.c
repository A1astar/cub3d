/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_key_release.c                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/07 11:58:46 by algadea           #+#    #+#             */
/*   Updated: 2025/05/09 12:54:24 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#include "../../include/cub3d.h"

void	player_key_release_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_w)
	{
		cub3d->key_state.w = release;
		cub3d->player.movement_w_s--;
	}
	else if (keynum == XK_s)
	{
		cub3d->key_state.s = release;
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
		rotate_player_left(cub3d, &cub3d->time);
	}
	else if (keynum == XK_Right)
	{
		cub3d->key_state.right = release;
		rotate_player_right(cub3d, &cub3d->time);
	}
	else if (keynum == XK_Shift_L)
	{
		cub3d->key_state.shift_l = release;
		cub3d->player.velocity = VELOCITY;
	}
}

void	menu_key_release_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_w)
		cub3d->key_state.w = release;
	else if (keynum == XK_Up)
		cub3d->key_state.up = release;
	else if (keynum == XK_s)
		cub3d->key_state.s = release;
	else if (keynum == XK_Down)
		cub3d->key_state.down = release;
}

int	key_release_hook(int keynum, t_cub3d *cub3d)
{
	if (cub3d->program_state == game)
		player_key_release_hook(keynum, cub3d);
	else if (cub3d->program_state == level_menu
		|| cub3d->program_state == main_menu)
		menu_key_release_hook(keynum, cub3d);
	return (0);
}
