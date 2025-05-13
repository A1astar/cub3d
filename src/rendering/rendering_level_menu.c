/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_level_menu.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 16:48:24 by algadea          ###   ########.fr       */
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

void	render_blink(t_scene *scene, t_window *window,
		t_blink *blink, t_img *level_menu_img)
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
			pixel = get_pixel(level_menu_img, x, y);
			if (*(unsigned *)pixel != 0xFF000000)
			{
				if (blink->direction == down
					&& *(unsigned *)pixel != 0x00000000)
					*(unsigned int *)pixel -= 0x00010101 * 4;
				else if (blink->direction == up
					&& *(unsigned *)pixel != 0x00FFFFFF)
					*(unsigned int *)pixel += 0x00010101 * 4;
				draw_pixel_asset(&scene->img, x, y, pixel);
			}
			x++;
		}
		y++;
	}
	if (blink->value == blink->max)
		blink->direction = down;
	else if (blink->value == 0)
		blink->direction = up;
	if (blink->direction == up)
		blink->value++;
	else if (blink->direction == down)
		blink->value--;
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
		render_blink(scene, window, &cub3d->level_menu,
				&cub3d->level_menu.option[cub3d->level_menu.index_option]);
	}
	else if (cub3d->level_menu.state == bindings)
		render_img(scene, window, &cub3d->level_menu.bindings);
	else if (cub3d->level_menu.state == quit)
	{
		render_level_menu_background(&cub3d->scene,
				&cub3d->window, &cub3d->level_menu);
		render_level_menu_quit(&cub3d->scene,
				&cub3d->window, &cub3d->level_menu);
		render_level_menu_blink(scene, window, &cub3d->level_menu,
				&cub3d->level_menu.quit[cub3d->level_menu.index_quit]);
	}
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr,
			scene->img.ptr, 0, 0);
}

int	level_menu_loop(t_cub3d *cub3d)
{
	update_frame_rate(&cub3d->time);
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	render_level_menu(cub3d, &cub3d->scene, &cub3d->main_menu);
	return (0);
}
