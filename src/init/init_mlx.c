/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_mlx.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:37 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 11:24:58by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_mlx(t_cub3d *cub3d, t_scene *scene)
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

	// mlx_loop_hook(scene->mlx_ptr, game_loop, cub3d);
	// mlx_hook(scene->win_ptr, ButtonPress,
	// 	ButtonPressMask, mouse_hook, cub3d);
	// mlx_hook(scene->win_ptr, KeyPress,
	// 	KeyPressMask, key_hook, cub3d);
	// mlx_hook(scene->win_ptr, DestroyNotify,
	// 	StructureNotifyMask, &exit_cub3d, cub3d);
}