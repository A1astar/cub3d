/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   low.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/23 18:51:19 by agadea            #+#    #+#             */
/*   Updated: 2025/04/15 18:25:02 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/cub3d.h"

void	plot_line_low(t_cub3d *cub3d, int yi, int i)
{
	int	d;
	int	x;
	int	y;

	d = (2 * cub3d->vertex.dy) - cub3d->vertex.dx;
	y = cub3d->vertex.y1;
	x = cub3d->vertex.x1;
	while (x < cub3d->vertex.x2)
	{
		if (x > 0 && y > 0 && x < cub3d->window.width && y < cub3d->window.height)
		{
			cub3d->img.pixel = cub3d->img.addr
				+ (y * cub3d->img.size_line) + x * (cub3d->img.bpp / 8);
			*(unsigned int *)cub3d->img.pixel = cub3d->vertex.update[i][3];
		}
		if (d > 0)
		{
			y = y + yi;
			d = d + (2 * (cub3d->vertex.dy - cub3d->vertex.dx));
		}
		else
			d = d + 2 * cub3d->vertex.dy;
		x++;
	}
}

void	plot_line_low_reverse(t_cub3d *cub3d, int yi, int i)
{
	int	d;
	int	x;
	int	y;

	d = (2 * cub3d->vertex.dy) - cub3d->vertex.dx;
	y = cub3d->vertex.y2;
	x = cub3d->vertex.x2;
	while (x < cub3d->vertex.x1)
	{
		if (x > 0 && y > 0 && x < cub3d->window.width && y < cub3d->window.height)
		{
			cub3d->img.pixel = cub3d->img.addr
				+ (y * cub3d->img.size_line) + x * (cub3d->img.bpp / 8);
			*(unsigned int *)cub3d->img.pixel = cub3d->vertex.update[i][3];
		}
		if (d > 0)
		{
			y = y + yi;
			d = d + (2 * (cub3d->vertex.dy - cub3d->vertex.dx));
		}
		else
			d = d + 2 * cub3d->vertex.dy;
		x++;
	}
}
