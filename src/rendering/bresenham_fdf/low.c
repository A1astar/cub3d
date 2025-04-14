/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   low.c                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/23 18:51:19 by agadea            #+#    #+#             */
/*   Updated: 2023/08/23 19:03:53 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/fdf.h"

void	plot_line_low(t_struct *fdf, int yi, int i)
{
	int	d;
	int	x;
	int	y;

	d = (2 * fdf->vertex.dy) - fdf->vertex.dx;
	y = fdf->vertex.y1;
	x = fdf->vertex.x1;
	while (x < fdf->vertex.x2)
	{
		if (x > 0 && y > 0 && x < fdf->window.width && y < fdf->window.height)
		{
			fdf->img.pixel = fdf->img.addr
				+ (y * fdf->img.size_line) + x * (fdf->img.bpp / 8);
			*(unsigned int *)fdf->img.pixel = fdf->vertex.update[i][3];
		}
		if (d > 0)
		{
			y = y + yi;
			d = d + (2 * (fdf->vertex.dy - fdf->vertex.dx));
		}
		else
			d = d + 2 * fdf->vertex.dy;
		x++;
	}
}

void	plot_line_low_reverse(t_struct *fdf, int yi, int i)
{
	int	d;
	int	x;
	int	y;

	d = (2 * fdf->vertex.dy) - fdf->vertex.dx;
	y = fdf->vertex.y2;
	x = fdf->vertex.x2;
	while (x < fdf->vertex.x1)
	{
		if (x > 0 && y > 0 && x < fdf->window.width && y < fdf->window.height)
		{
			fdf->img.pixel = fdf->img.addr
				+ (y * fdf->img.size_line) + x * (fdf->img.bpp / 8);
			*(unsigned int *)fdf->img.pixel = fdf->vertex.update[i][3];
		}
		if (d > 0)
		{
			y = y + yi;
			d = d + (2 * (fdf->vertex.dy - fdf->vertex.dx));
		}
		else
			d = d + 2 * fdf->vertex.dy;
		x++;
	}
}
