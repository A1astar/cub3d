/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_main_menu.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/28 18:42:04 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_main_menu_option(t_cub3d *cub3d, t_window *window,
		t_main_menu *main_menu)
{
	(void)cub3d;
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr,
		main_menu->option[main_menu->index_option].ptr, 0, 0);
	// mlx_put_image_to_window(window->mlx_ptr, window->win_ptr,
	// 	main_menu->background[main_menu->index_background].ptr, 0, 0);
}

void	render_main_menu_background(t_cub3d *cub3d, t_window *window,
		t_main_menu *main_menu)
{
	int	y;
	int	x;

	y = 0;
	while (y < window->height - 1)
	{
		x = 0;
		while (x < window->width - 1)
		{
			draw_pixel(&cub3d->scene.img, x, y,
				get_pixel(&main_menu->background[main_menu->index_background], x , y));
			x++;
		}
		y++;
	}
}

void	render_main_menu(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	(void)scene;
	(void)window;
	// render_main_menu_background(cub3d, &cub3d->window, &cub3d->main_menu);
	render_main_menu_option(cub3d, &cub3d->window, &cub3d->main_menu);
	// mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, scene->img.ptr, 0,
	// 	0);
}

int	main_menu_loop(t_cub3d *cub3d)
{
	render_main_menu(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
