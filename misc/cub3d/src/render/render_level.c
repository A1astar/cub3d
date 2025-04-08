/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_level.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/28 15:21:42 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 11:40:55 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_level(t_cub3d *cub3d)
{
	clean_scene_img(cub3d->window, cub3d->scene);
	render_minimap(cub3d, cub3d->scene, cub3d->minimap);
	render_player(cub3d, cub3d->player);
	mlx_put_image_to_window(cub3d->mlx_ptr, cub3d->win_ptr,
		cub3d->scene->img->ptr, cub3d->minimap->x_pos, cub3d->minimap->y_pos);
}