/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_asset.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:42:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/14 13:44:10 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_scene(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	scene->img.ptr = mlx_new_image(window->mlx_ptr, window->width,
			window->height);
	if (!scene->img.ptr)
		free_program_and_exit(cub3d, EXIT_FAILURE);
	scene->img.addr = mlx_get_data_addr(scene->img.ptr, &scene->img.bpp,
			&scene->img.size_line, &scene->img.endian);
	if (!scene->img.addr)
		free_program_and_exit(cub3d, EXIT_FAILURE);
}

void	init_asset(t_cub3d *cub3d)
{
	init_scene(cub3d, &cub3d->window, &cub3d->scene);
	init_main_menu(cub3d);
	init_level_menu(cub3d);
	init_mandatory_assets(cub3d, cub3d->map.assets_paths);
	init_bonus_assets(cub3d);
}
