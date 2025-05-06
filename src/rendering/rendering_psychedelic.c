/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_psychedelic.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/23 12:46:21 by algadea           #+#    #+#             */
/*   Updated: 2025/05/06 11:25:25 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_rgb_color(int *psych_rgb, t_map *map)
{
	if (!psych_rgb[0])
		psych_rgb[0] = map->ceilling_rgb[0];
	if (!psych_rgb[1])
		psych_rgb[1] = map->ceilling_rgb[1];
	if (!psych_rgb[2])
		psych_rgb[2] = map->ceilling_rgb[2];
}

static void	init_draw_section(int *height, int *y, int which)
{
	if (which == ep_ceiling)
	{
		*height = WINDOW_HEIGHT;
		*y = WINDOW_HEIGHT / 2;
	}
	else if (which == ep_floor)
	{
		*y = 0;
		*height = WINDOW_HEIGHT / 2;
	}
}

static void	change_rgb_colors(int *psych_rgb, int which)
{
	if (which == ep_ceiling)
	{
		psych_rgb[2] += PI;
		psych_rgb[0] -= PI;
		psych_rgb[1] -= psych_rgb[1];
	}
	else
	{
		psych_rgb[2] += 666;
		psych_rgb[0]++;
		psych_rgb[1] += PI;
	}
}

void	rendering_psychedelic(t_scene *scene, t_map *map, int which)
{
	int			y;
	int			x;
	int			height;
	static int	psych_rgb[3];

	y = 0;
	height = 0;
	init_rgb_color(psych_rgb, map);
	init_draw_section(&height, &y, which);
	while (y < height)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			draw_pixel_color(&scene->img, x, y,
				psych_rgb[0] << 16 | psych_rgb[1] << 8 | psych_rgb[2]);
			change_rgb_colors(psych_rgb, which);
			x++;
		}
		y++;
	}
}
