/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_utils.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 16:00:23 by algadea           #+#    #+#             */
/*   Updated: 2025/04/16 16:01:14 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	draw_square(t_cub3d *cub3d, int x_index, int y_index,
		unsigned int color, int which_rendering)
{
	int	y;
	int	x;
	int	height;
	int	width;

	(void)which_rendering;
	y = 0;
	height = cub3d->minimap.tile_height * cub3d->minimap.scale;
	width = cub3d->minimap.tile_width * cub3d->minimap.scale;
	while (y < height)
	{
		x = 0;
		while (x < width)
		{
			draw_pixel(&cub3d->scene.img, x + x_index, y + y_index, color);
			x++;
		}
		y++;
	}
}
