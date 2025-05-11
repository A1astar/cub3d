/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/11 13:00:45 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 19:13:39 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	load_asset(t_cub3d *cub3d, t_img *texture, char *asset_path)
{
	pthread_mutex_lock(&cub3d->lock);
	texture->ptr = mlx_xpm_file_to_image(cub3d->window.mlx_ptr, asset_path,
			&texture->width, &texture->height);
	if (!texture->ptr)
	{
		error_msg("Wrong asset address: ", asset_path);
		free_program(cub3d);
	}
	pthread_mutex_unlock(&cub3d->lock);
	texture->addr = mlx_get_data_addr(texture->ptr, &texture->bpp,
			&texture->size_line, &texture->endian);
	if (!texture->addr)
	{
		error_msg("Cannot load asset: ", asset_path);
		free_program(cub3d);
	}
}
