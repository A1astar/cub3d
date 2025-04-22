/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_asset.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:42:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 14:05:00 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_main_menu(t_cub3d *cub3d, t_window *window, t_main_menu *main_menu)
{
	main_menu->img[0].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu1-720.xpm", &main_menu->width,
			&main_menu->height);
	main_menu->img[1].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu2-720.xpm", &main_menu->width,
			&main_menu->height);
	main_menu->img[2].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu3-720.xpm", &main_menu->width,
			&main_menu->height);
	if (!main_menu->img[0].ptr || !main_menu->img[1].ptr
		|| !main_menu->img[2].ptr)
	{
		printf(BOLD RED "MAIN MENU XPM ERROR\n" DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_scene(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	scene->img.ptr = mlx_new_image(window->mlx_ptr, window->width,
			window->height);
	if (!scene->img.ptr)
		free_program(cub3d);
	scene->img.addr = mlx_get_data_addr(scene->img.ptr, &scene->img.bpp,
			&scene->img.size_line, &scene->img.endian);
	if (!scene->img.addr)
		free_program(cub3d);
}

void	init_asset(t_cub3d *cub3d)
{
	init_scene(cub3d, &cub3d->window, &cub3d->scene);
	init_main_menu(cub3d, &cub3d->window, &cub3d->main_menu);
	init_mandatory_assets(cub3d, cub3d->map.assets_paths);
	init_bonus_assets(cub3d);
}
