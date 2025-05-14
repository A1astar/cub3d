/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_main_menu.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:26:46 by algadea           #+#    #+#             */
/*   Updated: 2025/05/14 15:34:38 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	main_menu_selection(t_cub3d *cub3d)
{
	if (cub3d->main_menu.index_option == start_game)
		cub3d->program_state = game;
	else if (cub3d->main_menu.index_option == exit_game)
		exit_cub3d(cub3d);
}

void	reset_blink_value(t_blink *blink)
{
	blink->value = 0xCC / 4;
	blink->direction = down;
}

void	main_menu_option_key_hook(int keynum, t_cub3d *cub3d,
			t_main_menu *main_menu)
{
	if (keynum == XK_Escape)
		exit_cub3d(cub3d);
	else if ((keynum == XK_w || keynum == XK_Up)
		&& main_menu->index_option != 0)
	{
		main_menu->index_option--;
		main_menu->index_option_static++;
		reset_blink_value(&cub3d->main_menu.blink);
	}
	else if ((keynum == XK_s || keynum == XK_Down)
		&& main_menu->index_option != 1)
	{
		main_menu->index_option++;
		main_menu->index_option_static--;
		reset_blink_value(&main_menu->blink);
	}
	else if (keynum == XK_Return)
		main_menu_selection(cub3d);
}

int	main_menu_key_hook(int keynum, t_cub3d *cub3d)
{
	if (cub3d->main_menu.state == launcher)
		main_menu_launcher_key_hook(keynum, cub3d);
	else if (cub3d->main_menu.state == main_menu_option)
		main_menu_option_key_hook(keynum, cub3d, &cub3d->main_menu);
	return (0);
}
