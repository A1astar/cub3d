/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_minimap.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/25 10:31:16 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 11:30:13 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_square(t_scene *scene, int x, int y)
{
	int	x_draw;
	int	y_draw;
	int	x_size;
	int	y_size;

	x_draw = x * 10;
	y_draw = y * 10;
	y_size = y_draw + 10;
	x_size = x_draw + 10;
	while (y_draw < y_size)
	{
		draw_pixel(scene->img, x_draw, y_draw, 0xAFAFAF);
		y_draw++;
	}
	while (x_draw < x_size)
	{
		draw_pixel(scene->img, x_draw, y_draw, 0xAFAFAF);
		x_draw++;
	}
	x_draw = x;
	y_draw = y;
	while (x_draw < x_size)
	{
		draw_pixel(scene->img, x_draw, y_draw, 0xAFAFAF);
		x_draw++;
	}
	while (y_draw < y_size)
	{
		draw_pixel(scene->img, x_draw, y_draw, 0xAFAFAF);
		y_draw++;
	}
}

void	render_wall(t_scene *scene, int x, int y)
{
	int	x_draw;
	int	y_draw;
	int	x_size;
	int	y_size;

	y_draw = y * 10;
	x_draw = x * 10;
	y_size = y_draw + 10;
	x_size = x_draw + 10;
	while (y_draw < y_size)
	{
		x_draw = x * 10;
		while (x_draw < x_size)
		{
			draw_pixel(scene->img, x_draw, y_draw, 0xAFAFAF);
			x_draw++;
		}
		y_draw++;
	}
}

void	render_minimap(t_cub3d *cub3d, t_scene *scene, t_minimap *minimap)
{
	int	x;
	int	y;

	(void)minimap;
	y = 0;
	while (cub3d->map->data[y])
	{
		x = 0;
		while (cub3d->map->data[y][x])
		{
			if (cub3d->map->data[y][x] == '1')
				render_wall(scene, x, y);
			else
				render_square(scene, x, y);
			x++;
		}
		y++;
	}
}