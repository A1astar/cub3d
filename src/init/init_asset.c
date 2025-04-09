/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_asset.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:42:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 19:30:11 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_main_menu(t_cub3d *cub3d, t_scene *scene, t_menu *main_menu)
{
	main_menu->img[0].ptr = mlx_xpm_file_to_image(scene->mlx_ptr,
		"asset/menu/main-menu1.xpm", &main_menu->width, &main_menu->height);
	main_menu->img[1].ptr = mlx_xpm_file_to_image(scene->mlx_ptr,
		"asset/menu/main-menu2.xpm", &main_menu->width, &main_menu->height);
	main_menu->img[2].ptr = mlx_xpm_file_to_image(scene->mlx_ptr,
		"asset/menu/main-menu3.xpm", &main_menu->width, &main_menu->height);
	if (!main_menu->img[0].ptr || !main_menu->img[1].ptr
		|| !main_menu->img[2].ptr)
	{
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_asset(t_cub3d *cub3d)
{
	init_main_menu(cub3d, &cub3d->scene, &cub3d->main_menu);
	init_mandatory_assets(cub3d, cub3d->map.assets_paths);
	//init_bonus_part(cub3d);
	// init_main_menu(cub3d, &cub3d.scene, &cub3d.main_menu);
}
