/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_playing.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/11 22:39:30 by algadea          ###   ########.fr       */
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
			x++;
		}
		y++;
	}
}

void	render_floor(t_cub3d *cub3d, t_scene *scene, t_map *map)
{
	(void)cub3d;
	int	y;
	int	x;

	y = WINDOW_HEIGHT / 2;
	while (y < WINDOW_HEIGHT)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			draw_pixel(&scene->img, x, y, map->floor_rgb[0] << 16 
				| map->floor_rgb[1] << 8 | map->floor_rgb[2]);
			x++;
		}
		y++;
	}
}

void	draw_square(t_cub3d *cub3d, int x_index, int y_index, unsigned int color)
{
	int	y;
	int	x;
	int	height;
	int	width;

	y = 0;
	height = cub3d->minimap.height * cub3d->minimap.scale;
	width = cub3d->minimap.width * cub3d->minimap.scale;
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

void	render_minimap(t_cub3d *cub3d,
					t_scene *scene, t_map *map, t_minimap *minimap)
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
			if (map->map[i][j] == '0')
				draw_square(cub3d, x, y, HEX_GREY);
			else if (map->map[i][j] == '1')
				draw_square(cub3d, x, y, HEX_BLACK);
			else if (map->map[i][j] == 'R')
				draw_square(cub3d, x, y, HEX_RED);
			else if (map->map[i][j] == 'D')
				draw_square(cub3d, x, y, HEX_BROWN);
			else if (map->map[i][j] == 'N' || map->map[i][j] == 'S' 
				|| map->map[i][j] == 'E' || map->map[i][j] == 'W')
				draw_square(cub3d, x, y, HEX_GREEN);
			j++;
			x += minimap->width;
		}
		y += minimap->height;
		i++;
	}
}

void	render_minimap_player(t_cub3d *cub3d,
				t_scene *scene, t_minimap *minimap, t_player *player)
{
	int	y;
	int	x;

	(void)cub3d;
	(void)minimap;
	(void)scene;
	// y = player->y_pos;
	// x = player->x_pos;
	y = player->y_pos + minimap->y_origin;
	x = player->x_pos + minimap->x_origin;
	draw_square(cub3d, x, y, HEX_RED);
}

void	render_playing(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	render_background(cub3d, scene);
	render_floor(cub3d, scene, &cub3d->map);
	render_ceiling(cub3d, scene, &cub3d->map);
	render_minimap(cub3d, &cub3d->scene, &cub3d->map, &cub3d->minimap);
	render_minimap_player(cub3d, &cub3d->scene, &cub3d->minimap, &cub3d->player);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr,
		scene->img.ptr, 0, 0);
}

int	playing_loop(t_cub3d *cub3d)
{
	render_playing(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
