/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_mlx.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:37 by algadea           #+#    #+#             */
/*   Updated: 2025/04/08 03:34:53 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	init_mlx(t_cub3d *cub3d, t_scene *scene)
{
	scene->scene->mlx_ptr = mlx_init();
	if (scene->mlx_ptr == NULL)
	{
		ft_printf(BOLD RED"ERROR MLX_INIT\n"DEFAULT);
		free_fdf(scene);
		exit(EXIT_FAILURE);
	}
	scene->window.width = 1920;
	scene->window.height = 1080;
	scene->win_ptr = mlx_new_window(scene->mlx_ptr,
			scene->window.width, scene->window.height, "FDF");
	if (scene->win_ptr == NULL)
	{
		ft_printf(BOLD RED"ERROR MLX_NEW_WINDOW\n"DEFAULT);
		free_fdf(scene);
		exit(EXIT_FAILURE);
	}
}