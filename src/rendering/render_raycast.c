/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_raycast.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 19:09:00 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 16:54:53 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_draw_start_point(t_window *window, t_raycast *ray,
		t_draw_attributes *draw, t_img *img)
{
	draw->tex_x = (int)(draw->wall_x * (double)(img->width));
	if (draw->tex_x < 0)
		draw->tex_x = 0;
	else if (draw->tex_x >= img->width)
		draw->tex_x = img->width - 1;
	if (ray->side == 0 && ray->x_raydir > 0)
		draw->tex_x = img->width - draw->tex_x - 1;
	if (ray->side == 1 && ray->y_raydir < 0)
		draw->tex_x = img->width - draw->tex_x - 1;
	draw->step = 1.0 * img->height / draw->line_height;
	draw->tex_pos = (draw->draw_start - window->half_height + draw->line_height
			/ 2) * draw->step;
}

static void	draw_texture(t_cub3d *cub3d, t_raycast *ray,
		t_draw_attributes *draw, int ray_num)
{
	unsigned int	color;
	t_img			*img;

	img = select_texture(cub3d, ray, &cub3d->textures);
	init_draw_start_point(&cub3d->window, ray, draw, img);
	while (draw->draw_start < draw->draw_end)
	{
		draw->tex_y = (int)(draw->tex_pos);
		if (draw->tex_y >= img->height)
			draw->tex_y = img->height - 1;
		draw->tex_pos += draw->step;
		color = *(unsigned int *)get_pixel(img, draw->tex_x, draw->tex_y);
		if (img->ptr == cub3d->textures.o_door.ptr
			|| img->ptr == cub3d->textures.trip_o_door.ptr)
		{
			if (get_alpha(color) != 0)
				draw_pixel_color(&cub3d->scene.img, ray_num, draw->draw_start,
					color);
		}
		else
			draw_pixel_color(&cub3d->scene.img, ray_num, draw->draw_start,
				color);
		draw->draw_start++;
	}
}

static void	init_draw_attributes(t_window *window, t_raycast *ray,
		t_draw_attributes *draw, t_player *player)
{
	if (ray->side == 0)
		draw->perp_wall_dist = (ray->x_side - ray->x_delta);
	else
		draw->perp_wall_dist = (ray->y_side - ray->y_delta);
	draw->line_height = (int)(window->height / draw->perp_wall_dist);
	draw->draw_start = -draw->line_height / 2 + window->half_height;
	if (draw->draw_start < 0)
		draw->draw_start = 0;
	draw->draw_end = draw->line_height / 2 + window->half_height;
	if (draw->draw_end >= window->height)
		draw->draw_end = window->height - 1;
	if (ray->side == 0)
		draw->wall_x = player->y_pos + draw->perp_wall_dist * ray->y_raydir;
	else
		draw->wall_x = player->x_pos + draw->perp_wall_dist * ray->x_raydir;
	draw->wall_x -= floor(draw->wall_x);
}

void	render_raycast(t_cub3d *cub3d, t_raycast *raycast, int x)
{
	t_draw_attributes	draw;

	init_draw_attributes(&cub3d->window, raycast, &draw, &cub3d->player);
	draw_texture(cub3d, raycast, &draw, x);
}
