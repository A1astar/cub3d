/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   high.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/23 18:51:26 by agadea            #+#    #+#             */
/*   Updated: 2023/08/23 19:03:41 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/fdf.h"

void	plot_line_high(t_struct *fdf, int xi, int i)
{
	int	x;
	int	y;
	int	d;

	d = (2 * fdf->vertex.dx) - fdf->vertex.dy;
	x = fdf->vertex.x1;
	y = fdf->vertex.y1;
	while (y < fdf->vertex.y2)
	{
		if (x > 0 && y > 0 && x < fdf->window.width && y < fdf->window.height)
		{
			fdf->img.pixel = fdf->img.addr
				+ (y * fdf->img.size_line) + x * (fdf->img.bpp / 8);
			*(unsigned int *)fdf->img.pixel = fdf->vertex.update[i][3];
		}
		if (d > 0)
		{
			x = x + xi;
			d = d + (2 * (fdf->vertex.dx - fdf->vertex.dy));
		}
		else
			d = d + 2 * fdf->vertex.dx;
		y++;
	}
}

void	plot_line_high_reverse(t_struct *fdf, int xi, int i)
{
	int	x;
	int	y;
	int	d;

	d = (2 * fdf->vertex.dx) - fdf->vertex.dy;
	x = fdf->vertex.x2;
	y = fdf->vertex.y2;
	while (y < fdf->vertex.y1)
	{
		if (x > 0 && y > 0 && x < fdf->window.width && y < fdf->window.height)
		{
			fdf->img.pixel = fdf->img.addr
				+ (y * fdf->img.size_line) + x * (fdf->img.bpp / 8);
			*(unsigned int *)fdf->img.pixel = fdf->vertex.update[i][3];
		}
		if (d > 0)
		{
			x = x + xi;
			d = d + (2 * (fdf->vertex.dx - fdf->vertex.dy));
		}
		else
			d = d + 2 * fdf->vertex.dx;
		y++;
	}
}
