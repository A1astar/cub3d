/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_main_menu.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:26:46 by algadea           #+#    #+#             */
/*   Updated: 2025/05/02 12:00:44 by algadea          ###   ########.fr       */
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

void	release_all_keys(t_key_state *key)
{
	key->w = release;
	key->a = release;
	key->s = release;
	key->d = release;
	key->up = release;
	key->left = release;
	key->down = release;
	key->right = release;
	key->shift_l = release;
}

void	main_menu_selection(t_cub3d *cub3d)
{
	if (cub3d->main_menu.index_option == start_game)
	{
		cub3d->program_state = game;
		// release_all_keys(&cub3d->key_state);
	}
	else if (cub3d->main_menu.index_option == settings)
	{
		cub3d->program_state = settings;
		// release_all_keys(&cub3d->key_state);
	}
	else if (cub3d->main_menu.index_option == exit_game)
		exit_cub3d(cub3d);
}

void	main_menu_option_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		exit_cub3d(cub3d);
	else if ((keynum == XK_w || keynum == XK_Up)
		&& cub3d->main_menu.index_option != 0)
	{
		if (keynum == XK_w)
			cub3d->key_state.w = pressed;
		else
			cub3d->key_state.up = pressed;
		cub3d->main_menu.index_option--;
	}
	else if ((keynum == XK_s || keynum == XK_Down)
		&& cub3d->main_menu.index_option != 2)
	{
		if (keynum == XK_s)
			cub3d->key_state.s = pressed;
		else
			cub3d->key_state.down = pressed;
		cub3d->main_menu.index_option++;
	}
	else if (keynum == XK_Return)
		main_menu_selection(cub3d);
}

int	main_menu_key_hook(int keynum, t_cub3d *cub3d)
{
	if (cub3d->main_menu.state == launcher)
		main_menu_launcher_key_hook(keynum, cub3d);
	else if (cub3d->main_menu.state == option)
		main_menu_option_key_hook(keynum, cub3d);
	return (0);
}
