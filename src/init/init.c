/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 11:27:44 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 11:55:11 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#include "../../include/cub3d.h"


void	init_player(t_player *player, t_minimap *minimap)
{
	if (player->orientation == north)
	{
		player->x_dir = 0;
		player->y_dir = -1;
		player->angle = 90;
	}
	else if (player->orientation == east)
	{
		player->x_dir = 1;
		player->y_dir = 0;
		player->angle = 0;
	}
	else if (player->orientation == west)
	{
		player->x_dir = -1;
		player->y_dir = 0;
		player->angle = 180;
	}
	else if (player->orientation == south)
	{
		player->x_dir = 0;
		player->y_dir = 1;
		player->angle = 270;
	}
	player->radian = player->angle * (PI / 180.0);
	player->height = minimap->tile_height;
	player->width = minimap->tile_width;
}

void	init_minimap(t_minimap *minimap)
{
	int	map_width;
	int	map_height;

	minimap->tile_height = 5;
	minimap->tile_width = 5;
	minimap->scale = 1;
	minimap->x_origin = WINDOW_WIDTH * 0.66;
	map_width = minimap->width * minimap->tile_width;
	if (map_width + minimap->x_origin > WINDOW_WIDTH)
		minimap->x_origin = WINDOW_WIDTH - map_width;
	minimap->y_origin = WINDOW_HEIGHT * 0.8;
	map_height = minimap->height * minimap->tile_height;
	if (map_height + minimap->y_origin > WINDOW_HEIGHT)
		minimap->y_origin = WINDOW_HEIGHT - map_height;
}

void init_raycast(t_raycast *raycast, t_player *player)
{
	raycast->fov = 66.0;
	raycast->fov_rad = raycast->fov * PI / 180.0;
	raycast->x_plane = 0;
	raycast->y_plane = 0.66;
	raycast->x_dir = cos(player->radian);
	raycast->y_dir = -sin(player->radian);
	raycast->x_plane = -raycast->y_dir * tan(raycast->fov_rad / 2);
	raycast->y_plane = raycast->x_dir * tan(raycast->fov_rad / 2);
	raycast->width = WINDOW_WIDTH;
	raycast->height = WINDOW_HEIGHT;
}

void	init_program(t_cub3d *cub3d, char **argv)
{
	init_struct_attributes(cub3d);
	parsing(cub3d, argv[1]);
	init_mlx(cub3d, &cub3d->window);
	init_asset(cub3d);
	init_minimap(&cub3d->minimap);
	init_player(&cub3d->player, &cub3d->minimap);
	init_raycast(&cub3d->raycast, &cub3d->player);
}
