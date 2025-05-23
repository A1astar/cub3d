/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 11:27:44 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 18:57:53 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_minimap(t_window *window, t_minimap *minimap)
{
	int	map_width;
	int	map_height;

	minimap->tile_height = 5;
	minimap->tile_width = 5;
	minimap->scale = 1;
	map_width = minimap->width * minimap->tile_width;
	if (map_width + minimap->x_origin > window->width)
		minimap->x_origin = window->width - map_width;
	map_height = minimap->height * minimap->tile_height;
	if (map_height + minimap->y_origin > window->height)
		minimap->y_origin = window->height - map_height;
	minimap->x_origin = window->width - minimap->width - (5 * minimap->width);
	minimap->y_origin = window->height - minimap->height - (5
			* minimap->height);
}

static void	init_raycast(t_window *window, t_raycast *raycast, t_player *player)
{
	raycast->fov = 66.0;
	raycast->fov_rad = raycast->fov * PI / 180.0;
	raycast->x_plane = 0;
	raycast->y_plane = 0.66;
	raycast->x_dir = cos(player->radian);
	raycast->y_dir = -sin(player->radian);
	raycast->x_plane = -raycast->y_dir * tan(raycast->fov_rad / 2);
	raycast->y_plane = raycast->x_dir * tan(raycast->fov_rad / 2);
	raycast->width = window->width;
	raycast->height = window->height;
}

void	init_time(t_time *time)
{
	gettimeofday(&time->game_start_timeval, NULL);
	time->target_fps = FRAMERATE;
	time->target_frame_time = 1.0 / (double)time->target_fps;
}

void	init_program(t_cub3d *cub3d, char **argv)
{
	ft_bzero(cub3d, sizeof(t_cub3d));
	parsing(cub3d, argv[1]);
	cub3d->program_state = main_menu;
	cub3d->rendering_state = normal;
	init_mlx(cub3d, &cub3d->window);
	init_loadbar(cub3d);
	init_asset(cub3d);
	init_minimap(&cub3d->window, &cub3d->minimap);
	init_player(&cub3d->player, &cub3d->minimap);
	init_enemy(cub3d);
	init_raycast(&cub3d->window, &cub3d->raycast, &cub3d->player);
	init_time(&cub3d->time);
}
