/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_game.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/14 19:28:05by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_background(t_cub3d *cub3d, t_scene *scene)
{
	int	y;
	int	x;

	(void)cub3d;
	y = 0;
	while (y < WINDOW_HEIGHT)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			scene->img.pixel = scene->img.addr + y * scene->img.size_line + x
				* (scene->img.bpp / 8);
			*(unsigned int *)scene->img.pixel = 0x00FFFFFF;
			x++;
		}
		y++;
	}
}

// void	epileptic_simulator(t_cub3d *cub3d, t_scene *scene, t_map *map)
// {
// 	(void)cub3d;
// 	int	y;
// 	int	x;
// 	static int	red;
// 	static int	green;
// 	static int	blue;

// 	y = 0;
// 	if (!red)
// 		red = map->ceilling_rgb[0];
// 	if (!green)
// 		green = map->ceilling_rgb[1];
// 	if (!blue)
// 		blue = map->ceilling_rgb[2];
// 	while (y < WINDOW_HEIGHT / 2)
// 	{
// 		x = 0;
// 		while (x < WINDOW_WIDTH)
// 		{
// 			scene->img.pixel = scene->img.addr
// 				+ y * scene->img.size_line
// 				+ x * (scene->img.bpp / 8);
// 			*(unsigned int *)scene->img.pixel = red << 16
// 				| green << 8 | blue;
// 			blue++;
// 			red--;
// 			green += blue;
// 			x++;
// 		}
// 		y++;
// 	}
// ear

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

void	draw_square(t_cub3d *cub3d, int x_index, int y_index,
		unsigned int color, int which_rendering)
{
	int	y;
	int	x;
	int	height;
	int	width;

	(void)which_rendering;
	y = 0;
	height = cub3d->minimap.tile_height * cub3d->minimap.scale;
	width = cub3d->minimap.tile_width * cub3d->minimap.scale;
	while (y < height)
	{
		x = 0;
		while (x < width)
		{
			draw_pixel(&cub3d->scene.img, x + x_index, y + y_index, color);
			x++;
		}
		y++;
	}
}

void	render_minimap(t_cub3d *cub3d, t_scene *scene, t_map *map,
		t_minimap *minimap)
{
	int	i;
	int	j;
	int	x;
	int	y;

	(void)scene;
	i = 0;
	y = minimap->y_origin;
	while (map->map[i])
	{
		j = 0;
		x = minimap->x_origin;
		while (map->map[i][j])
		{
			if (map->map[i][j] == '0' || map->map[i][j] == 'N'
				|| map->map[i][j] == 'S' || map->map[i][j] == 'E'
				|| map->map[i][j] == 'W')
				draw_square(cub3d, x, y, HEX_GREY, normal);
			else if (map->map[i][j] == '1')
				draw_square(cub3d, x, y, HEX_BLACK, normal);
			else if (map->map[i][j] == 'R')
				draw_square(cub3d, x, y, HEX_RED, normal);
			else if (map->map[i][j] == 'D')
				draw_square(cub3d, x, y, HEX_BROWN, normal);
			j++;
			x += minimap->tile_width;
		}
		y += minimap->tile_height;
		i++;
	}
}


void	render_game(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	render_background(cub3d, scene);
	render_floor(cub3d, scene, &cub3d->map);
	render_ceiling(cub3d, scene, &cub3d->map);
	render_minimap(cub3d, &cub3d->scene, &cub3d->map, &cub3d->minimap);
	render_minimap_player(cub3d &cub3d->minimap, &cub3d->player, &cub3d->player.render);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, scene->img.ptr, 0,
		0);
}

int	game_loop(t_cub3d *cub3d)
{
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
