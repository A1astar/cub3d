/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:56 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 11:33:34 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	events_levels(int keynum, t_so_long *so_long)
{
	if (keynum == XK_Escape)
	{
		so_long->state = game_pause;
		so_long->menu.index = resume;
	}
	else if (keynum == XK_W || keynum == XK_w
		|| keynum == XK_A || keynum == XK_a
		|| keynum == XK_S || keynum == XK_s
		|| keynum == XK_D || keynum == XK_d)
		movements(keynum, so_long);
}

int	key_press_handler(int keynum, t_so_long *so_long)
{
	if (so_long->state == main_menu)
		events_main_menu(keynum, so_long);
	else if (so_long->state == playing)
		events_levels(keynum, so_long);
	else if (so_long->state == game_pause)
		events_pause(keynum, so_long);
	else if (so_long->state == game_win)
		events_win(keynum, so_long);
	else if (so_long->state == game_over)
		events_game_over(keynum, so_long);
	return (0);
}

