/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 12:08:00 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/22 12:19:16 by alacroix         ###   ########.fr       */
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
	if (keynum == XK_w)
		move_player_north(cub3d);
	else if (keynum == XK_s)
		move_player_south(cub3d);
	else if (keynum == XK_a || keynum == XK_Left)
		rotate_player_left(cub3d);
	else if (keynum == XK_d || keynum == XK_Right)
		rotate_player_right(cub3d);
}
