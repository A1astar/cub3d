/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_level_menu.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:26:35 by algadea           #+#    #+#             */
/*   Updated: 2025/04/12 18:34:57by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	level_menu_mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	printf("x = %d | y = %d\n", x, y);
	(void)cub3d;
	return (0);
}

int	level_menu_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	printf("keynum = %d | x = %d | y = %d\n", keynum, x, y);
	(void)cub3d;
	return (0);
}

int	level_menu_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		exit_cub3d(cub3d);
	else if ((keynum == XK_W || keynum == XK_Up) && cub3d->level_menu.index != 0)
		cub3d->level_menu.index--;
	else if ((keynum == XK_S || keynum == XK_Down) && cub3d->level_menu.index != 2)
		cub3d->level_menu.index++;
	// printf("%d\n", cub3d->main_menu.index);
	return (0);
}
