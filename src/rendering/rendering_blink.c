/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_blink.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/14 14:20:55 by algadea           #+#    #+#             */
/*   Updated: 2025/05/14 14:23:36 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	update_blink_value(t_blink *blink)
{
	if (blink->value == blink->max)
		blink->direction = down;
	else if (blink->value == 0)
		blink->direction = up;
	if (blink->direction == up)
		blink->value++;
	else if (blink->direction == down)
		blink->value--;
}

void	update_pixel_value(char **pixel, t_blink *blink)
{
	if (blink->direction == down
		&& *(unsigned *)(*pixel) != 0x00000000)
		*(unsigned int *)(*pixel) -= 0x00010101 * 4;
	else if (blink->direction == up
		&& *(unsigned *)(*pixel) != 0x00FFFFFF)
		*(unsigned int *)(*pixel) += 0x00010101 * 4;
}

void	render_blink(t_scene *scene, t_window *window,
				t_blink *blink, t_img *level_menu_img)
{
	int		y;
	int		x;
	char	*pixel;

	y = 0;
	while (y < window->height)
	{
		x = 0;
		while (x < window->width)
		{
			pixel = get_pixel(level_menu_img, x, y);
			if (*(unsigned *)pixel != 0xFF000000)
			{
				update_pixel_value(&pixel, blink);
				draw_pixel_asset(&scene->img, x, y, pixel);
			}
			x++;
		}
		y++;
	}
	update_blink_value(blink);
}
