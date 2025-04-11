/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_item.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/14 15:04:36 by agadea            #+#    #+#             */
/*   Updated: 2025/03/01 21:41:39 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/so_long.h"

void	draw_item(t_so_long *so_long, int x, int y, int i)
{
	int	x_i;
	int	y_i;

	y_i = 0;
	while (y_i < so_long->item->height[so_long->item[i].index])
	{
		x_i = 0;
		while (x_i < so_long->item->width[so_long->item[i].index])
		{
			so_long->item[i].pixel = so_long->item[i].addr
				+ y_i * so_long->item[i].size_line
				+ x_i * (so_long->item[i].bpp / 8);
			so_long->scene.pixel = so_long->scene.addr
				+ y * so_long->scene.size_line + x * (so_long->scene.bpp / 8);
			if (*(unsigned int *)so_long->item[i].pixel != 0xFF000000)
				*(unsigned int *)so_long->scene.pixel
					= *(unsigned int *)so_long->item[i].pixel;
			x++;
			x_i++;
		}
		y++;
		x -= x_i;
		y_i++;
	}
}

void	put_item(t_so_long *so_long)
{
	int	i;
	int	x;
	int	y;

	i = 0 ;
	while (i < so_long->map.item_count)
	{
		if (so_long->item[i].state == not_collected)
		{
			y = so_long->item[i].y_origin;
			x = so_long->item[i].x_origin;
			draw_item(so_long, x, y, i);
		}
		i++;
	}
}
