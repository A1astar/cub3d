/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_game.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 17:03:16 by algadea           #+#    #+#             */
/*   Updated: 2025/04/15 12:10:35 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	game_mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	printf("x = %d | y = %d\n", x, y);
	(void)cub3d;
	return (0);
}

int	game_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	printf("keynum = %d | x = %d | y = %d\n", keynum, x, y);
	player_action_button(keynum, cub3d);
	return (0);
}

void	update_player_stats(t_cub3d *cub3d)
{
	(void)cub3d;
}

bool	is_player_movement_key(int keynum)
{
	if (keynum == XK_w || keynum == XK_s
		|| keynum == XK_a || keynum == XK_d
		|| keynum == XK_Left || keynum == XK_Right)
		return (true);
	return (false);
}


int	game_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
	{
		// cub3d->program_state = level_menu;
		exit_cub3d(cub3d);
	}
	else if (is_player_movement_key(keynum))
		player_movement_key(keynum, cub3d);
	else if (is_player_action_key(keynum))
		player_action_key(keynum, cub3d);
	update_player_stats(cub3d);
	return (0);
}
