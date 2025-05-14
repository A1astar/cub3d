/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_level_menu.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/14 14:23:17 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_level_menu_option(t_scene *scene,
			t_window *window, t_level_menu *level_menu)
{
	int		y;
	int		x;
	char	*pixel;

	y = 0;
	while (y < window->height)
	{
		x = 0;
		while (x < window->width)
		{
			pixel = get_pixel(
					&level_menu->option[level_menu->index_option_static], x, y);
			if (*(unsigned *)pixel != 0xFF000000)
			{
				*(unsigned int *)pixel = 0x00CCCCCC;
				draw_pixel_asset(&scene->img, x, y, pixel);
			}
			x++;
		}
		y++;
	}
}

void	render_img(t_scene *scene, t_window *window, t_img *img)
{
	int	y;
	int	x;

	y = 0;
	while (y < window->height)
	{
		x = 0;
		while (x < window->width)
		{
			draw_pixel_asset(&scene->img, x, y, get_pixel(img, x, y));
			x++;
		}
		y++;
	}
}

void	render_level_menu(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	if (cub3d->level_menu.state == level_menu_option)
	{
		render_img(scene, window, &cub3d->level_menu.background);
		render_level_menu_option(scene, window, &cub3d->level_menu);
		render_blink(scene, window, &cub3d->level_menu.blink,
			&cub3d->level_menu.option[cub3d->level_menu.index_option]);
	}
	else if (cub3d->level_menu.state == bindings)
		render_img(scene, window, &cub3d->level_menu.bindings);
}

int	level_menu_loop(t_cub3d *cub3d)
{
	update_frame_rate(&cub3d->time);
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	render_level_menu(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
