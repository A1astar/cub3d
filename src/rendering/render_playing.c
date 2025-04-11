/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_playing.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/11 12:12:04 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_playing(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	(void)cub3d;
	int	y;
	int	x;

	y = 0;
	while (y < WINDOW_HEIGHT)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			scene->img.pixel = 0x00000000;
			x++;
		}
		y++;
	}
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, 
		scene->img.ptr, 0, 0);
}

int	playing_loop(t_cub3d *cub3d)
{
	render_playing(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
