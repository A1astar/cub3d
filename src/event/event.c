/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:56 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 15:23:59 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	if (cub3d->program_state == game)
		game_mouse_motion_hook(x, y, cub3d);
	else if (cub3d->program_state == level_menu)
		level_menu_mouse_motion_hook(x, y, cub3d);
	else if (cub3d->program_state == main_menu)
		main_menu_mouse_motion_hook(x, y, cub3d);
	return (0);
}

int	mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	if (cub3d->program_state == game)
		game_mouse_press_hook(keynum, x, y, cub3d);
	else if (cub3d->program_state == level_menu)
		level_menu_mouse_press_hook(keynum, x, y, cub3d);
	else if (cub3d->program_state == main_menu)
		main_menu_mouse_press_hook(keynum, x, y, cub3d);
	return (0);
}

int	key_press_hook(int keynum, t_cub3d *cub3d)
{
	if (cub3d->program_state == game)
		game_key_hook(keynum, cub3d);
	else if (cub3d->program_state == level_menu)
		level_menu_key_hook(keynum, cub3d);
	else if (cub3d->program_state == main_menu)
		main_menu_key_hook(keynum, cub3d);
	return (0);
}
