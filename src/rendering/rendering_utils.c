/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_utils.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 16:00:23 by algadea           #+#    #+#             */
/*   Updated: 2025/04/18 18:02:50 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	draw_pixel(t_img *img, int x, int y, int color)
{
	char	*pixel;

	pixel = img->addr + (y * img->size_line + x * (img->bpp / 8));
	*(unsigned int *)pixel = color;
}

void	draw_square(t_cub3d *cub3d, int x_index, int y_index, unsigned int color)
{
	int	y;
	int	x;
	int	height;
	int	width;

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
