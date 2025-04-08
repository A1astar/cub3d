/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   hook_menu.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/28 16:25:21 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 10:14:49 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	menu_loop_hook(t_cub3d *cub3d)
{
	// mlx_mouse_show(cub3d->mlx_ptr, cub3d->win_ptr);
	render_menu(cub3d);
	return (0);
}

int	menu_mouse_hook(int keynum)
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

int	menu_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		exit_hook(cub3d);
	if (keynum == XK_Return)
	{
		set_level_loop(cub3d);
		cub3d->program_state = level;
		mlx_clear_window(cub3d->mlx_ptr, cub3d->win_ptr);
	}
	return (0);
}

void	set_menu_loop(t_cub3d *cub3d)
{
	mlx_hook(cub3d->win_ptr, DestroyNotify,
		StructureNotifyMask, &exit_hook, cub3d);
	mlx_loop_hook(cub3d->mlx_ptr, &menu_loop_hook, cub3d);
	mlx_hook(cub3d->win_ptr, KeyPress, KeyPressMask, &menu_key_hook, cub3d);
	mlx_mouse_hook(cub3d->win_ptr, &menu_mouse_hook, cub3d);
}
