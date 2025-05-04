/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_game.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/04 17:53:44 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// !MANDATORY
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
				map->ceilling_rgb[0] << 16 | map->ceilling_rgb[1] << 8 | map->ceilling_rgb[2]);
			x++;
		}
		y++;
	}
}

// !MANDATORY
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
				map->floor_rgb[0] << 16 | map->floor_rgb[1] << 8 | map->floor_rgb[2]);
			x++;
		}
		y++;
	}
}

void	render_game(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	if (cub3d->rendering_state == normal)
		raycast_floor(cub3d, &cub3d->raycast, &cub3d->player);
	else
	{
		rendering_psychedelic(cub3d, &cub3d->scene, &cub3d->map, ep_ceiling);
		// rendering_psychedelic(cub3d, &cub3d->scene, &cub3d->map, ep_floor);
		// render_floor(scene, &cub3d->map);
		// render_ceiling(scene, &cub3d->map);
	}
	raycast_map(cub3d, &cub3d->raycast, &cub3d->player);
	raycast_doors(cub3d, &cub3d->raycast, &cub3d->player);
			// raycast_threads(cub3d);
	if (cub3d->nb_item)
		render_item(cub3d, &cub3d->item, &cub3d->raycast);
	render_enemy(cub3d, &cub3d->raycast, &cub3d->scene);
	render_minimap(cub3d, &cub3d->map, &cub3d->minimap, &cub3d->player);
	render_viewmodel(cub3d, &cub3d->window, &cub3d->player.viewmodel, &cub3d->scene);
	// render_minimap_ray(cub3d);
	mlx_put_image_to_window(window->mlx_ptr,
		window->win_ptr, scene->img.ptr, 0, 0);
}

int	game_loop(t_cub3d *cub3d)
{
	update_game_data(cub3d);
	get_tick(&cub3d->scene.frame_start);
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	update_frame_rate(cub3d, &cub3d->scene);
	return (0);
}
