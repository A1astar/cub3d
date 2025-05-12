/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_mandatory_game.c                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/12 15:41:19 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/12 15:43:52 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_ceiling(t_window *window, t_scene *scene, t_map *map)
{
	int	y;
	int	x;

	y = 0;
	while (y < window->half_height)
	{
		x = 0;
		while (x < window->width)
		{
			draw_pixel_color(&scene->img, x, y,
				map->ceilling_rgb[0] << 16
				| map->ceilling_rgb[1] << 8
				| map->ceilling_rgb[2]);
			x++;
		}
		y++;
	}
}

void	render_floor(t_window *window, t_scene *scene, t_map *map)
{
	int	y;
	int	x;

	y = window->half_height;
	while (y < window->height)
	{
		x = 0;
		while (x < window->width)
		{
			draw_pixel_color(&scene->img, x, y,
				map->floor_rgb[0] << 16
				| map->floor_rgb[1] << 8
				| map->floor_rgb[2]);
			x++;
		}
		y++;
	}
}

void	render_game(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	render_floor(window, scene, &cub3d->map);
	render_ceiling(window, scene, &cub3d->map);
	raycast_map(cub3d, &cub3d->raycast, &cub3d->player);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, scene->img.ptr, 0,
		0);
}

int	game_loop(t_cub3d *cub3d)
{
	update_frame_rate(&cub3d->time);
	update_game_data(cub3d);
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
