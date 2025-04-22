/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_game.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 19:12:03 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	render_background(t_cub3d *cub3d, t_scene *scene)
// {
// 	int	y;
// 	int	x;

// 	(void)cub3d;
// 	y = 0;
// 	while (y < WINDOW_HEIGHT)
// 	{
// 		x = 0;
// 		while (x < WINDOW_WIDTH)
// 		{
// 			scene->img.pixel = scene->img.addr + y * scene->img.size_line + x
// 				* (scene->img.bpp / 8);
// 			*(unsigned int *)scene->img.pixel = 0x00FFFFFF;
// 			x++;
// 		}
// 		y++;
// 	}
// }

void	epileptic_simulator(t_cub3d *cub3d, t_scene *scene, t_map *map,
		int which)
{
	int			y;
	int			x;
	int			height;
	static int	red;
	static int	green;
	static int	blue;

	(void)cub3d;
	y = 0;
	height = 0;
	if (!red)
		red = map->ceilling_rgb[0];
	if (!green)
		green = map->ceilling_rgb[1];
	if (!blue)
		blue = map->ceilling_rgb[2];
	if (which == ep_ceiling)
	{
		height = WINDOW_HEIGHT;
		y = WINDOW_HEIGHT / 2;
	}
	else if (which == ep_floor)
	{
		y = 0;
		height = WINDOW_HEIGHT / 2;
	}
	while (y < height)
	{
		x = 0;
		while (x < WINDOW_WIDTH)
		{
			draw_pixel(&scene->img, x, y, red << 16 | green << 8 | blue);
			if (which == ep_ceiling)
			{
				blue *= 2;
				red += PI;
				green--;
			}
			else
			{
				blue--;
				red++;
				green += PI;
			}
			x++;
		}
		y++;
	}
}

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

static int	get_pixel(t_img *img, int x, int y)
{
	char	*pixel;
	int		color;

	if (x < 0 || y < 0 || x >= img->width || y >= img->height)
		return (0x000000);
	pixel = img->addr + (y * img->size_line + x * (img->bpp / 8));
	color = *(unsigned int *)pixel;
	return (color);
}

void	render_viewmodel(t_img *viewmodel, t_scene *scene)
{
	int				x_start;
	int				y_start;
	int				x_draw;
	int				y_draw;
	unsigned int	color;

	x_draw = 0;
	y_draw = 0;
	color = 0;
	x_start = (WINDOW_WIDTH/ 2) - (viewmodel->width / 2);
	y_start = WINDOW_HEIGHT - viewmodel->height;
	while (y_draw < viewmodel->height)
	{
		x_draw = 0;
		while (x_draw < viewmodel->width)
		{
			color = get_pixel(viewmodel, x_draw, y_draw);
			if ((color >> 24) == 0)
				draw_pixel(&scene->img, x_start + x_draw, y_start + y_draw,
					color);
			x_draw++;
		}
		y_draw++;
	}
}

void	render_game(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	//	render_background(cub3d, scene);
	render_floor(cub3d, scene, &cub3d->map);
	render_ceiling(cub3d, scene, &cub3d->map);
	//epileptic_simulator(cub3d, &cub3d->scene, &cub3d->map, ep_ceiling);
	//epileptic_simulator(cub3d, &cub3d->scene, &cub3d->map, ep_floor);
	//render_minimap_ray(cub3d);
	raycast_map(cub3d, &cub3d->raycast, &cub3d->player);
	raycast_doors(cub3d, &cub3d->raycast, &cub3d->player);
	//raycast_threads(cub3d);
	render_minimap(cub3d, &cub3d->scene, &cub3d->map, &cub3d->minimap);
	render_minimap_player(cub3d, &cub3d->minimap, &cub3d->player,
		&cub3d->player.render);
	render_viewmodel(&cub3d->textures.viewmodel, &cub3d->scene);
	//render_viewmodel(&cub3d->textures.trip_viewmodel, &cub3d->scene);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, scene->img.ptr, 0,
		0);
}

int	game_loop(t_cub3d *cub3d)
{
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
