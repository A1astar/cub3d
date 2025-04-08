/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hook_level.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/28 14:54:57 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 10:14:15 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	level_loop_hook(t_cub3d *cub3d)
{
	// mlx_mouse_hide(cub3d->mlx_ptr, cub3d->win_ptr);
	render_level(cub3d);
	return (0);
}

int	level_mouse_hook(int keynum)
{
	if (keynum == Button1)
		printf("BUTTON 1\n");
	if (keynum == Button2)
		printf("BUTTON 2\n");
	if (keynum == Button3)
		printf("BUTTON 3\n");
	if (keynum == Button4)
		printf("BUTTON 4\n");
	if (keynum == Button5)
		printf("BUTTON 5\n");
	return (0);
}

bool	is_player_event(int keynum)
{
	if (keynum == XK_w || keynum == XK_W
		|| keynum == XK_a || keynum == XK_A
		|| keynum == XK_s || keynum == XK_S
		|| keynum == XK_d || keynum == XK_D)
		return (true);
	return (false);
}

int	level_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		exit_hook(cub3d);
	if (keynum == XK_Return)
	{
		set_menu_loop(cub3d);
		cub3d->program_state = main_menu;
		mlx_clear_window(cub3d->mlx_ptr, cub3d->win_ptr);
	}
	if (is_player_event(keynum))
		player_event(cub3d, cub3d->player, keynum);
	return (0);
}

void	set_level_loop(t_cub3d *cub3d)
{
	mlx_hook(cub3d->win_ptr, DestroyNotify,
		StructureNotifyMask, &exit_hook, cub3d);
	mlx_loop_hook(cub3d->mlx_ptr, &level_loop_hook, cub3d);
	mlx_hook(cub3d->win_ptr, KeyPress, KeyPressMask, &level_key_hook, cub3d);
	mlx_mouse_hook(cub3d->win_ptr, &level_mouse_hook, cub3d);
}
