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

void	render_minimap_player(t_cub3d *cub3d, t_scene *scene, t_minimap *minimap, t_player *player)
{
	int		x;
	int		y;
	float	x_center;
	float	y_center;
	float	x_rot;
	float	y_rot;
	float	px;
	float	py;

	(void)scene;
	px = (player->x_pos + 0.5) * minimap->tile_width + minimap->x_origin;
	py = (player->y_pos + 0.5) * minimap->tile_height + minimap->y_origin;
	y = 0;
	while (y < minimap->tile_height * minimap->scale)
	{
		x = 0;
		while (x < minimap->tile_width * minimap->scale)
		{
			x_center = x - ( minimap->tile_width * minimap->scale) / 2;
			y_center = y - (minimap->tile_height * minimap->scale) / 2;
			x_rot = x_center * cos(player->radian) - y_center * sin(player->radian);
			y_rot = x_center * sin(player->radian) + y_center * cos(player->radian);
			draw_pixel(&cub3d->scene.img, (int)(px + x_rot), (int)(py + y_rot), HEX_RED);
			x++;
		}
		y++;
	}
}

// void	render_minimap_player(t_cub3d *cub3d,
// 				t_scene *scene, t_minimap *minimap, t_player *player)
// {
// 	int	y;
// 	int	x;
// 	float y_draw;
// 	float x_draw;

// 	(void)cub3d;
// 	(void)minimap;
// 	(void)scene;
// 	y = 0;
// 	while (y < minimap->tile_height * 5)
// 	{
// 		x = 0;
// 		while (x < minimap->tile_width * 5)
// 		{
// 			// printf("x = %d | y = %d | angle = %d\n", x, y, player->angle);
// 			// draw_square(cub3d, x, y, HEX_RED, transform);
// 			// x_draw = x - player->center;
// 			// y_draw = y - player->center;
// 			x_draw = (float)x;
// 			y_draw = (float)y;
// 			x_draw = x_draw * cos(player->radian) - y_draw * sin(player->radian);
// 			y_draw = x_draw * sin(player->radian) + y_draw * cos(player->radian);
// 			// x_draw = x_draw + player->center;
// 			// y_draw = y_draw + player->center;
// 			// px = player->x_pos * minimap->tile_width + minimap->x_origin;
// 			// py = player->y_pos * minimap->tile_height + minimap->y_origin;
// 			x_draw += player->x_pos * minimap->tile_width + minimap->x_origin;
// 			y_draw += player->y_pos * minimap->tile_height + minimap->y_origin;
// 			// printf("x = %d | y = %d | angle = %d\n", x_draw, y_draw, player->angle);
// 			draw_pixel(&cub3d->scene.img, (int)x_draw, (int)y_draw, HEX_RED);
// 			x++;
// 		}
// 		y++;
// 	}
// }

void	render_game(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	render_background(cub3d, scene);
	render_floor(cub3d, scene, &cub3d->map);
	render_ceiling(cub3d, scene, &cub3d->map);
	render_minimap(cub3d, &cub3d->scene, &cub3d->map, &cub3d->minimap);
	render_minimap_player(cub3d, &cub3d->scene, &cub3d->minimap,
		&cub3d->player);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, scene->img.ptr, 0,
		0);
}

int	game_loop(t_cub3d *cub3d)
{
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
