/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:56 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 14:48:57 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	printf("x = %d | y = %d\n", x, y);
	(void)cub3d;
	return (0);
}

int	mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	printf("keynum = %d | x = %d | y = %d\n", keynum, x, y);
	(void)cub3d;
	return (0);
}

void	key_hook_main_menu(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_W && cub3d->main_menu.index != 0)
		cub3d->main_menu.index--;
	else if (keynum == XK_S && cub3d->main_menu.index != 2)
		cub3d->main_menu.index++;
}

int	key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		exit_cub3d(keynum, cub3d);
	else if (cub3d->program_state == main_menu)
		key_hook_main_menu(keynum, cub3d);
	return (0);
}

int	exit_cub3d(int keynum, t_cub3d *cub3d)
{
	(void)keynum;
	free_program(cub3d);
	exit(EXIT_SUCCESS);
	return (0);
}

