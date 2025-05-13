/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_level_menu.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 16:57:34 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 22:05:24 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	level_menu_bindings_key_hook(int keynum, t_level_menu *level_menu)
{
	if (keynum == XK_Escape)
		level_menu->state = level_menu_option;
}

void	level_menu_quit_key_hook(int keynum, t_cub3d *cub3d,
				t_level_menu *level_menu)
{
	if (keynum == XK_Escape)
		level_menu->state = level_menu_option;
	else if ((keynum == XK_w || keynum == XK_Up)
		&& level_menu->index_quit != 0)
	{
		level_menu->index_quit--;
		level_menu->index_quit_static++;
	}
	else if ((keynum == XK_s || keynum == XK_Down)
		&& level_menu->index_quit != 1)
	{
		level_menu->index_quit++;
		level_menu->index_quit_static--;
	}
	else if (keynum == XK_Return && level_menu->index_quit == 0)
		cub3d->program_state = main_menu;
	else if (keynum == XK_Return && level_menu->index_quit == 1)
		exit_cub3d(cub3d);
	reset_blink_value(&level_menu->blink);
}

void	level_menu_option_key_hook(int keynum, t_cub3d *cub3d,
				t_level_menu *level_menu)
{
	if (keynum == XK_Escape)
		cub3d->program_state = game;
	else if ((keynum == XK_w || keynum == XK_Up)
		&& level_menu->index_option != 0)
	{
		level_menu->index_option--;
		level_menu->index_option_static++;
	}
	else if ((keynum == XK_s || keynum == XK_Down)
		&& level_menu->index_option != 2)
	{
		level_menu->index_option++;
		level_menu->index_option_static--;
	}
	else if (keynum == XK_Return && level_menu->index_option == 0)
	{
		level_menu->state = level_menu_option;
		level_menu->index_option = 0;
		cub3d->program_state = game;
	}
	else if (keynum == XK_Return && level_menu->index_option == 1)
		level_menu->state = bindings;
	else if (keynum == XK_Return && level_menu->index_option == 2)
		level_menu->state = quit;
	reset_blink_value(&level_menu->blink);
}

int	level_menu_key_hook(int keynum, t_cub3d *cub3d)
{
	if (cub3d->level_menu.state == level_menu_option)
		level_menu_option_key_hook(keynum, cub3d, &cub3d->level_menu);
	else if (cub3d->level_menu.state == quit)
		level_menu_quit_key_hook(keynum, cub3d, &cub3d->level_menu);
	else if (cub3d->level_menu.state == bindings)
		level_menu_bindings_key_hook(keynum, &cub3d->level_menu);
	return (0);
}
