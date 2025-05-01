/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_mlx.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:37 by algadea           #+#    #+#             */
/*   Updated: 2025/05/01 17:22:35 by algadea          ###   ########.fr       */
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
	// mlx_get_screen_size(window->mlx_ptr, &window->width, &window->height);
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
	window->half_width = WINDOW_WIDTH / 2;
	window->half_height = WINDOW_HEIGHT / 2;
}

void	init_mlx_hook(t_cub3d *cub3d, t_window *window)
{
	mlx_loop_hook(cub3d->window.mlx_ptr, cub3d_loop, cub3d);
	mlx_hook(window->win_ptr, ButtonPress,
		ButtonPressMask, mouse_press_hook, cub3d);
	mlx_hook(cub3d->window.win_ptr, MotionNotify,
		ButtonMotionMask | PointerMotionMask, mouse_motion_hook, cub3d);
	mlx_hook(cub3d->window.win_ptr, KeyPress,
		KeyPressMask, key_press_hook, cub3d);
	mlx_hook(cub3d->window.win_ptr, KeyRelease,
		KeyReleaseMask, key_release_hook, cub3d);
	mlx_hook(window->win_ptr, DestroyNotify,
		StructureNotifyMask, &exit_cub3d, cub3d);
}

void	init_mlx_mouse(t_cub3d *cub3d)
{
	mlx_mouse_move(cub3d->window.mlx_ptr, cub3d->window.win_ptr,
		WINDOW_WIDTH / 2, WINDOW_HEIGHT / 2);
}

void	init_mlx(t_cub3d *cub3d, t_window *window)
{
	init_mlx_window(cub3d, window);
	init_mlx_hook(cub3d, window);
	init_mlx_mouse(cub3d);
}
