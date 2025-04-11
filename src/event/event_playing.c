/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_playing.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 17:03:16 by algadea           #+#    #+#             */
/*   Updated: 2025/04/11 12:50:42 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	playing_mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	printf("x = %d | y = %d\n", x, y);
	(void)cub3d;
	return (0);
}

int	playing_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	printf("keynum = %d | x = %d | y = %d\n", keynum, x, y);
	(void)cub3d;
	return (0);
}

int	playing_key_hook(int keynum, t_cub3d *cub3d)
{
	printf("keynum playing = %d\n", keynum);
	if (keynum == XK_Escape)
		exit_cub3d(cub3d);
	printf("%d\n", cub3d->main_menu.index);
	return (0);
}