/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_mlx.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:37 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 12:58:26 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_mlx_window(t_cub3d *cub3d, t_window *window)
{
	window->mlx_ptr = mlx_init();
	if (window->mlx_ptr == NULL)
	{
		error_msg(BOLD RED "MLX init" DEFAULT, NULL);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
	window->width = WINDOW_WIDTH;
	window->height = WINDOW_HEIGHT;
	window->win_ptr = mlx_new_window(window->mlx_ptr,
			window->width, window->height, "CUB3D");
	if (window->win_ptr == NULL)
	{
		error_msg(BOLD RED "MLX new window" DEFAULT, NULL);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

// void	update_mlx_hook(t_cub3d *cub3d, t_window *window, int which)
// {
// 	(void)window;
// 	printf("program state = %d\n", cub3d->program_state);
// 	if (which == main_menu)
// 	{
// 		mlx_loop_hook(cub3d->window.mlx_ptr, main_menu_loop, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, ButtonPress,
// 			ButtonPressMask, main_menu_mouse_press_hook, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, MotionNotify,
// 			ButtonMotionMask, main_menu_mouse_motion_hook, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, KeyPress,
// 			KeyPressMask, main_menu_key_hook, cub3d);
// 	}
// 	else if (which == level_menu)
// 	{
// 		mlx_loop_hook(cub3d->window.mlx_ptr, level_menu_loop, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, ButtonPress,
// 			ButtonPressMask, level_menu_mouse_press_hook, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, MotionNotify,
// 			ButtonMotionMask, level_menu_mouse_motion_hook, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, KeyPress,
// 			KeyPressMask, level_menu_key_hook, cub3d);
// 	}
// 	else if (which == playing)
// 	{
// 		mlx_loop_hook(cub3d->window.mlx_ptr, playing_loop, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, ButtonPress,
// 			ButtonPressMask, playing_mouse_press_hook, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, MotionNotify,
// 			ButtonMotionMask, playing_mouse_motion_hook, cub3d);
// 		mlx_hook(cub3d->window.win_ptr, KeyPress,
// 			KeyPressMask, playing_key_hook, cub3d);
// 	}
// }

void	init_mlx_hook(t_cub3d *cub3d, t_window *window)
{
	mlx_loop_hook(cub3d->window.mlx_ptr, cub3d_loop, cub3d);
	mlx_hook(cub3d->window.win_ptr, ButtonPress,
		ButtonPressMask, mouse_press_hook, cub3d);
	mlx_hook(cub3d->window.win_ptr, MotionNotify,
		ButtonMotionMask | PointerMotionMask, mouse_motion_hook, cub3d);
	mlx_hook(cub3d->window.win_ptr, KeyPress,
		KeyPressMask, key_hook, cub3d);
	mlx_hook(window->win_ptr, DestroyNotify,
		StructureNotifyMask, &exit_cub3d, cub3d);
}

void	init_mlx(t_cub3d *cub3d, t_window *window)
{
	init_mlx_window(cub3d, window);
	init_mlx_hook(cub3d, window);
}
