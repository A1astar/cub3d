/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_psychedelic.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/23 12:46:21 by algadea           #+#    #+#             */
/*   Updated: 2025/04/29 12:14:38 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	rendering_psychedelic(t_cub3d *cub3d, t_scene *scene, t_map *map,
		int which)
{
	int			y;
	int			x;
	int			height;
	static int	red;
	static int	green;
	static int	blue;

	(void)cub3d;
	y = 0;
	height = 0;
	if (!red)
		red = map->ceilling_rgb[0];
	if (!green)
		green = map->ceilling_rgb[1];
	if (!blue)
		blue = map->ceilling_rgb[2];
	if (which == ep_ceiling)
	{
		height = WINDOW_HEIGHT;
		y = WINDOW_HEIGHT / 2;
	}
	else if (which == ep_floor)
	{
		y = 0;
		height = WINDOW_HEIGHT / 2;
	}
	while (y < height)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			draw_pixel_color(&scene->img, x, y, red << 16 | green << 8 | blue);
			if (which == ep_ceiling)
			{
				blue *= 2;
				red += PI;
				green--;
			}
			else
			{
				blue--;
				red++;
				green += PI;
			}
			x++;
		}
		y++;
	}
}


