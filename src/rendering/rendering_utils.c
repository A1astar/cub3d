/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_utils.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 16:00:23 by algadea           #+#    #+#             */
/*   Updated: 2025/05/02 12:13:04 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	get_alpha(unsigned int color)
{
	unsigned char	*bytes;

	bytes = (unsigned char *)&color;
	return (bytes[1]);
}

char	*get_pixel(t_img *img, int x, int y)
{
	img->pixel = img->addr + y * img->size_line + x * (img->bpp / 8);
	return (img->pixel);
}

void	draw_pixel_asset(t_img *scene, int x, int y, char *pixel)
{
	if (*(unsigned int *)pixel != 0xFF000000)
	{
		scene->pixel = scene->addr + (y * scene->size_line + x * (scene->bpp
					/ 8));
		*(unsigned int *)scene->pixel = *(unsigned int *)pixel;
	}
}

void	draw_pixel_color(t_img *scene, int x, int y, int color)
{
	scene->pixel = scene->addr + (y * scene->size_line + x * (scene->bpp / 8));
	*(unsigned int *)scene->pixel = color;
}

void	draw_square(t_cub3d *cub3d, int x_index, int y_index,
		unsigned int color)
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
			draw_pixel_color(&cub3d->scene.img, x + x_index, y + y_index,
				color);
			x++;
		}
		y++;
	}
}
