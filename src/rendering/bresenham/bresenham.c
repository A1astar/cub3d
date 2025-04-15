/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   bresenham.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/08/10 15:14:58 by agadea            #+#    #+#             */
/*   Updated: 2025/04/15 18:23:41 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/cub3d.h"

void	low_slope(t_struct *fdf, int i)
{
	int	yi;

	yi = 1;
	if (fdf->vertex.x1 > fdf->vertex.x2)
	{
		fdf->vertex.dx = fdf->vertex.x1 - fdf->vertex.x2;
		fdf->vertex.dy = fdf->vertex.y1 - fdf->vertex.y2;
		if (fdf->vertex.dy < 0)
		{
			yi = -1;
			fdf->vertex.dy *= -1;
		}
		plot_line_low_reverse(fdf, yi, i);
	}
	else
	{
		if (fdf->vertex.dy < 0)
		{
			yi = -1;
			fdf->vertex.dy *= -1;
		}
		plot_line_low(fdf, yi, i);
	}
}

void	high_slope(t_struct *fdf, int i)
{
	int	xi;

	xi = 1;
	if (fdf->vertex.y1 > fdf->vertex.y2)
	{
		fdf->vertex.dx = fdf->vertex.x1 - fdf->vertex.x2;
		fdf->vertex.dy = fdf->vertex.y1 - fdf->vertex.y2;
		if (fdf->vertex.dx < 0)
		{
			xi = -1;
			fdf->vertex.dx *= -1;
		}
		plot_line_high_reverse(fdf, xi, i);
	}
	else
	{
		if (fdf->vertex.dx < 0)
		{
			xi = -1;
			fdf->vertex.dx *= -1;
		}
		plot_line_high(fdf, xi, i);
	}
}

void	bresenham(t_struct *fdf, int i)
{
	if (abs(fdf->vertex.dy) < abs(fdf->vertex.dx))
		low_slope(fdf, i);
	else
		high_slope(fdf, i);
}
