/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_game.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/28 18:44:29 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_ceiling(t_cub3d *cub3d, t_scene *scene, t_map *map)
{
	int	y;
	int	x;

	(void)cub3d;
	y = 0;
	while (y < WINDOW_HEIGHT / 2)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			draw_pixel(&scene->img, x, y,
				map->ceilling_rgb[0] << 16 | map->ceilling_rgb[1] << 8 | map->ceilling_rgb[2]);
			x++;
		}
		y++;
	}
}

void	render_floor(t_cub3d *cub3d, t_scene *scene, t_map *map)
{
	int	y;
	int	x;

	(void)cub3d;
	y = WINDOW_HEIGHT / 2;
	while (y < WINDOW_HEIGHT)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			draw_pixel(&scene->img, x, y,
				map->floor_rgb[0] << 16 | map->floor_rgb[1] << 8 | map->floor_rgb[2]);
			x++;
		}
		y++;
	}
}



void	render_viewmodel(t_viewmodel *viewmodel, t_scene *scene)
{
	int				x_start;
	int				y_start;
	int				x;
	int				y;
	unsigned int	color;

	x = 0;
	y = 0;
	color = 0;
	x_start = WINDOW_WIDTH / 2 - viewmodel->normal_stand.width / 2;
	y_start = WINDOW_HEIGHT - viewmodel->normal_stand.height
		+ viewmodel->draw_pos;
	while (y < viewmodel->normal_stand.height)
	{
		x = 0;
		while (x < viewmodel->normal_stand.width)
		{
			color = get_pixel(&viewmodel->normal_stand, x, y);
			if ((color >> 24) == 0)
				draw_pixel(&scene->img, x_start + x, y_start + y, color);
			x++;
		}
		y++;
	}
}

void	render_game(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	if (cub3d->rendering_state == normal)
	{
		raycast_floor(cub3d, &cub3d->raycast, &cub3d->player);
	}
	else
	{
		rendering_psychedelic(cub3d, &cub3d->scene, &cub3d->map, ep_ceiling);
		rendering_psychedelic(cub3d, &cub3d->scene, &cub3d->map, ep_floor);
		// render_floor(cub3d, scene, &cub3d->map);
		// render_ceiling(cub3d, scene, &cub3d->map);
	}
	raycast_map(cub3d, &cub3d->raycast, &cub3d->player);
	raycast_doors(cub3d, &cub3d->raycast, &cub3d->player);
	if(cub3d->nb_item)
		render_item(&cub3d->item, &cub3d->player, &cub3d->raycast, &cub3d->scene);
		// raycast_threads(cub3d);
	render_minimap(cub3d, &cub3d->scene, &cub3d->map, &cub3d->minimap);
	render_minimap_player(cub3d, &cub3d->minimap, &cub3d->player,
		&cub3d->player.render);
	render_viewmodel(&cub3d->player.viewmodel, &cub3d->scene);
	// render_minimap_ray(cub3d);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, scene->img.ptr, 0,
		0);
}

int	game_loop(t_cub3d *cub3d)
{
	update_game_data(cub3d);
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
