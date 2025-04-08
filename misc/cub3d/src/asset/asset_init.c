/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   asset_init.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/03 12:38:12 by agadea            #+#    #+#             */
/*   Updated: 2024/07/29 20:03:55 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	init_level_menu(t_cub3d *cub3d, t_main_menu *main_menu, void *mlx_ptr)
// {

// }

t_img	*create_new_img(t_cub3d *cub3d, t_window *window, void *mlx_ptr)
{
	t_img	*img;

	img = malloc(sizeof(t_img));
	if (!img)
		print_error_then_exit_program(cub3d, err_malloc);
	img->ptr = mlx_new_image(mlx_ptr, window->width, window->height);
	img->addr = mlx_get_data_addr(img->ptr, &img->bpp, &img->size_line, &img->endian);
	return (img);
}

void	init_scene_asset(t_cub3d *cub3d, t_scene *scene)
{
	scene->img = create_new_img(cub3d, cub3d->window, cub3d->mlx_ptr);
}

void	init_main_menu_asset(t_cub3d *cub3d, t_main_menu *main_menu, void *mlx_ptr)
{
	main_menu->xpm = malloc(sizeof(t_xpm));
	main_menu->xpm->ptr = mlx_xpm_file_to_image(mlx_ptr, "asset/Untitled.xpm",
		&main_menu->xpm->width, &main_menu->xpm->height);
	main_menu->pos_x = cub3d->window->width / 3;
	main_menu->pos_y = cub3d->window->height / 3;
}

void	load_asset(t_cub3d *cub3d)
{
	init_scene_asset(cub3d, cub3d->scene);
	init_main_menu_asset(cub3d, cub3d->main_menu, cub3d->mlx_ptr);
}
