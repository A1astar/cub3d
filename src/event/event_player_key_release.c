/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_key_release.c                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/07 11:58:46 by algadea           #+#    #+#             */
/*   Updated: 2025/05/14 15:44:13 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	player_key_release_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_w && cub3d->key_state.w != release)
		key_release_w(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_s && cub3d->key_state.s != release)
		key_release_s(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_a && cub3d->key_state.a != release)
		key_release_a(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_d && cub3d->key_state.d != release)
		key_release_d(&cub3d->key_state, &cub3d->player);
	else if (keynum == XK_Left && cub3d->key_state.left != release)
	{
		cub3d->key_state.left = release;
		rotate_player_left(cub3d, &cub3d->time);
	}
	else if (keynum == XK_Right && cub3d->key_state.right != release)
	{
		cub3d->key_state.right = release;
		rotate_player_right(cub3d, &cub3d->time);
	}
	else if (keynum == XK_Shift_L && cub3d->key_state.shift_l != release)
	{
		cub3d->key_state.shift_l = release;
		cub3d->player.velocity = VELOCITY;
	}
}

int	key_release_hook(int keynum, t_cub3d *cub3d)
{
	if (cub3d->program_state == game)
		player_key_release_hook(keynum, cub3d);
	return (0);
}
