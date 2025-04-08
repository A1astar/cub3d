/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/21 17:06:19 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 09:27:35 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	clean_scene_img(t_window *window, t_scene *scene)
{
	int	x;
	int	y;
	
	y = 0;
	while (y < window->height)
	{
		x = 0;
		while (x < window->width)
		{
			draw_pixel(scene->img, x, y, 0x000000);
			x++;
		}
		y++;
	}
}

void	draw_pixel(t_img *img, int x, int y, int color)
{
	char	*pixel;

	pixel = img->addr + (y * img->size_line + x * (img->bpp / 8));
	*(int *)pixel = color;
}