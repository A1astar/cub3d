/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_mlx.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:37 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 15:56:11 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_mlx_scene(t_cub3d *cub3d, t_scene *scene)
{
	scene->mlx_ptr = mlx_init();
	if (scene->mlx_ptr == NULL)
	{
		error_msg(NULL, NULL);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
	scene->window_width = WINDOW_WIDTH;
	scene->window_height = WINDOW_HEIGHT;
	scene->win_ptr = mlx_new_window(scene->mlx_ptr,
			scene->window_width, scene->window_height, "CUB3D");
	if (scene->win_ptr == NULL)
	{
		error_msg(NULL, NULL);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_mlx_hook(t_cub3d *cub3d, t_scene *scene)
{
	(void)scene;
	// Main menu hook
	mlx_loop_hook(cub3d->scene.mlx_ptr, main_menu_loop, cub3d);

	// Level menu hook
	mlx_loop_hook(cub3d->scene.mlx_ptr, level_menu_loop, cub3d);

	// Playing hook
	// mlx_loop_hook(cub3d->scene.mlx_ptr, playing_loop, cub3d);
	mlx_hook(cub3d->scene.win_ptr, ButtonPress,
		ButtonPressMask, mouse_press_hook, cub3d);
	mlx_hook(cub3d->scene.win_ptr, MotionNotify,
		ButtonMotionMask, mouse_motion_hook, cub3d);
	mlx_hook(cub3d->scene.win_ptr, KeyPress,
		KeyPressMask, key_hook, cub3d);
	mlx_hook(cub3d->scene.win_ptr, DestroyNotify,
		StructureNotifyMask, &exit_cub3d, cub3d);
}

void	init_mlx(t_cub3d *cub3d, t_scene *scene)
{
	init_mlx_scene(cub3d, scene);
	init_mlx_hook(cub3d, scene);
}