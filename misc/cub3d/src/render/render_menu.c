/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_menu.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/28 15:32:39 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 09:29:30 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	render_main_menu(t_main_menu *main_menu, void *mlx_ptr, void *win_ptr)
// {
// 	uint8_t	y;
// 	uint8_t	x;

// 	y = 0;
// 	while (y < main_menu->height)
// 	{
// 		x = 0;
// 		while (x < main_menu->width)
// 		{
// 			// img_pix_put(main_menu->img, x, y, main_menu->color);
// 			img_pix_put(main_menu->img, x, y, 0xFFFFFF);
// 			x++;
// 		}
// 		y++;
// 	}
// 	mlx_put_image_to_window(mlx_ptr, win_ptr, main_menu->img->ptr, WINDOW_WIDTH / 3, WINDOW_HEIGHT / 3);
// }

void	render_grid(t_cub3d *cub3d)
{
	int	x;
	int	y;
	int	y_size;
	int	x_size;

	y = 0;
	while (y < cub3d->window->height)
	{
		x = 0;
		while (x < cub3d->window->width)
		{
			y_size = y + GRID_HEIGHT;
			while (y < y_size)
			{
				draw_pixel(cub3d->scene->img, x, y, 0xAFAFAF);
				y++;
			}
			y -= GRID_HEIGHT;
			x_size = x + GRID_WIDTH;
			while (x < x_size)
			{
				draw_pixel(cub3d->scene->img, x, y, 0xAFAFAF);
				x++;
			}
		}
		y += GRID_HEIGHT;
	}
	mlx_put_image_to_window(cub3d->mlx_ptr, cub3d->win_ptr, cub3d->scene->img->ptr, 0, 0);
}

void	render_menu(t_cub3d *cub3d)
{
	clean_scene_img(cub3d->window, cub3d->scene);
	render_grid(cub3d);
	if (cub3d->program_state == main_menu)
		mlx_put_image_to_window(cub3d->mlx_ptr, cub3d->win_ptr, cub3d->main_menu->xpm->ptr,
			cub3d->main_menu->pos_x, cub3d->main_menu->pos_y);
}
