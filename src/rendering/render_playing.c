/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_playing.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/11 15:52:18 by alacroix         ###   ########.fr       */
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
// }

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
	while (y  < WINDOW_HEIGHT)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			scene->img.pixel = scene->img.addr
				+ y * scene->img.size_line
				+ x * (scene->img.bpp / 8);
			*(unsigned int *)scene->img.pixel = map->floor_rgb[0] << 16
				| map->floor_rgb[1] << 8 | map->floor_rgb[2];
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
			cub3d->scene.img.pixel = cub3d->scene.img.addr
				+ (y + y_index) * cub3d->scene.img.size_line
				+ (x + x_index) * (cub3d->scene.img.bpp / 8);
			*(unsigned int *)cub3d->scene.img.pixel = color;
			x++;
		}
		y++;
	}
}

void	render_minimap(t_cub3d *cub3d, t_scene *scene, t_map *map)
{
	int	i;
	int	j;
	int	x;
	int	y;

	i = 0;
	y = 0;
	(void)scene;
	while (map->map[i])
	{
		j = 0;
		x = 0;
		while (map->map[i][j])
		{

			if (map->map[i][j] == '0')
				draw_square(cub3d, x + cub3d->minimap.x_origin, y + cub3d->minimap.y_origin, HEX_WHITE);
			// else if (map->map[i][j] == '0')
			else if (map->map[i][j] == '1')
				draw_square(cub3d, x + cub3d->minimap.x_origin, y + cub3d->minimap.y_origin, HEX_BLACK);
			else if (map->map[i][j] == 'R')
				draw_square(cub3d, x + cub3d->minimap.x_origin, y + cub3d->minimap.y_origin, HEX_RED);
			else if (map->map[i][j] == 'D')
				draw_square(cub3d, x + cub3d->minimap.x_origin, y + cub3d->minimap.y_origin, HEX_BROWN);
			else if (map->map[i][j] == 'N' || map->map[i][j] == 'S' || map->map[i][j] == 'E' || map->map[i][j] == 'W')
				draw_square(cub3d, x + cub3d->minimap.x_origin, y + cub3d->minimap.y_origin, HEX_GREEN);
			j++;
			x += 10;
		}
		y += 10;
		i++;
	}
}

// void	render_minimap(t_cub3d *cub3d, t_scene *scene, t_map *map)
// {
// 	(void)cub3d;
// 	int	y;
// 	int	x;

// 	y = cub3d->minimap.y_origin;
// 	while (cub3d->map.map[i])
// 	while (y < WINDOW_HEIGHT / 2)
// 	{
// 		x = 0;
// 		while (x < WINDOW_WIDTH)
// 		{
// 			scene->img.pixel = scene->img.addr
// 				+ y * scene->img.size_line
// 				+ x * (scene->img.bpp / 8);
// 			*(unsigned int *)scene->img.pixel = map->ceilling_rgb[0] << 16
// 				| map->ceilling_rgb[1] << 8 | map->ceilling_rgb[2];
// 			x++;
// 		}
// 		y++;
// 	}
// }

void	render_playing(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	render_background(cub3d, scene);
	render_ceiling(cub3d, scene, &cub3d->map);
	render_floor(cub3d, scene, &cub3d->map);
	render_minimap(cub3d, scene, &cub3d->map);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr,
		scene->img.ptr, 0, 0);
}

int	playing_loop(t_cub3d *cub3d)
{
	printf("here playing\n");
	render_playing(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
