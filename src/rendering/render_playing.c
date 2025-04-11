/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_playing.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/11 14:58:50 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_background(t_cub3d *cub3d, t_scene *scene)
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
			scene->img.pixel = scene->img.addr
				+ y * scene->img.size_line
				+ x * (scene->img.bpp / 8);
			*(unsigned int *)scene->img.pixel = 0x00FFFFFF;
			x++;
		}
		y++;
	}
}

void	render_ceiling(t_cub3d *cub3d, t_scene *scene, t_map *map)
{
	(void)cub3d;
	int	y;
	int	x;

	y = 0;
	while (y < WINDOW_HEIGHT / 2)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			scene->img.pixel = scene->img.addr
				+ y * scene->img.size_line
				+ x * (scene->img.bpp / 8);
			*(unsigned int *)scene->img.pixel = map->ceilling_rgb[0] << 16
				| map->ceilling_rgb[1] << 8 | map->ceilling_rgb[2];
			// printf("R = %d, G = %d, B = %d\n", ft_atoi(map->ceilling_rgb[0]),
			// 	ft_atoi(map->ceilling_rgb[1]), ft_atoi(map->ceilling_rgb[2]));
			x++;
		}
		y++;
	}
}

void	render_playing(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	render_background(cub3d, scene);
	render_ceiling(cub3d, scene, &cub3d->map);
	// render_floor(cub3d, window, scene);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr,
		scene->img.ptr, 0, 0);
}

int	playing_loop(t_cub3d *cub3d)
{
	printf("here playing\n");
	render_playing(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
