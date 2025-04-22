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
	if (keynum == XK_w || keynum == XK_Up)
	{
		cub3d->key_state.up = release;
		cub3d->key_state.w = release;
	}
	else if (keynum == XK_s || keynum == XK_Down)
	{
		cub3d->key_state.down = release;
		cub3d->key_state.s = release;
	}
	else if (keynum == XK_a || keynum == XK_Left)
	{
		cub3d->key_state.left = release;
		cub3d->key_state.a = release;
	}
	else if (keynum == XK_d || keynum == XK_Right)
	{
		cub3d->key_state.right = release;
		cub3d->key_state.d = release;
	}
	return (0);
}