/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_asset.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:42:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/12 18:43:22 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_scene(t_cub3d *cub3d)
{
	pthread_mutex_lock(&cub3d->lock);
	cub3d->scene.img.ptr = mlx_new_image(cub3d->window.mlx_ptr,
			cub3d->window.width, cub3d->window.height);
	if (!cub3d->scene.img.ptr)
		free_program_and_exit(cub3d, EXIT_FAILURE);
	pthread_mutex_unlock(&cub3d->lock);
	cub3d->scene.img.addr = mlx_get_data_addr(cub3d->scene.img.ptr,
			&cub3d->scene.img.bpp, &cub3d->scene.img.size_line, &cub3d->scene.img.endian);
	if (!cub3d->scene.img.addr)
		free_program_and_exit(cub3d, EXIT_FAILURE);
	mlx_mouse_hide(cub3d->window.mlx_ptr, cub3d->window.win_ptr);
}

void	init_asset(t_cub3d *cub3d)
{
	init_scene(cub3d);
	init_main_menu(cub3d);
	init_mandatory_assets(cub3d);
	init_bonus_assets(cub3d);
}
