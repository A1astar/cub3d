/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_main_menu.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:26:46 by algadea           #+#    #+#             */
/*   Updated: 2025/04/14 12:39:03 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	main_menu_mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	printf("x = %d | y = %d\n", x, y);
	(void)cub3d;
	return (0);
}

int	main_menu_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	printf("keynum = %d | x = %d | y = %d\n", keynum, x, y);
	(void)cub3d;
	return (0);
}

void	main_menu_selection(t_cub3d *cub3d)
{
	if (cub3d->main_menu.index == start_game)
		cub3d->program_state = game;
	else if (cub3d->main_menu.index == settings)
		cub3d->program_state = main_menu;
	else if (cub3d->main_menu.index == exit_game)
		exit_cub3d(cub3d);
}

int	main_menu_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		exit_cub3d(cub3d);
	else if ((keynum == XK_w || keynum == XK_Up) && cub3d->main_menu.index != 0)
		cub3d->main_menu.index--;
	else if ((keynum == XK_s || keynum == XK_Down) && cub3d->main_menu.index != 2)
		cub3d->main_menu.index++;
	else if (keynum == XK_Return)
		main_menu_selection(cub3d);
	return (0);
}
