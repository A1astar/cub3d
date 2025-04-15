/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   high.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/23 18:51:26 by agadea            #+#    #+#             */
/*   Updated: 2025/04/15 18:24:28 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/cub3d.h"

void	plot_line_high(t_cub3d *cub3d, int xi, int i)
{
	int	x;
	int	y;
	int	d;

	d = (2 * cub3d->vertex.dx) - cub3d->vertex.dy;
	x = cub3d->vertex.x1;
	y = cub3d->vertex.y1;
	while (y < cub3d->vertex.y2)
	{
		if (x > 0 && y > 0 && x < cub3d->window.width && y < cub3d->window.height)
		{
			cub3d->img.pixel = cub3d->img.addr
				+ (y * cub3d->img.size_line) + x * (cub3d->img.bpp / 8);
			*(unsigned int *)cub3d->img.pixel = cub3d->vertex.update[i][3];
		}
		if (d > 0)
		{
			x = x + xi;
			d = d + (2 * (cub3d->vertex.dx - cub3d->vertex.dy));
		}
		else
			d = d + 2 * cub3d->vertex.dx;
		y++;
	}
}

void	plot_line_high_reverse(t_cub3d *cub3d, int xi, int i)
{
	int	x;
	int	y;
	int	d;

	d = (2 * cub3d->vertex.dx) - cub3d->vertex.dy;
	x = cub3d->vertex.x2;
	y = cub3d->vertex.y2;
	while (y < cub3d->vertex.y1)
	{
		if (x > 0 && y > 0 && x < cub3d->window.width && y < cub3d->window.height)
		{
			cub3d->img.pixel = cub3d->img.addr
				+ (y * cub3d->img.size_line) + x * (cub3d->img.bpp / 8);
			*(unsigned int *)cub3d->img.pixel = cub3d->vertex.update[i][3];
		}
		if (d > 0)
		{
			x = x + xi;
			d = d + (2 * (cub3d->vertex.dx - cub3d->vertex.dy));
		}
		else
			d = d + 2 * cub3d->vertex.dx;
		y++;
	}
}
