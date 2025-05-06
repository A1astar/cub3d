/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_main_menu.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/06 15:43:41 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_main_menu_option(t_scene *scene, t_window *window,
		t_main_menu *main)
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
			pixel = get_pixel(&main->option[main->index_option_static],
					x, y);
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

void	render_main_menu_title(t_scene *scene, t_window *window,
		t_main_menu *main_menu)
{
	int	y;
	int	x;

	y = 0;
	while (y < window->height)
	{
		x = 0;
		while (x < window->width)
		{
			draw_pixel_asset(&scene->img, x, y,
				get_pixel(&main_menu->launcher_title, x, y));
			x++;
		}
		y++;
	}
}

void	render_main_menu_blink(t_scene *scene, t_window *window,
		t_main_menu *main_menu, t_img *main_menu_img)
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
			pixel = get_pixel(main_menu_img, x, y);
			if (*(unsigned *)pixel != 0xFF000000)
			{
				if (main_menu->blink_direction == down
					&& *(unsigned *)pixel != 0x00000000)
					*(unsigned int *)pixel -= 0x00010101 * FRAMERATE;
				else if (main_menu->blink_direction == up
					&& *(unsigned *)pixel != 0x00FFFFFF)
					*(unsigned int *)pixel += 0x00010101 * FRAMERATE;
				draw_pixel_asset(&scene->img, x, y, pixel);
			}
			x++;
		}
		y++;
	}
	if (main_menu->blink == 255)
		main_menu->blink_direction = down;
	else if (main_menu->blink == 0)
		main_menu->blink_direction = up;
	if (main_menu->blink_direction == up)
		main_menu->blink++;
	else if (main_menu->blink_direction == down)
		main_menu->blink--;
}

void	render_main_menu_background(t_cub3d *cub3d, t_main_menu *main_menu)
{
	int	y;
	int	x;

	y = 0;
	while (y < main_menu->background[main_menu->index_background].height)
	{
		x = 0;
		while (x < main_menu->background[main_menu->index_background].width)
		{
			draw_pixel_asset(&cub3d->scene.img, x, y,
				get_pixel(&main_menu->background[main_menu->index_background],
					x, y));
			x++;
		}
		y++;
	}
	main_menu->index_background++;
	if (main_menu->index_background == 50)
		main_menu->index_background = 0;
}

void	render_main_menu(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	render_main_menu_background(cub3d, &cub3d->main_menu);
	if (cub3d->main_menu.state == launcher)
	{
		render_main_menu_title(scene, window, &cub3d->main_menu);
		render_main_menu_blink(scene, window, &cub3d->main_menu,
			&cub3d->main_menu.launcher_blink);
	}
	else if (cub3d->main_menu.state == option)
	{
		render_main_menu_blink(scene, window, &cub3d->main_menu,
			&cub3d->main_menu.option[cub3d->main_menu.index_option]);
		render_main_menu_option(scene, window, &cub3d->main_menu);
	}
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, scene->img.ptr, 0,
		0);
}

int	main_menu_loop(t_cub3d *cub3d)
{
	cub3d->scene.frame_start = get_time(&cub3d->time);
	printf("frame start main_menu = %ld\n", cub3d->scene.frame_start);
	render_main_menu(cub3d, &cub3d->window, &cub3d->scene);
	cub3d->scene.frame_end = get_time(&cub3d->time);
	printf("frame end main_menu = %ld\n", cub3d->scene.frame_end);
	update_frame_rate(cub3d, &cub3d->scene);
	return (0);
}
