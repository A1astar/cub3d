/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_raycast.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 19:09:00 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/24 12:31:39 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static int	get_alpha(unsigned int color)
{
	unsigned char	*a;

	a = (unsigned char *)&color;
	return (a[1]);
}

static t_img	*select_texture(t_cub3d *cub3d, t_raycast *ray,
		t_textures *textures)
{
	if (cub3d->map.map[(int)ray->y_map][(int)ray->x_map] == 'C')
		return (&textures->c_door);
	if (cub3d->map.map[(int)ray->y_map][(int)ray->x_map] == 'O')
		return (&textures->o_door);
	if (ray->side == 0)
	{
		if (((int)ray->x_map + (int)ray->y_map) % 2 != 0)
			return (&textures->wall_one);
		if (ray->x_raydir > 0)
			return (&textures->w_wall);
		else
			return (&textures->e_wall);
	}
	else
	{
		if (((int)ray->x_map + (int)ray->y_map) % 2 != 0)
			return (&textures->wall_two);
		if (ray->y_raydir > 0)
			return (&textures->n_wall);
		else
			return (&textures->s_wall);
	}
}

static void	init_draw_start_point(t_raycast *ray, t_draw_attributes *draw,
		t_img *img)
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
	draw->tex_pos = (draw->draw_start - WINDOW_HEIGHT / 2 + draw->line_height
			/ 2) * draw->step;
}

static void	draw_texture(t_cub3d *cub3d, t_raycast *ray,
		t_draw_attributes *draw, int ray_num)
{
	int				offset;
	unsigned int	color;
	t_img			*img;

	img = select_texture(cub3d, ray, &cub3d->textures);
	init_draw_start_point(ray, draw, img);
	while (draw->draw_start < draw->draw_end)
	{
		draw->tex_y = (int)(draw->tex_pos);
		if (draw->tex_y >= img->height)
			draw->tex_y = img->height - 1;
		draw->tex_pos += draw->step;
		offset = draw->tex_y * img->size_line + draw->tex_x * (img->bpp / 8);
		color = *(unsigned int *)(img->addr + offset);
		if (img->ptr == cub3d->textures.o_door.ptr)
		{
			if (get_alpha(color) != 0)
				draw_pixel(&cub3d->scene.img, ray_num, draw->draw_start, color);
		}
		else
			draw_pixel(&cub3d->scene.img, ray_num, draw->draw_start, color);
		draw->draw_start++;
	}
}

static void	init_draw_attributes(t_raycast *ray, t_draw_attributes *draw,
		t_player *player)
{
	if (ray->side == 0)
		draw->perp_wall_dist = (ray->x_side - ray->x_delta);
	else
		draw->perp_wall_dist = (ray->y_side - ray->y_delta);
	draw->line_height = (int)(WINDOW_HEIGHT / draw->perp_wall_dist);
	draw->draw_start = -draw->line_height / 2 + WINDOW_HEIGHT / 2;
	if (draw->draw_start < 0)
		draw->draw_start = 0;
	draw->draw_end = draw->line_height / 2 + WINDOW_HEIGHT / 2;
	if (draw->draw_end >= WINDOW_HEIGHT)
		draw->draw_end = WINDOW_HEIGHT - 1;
	if (ray->side == 0)
		draw->wall_x = player->y_pos + draw->perp_wall_dist * ray->y_raydir;
	else
		draw->wall_x = player->x_pos + draw->perp_wall_dist * ray->x_raydir;
	draw->wall_x -= floor(draw->wall_x);
}

void	render_raycast(t_cub3d *cub3d, t_raycast *raycast, int x)
{
	t_draw_attributes	draw;

	ft_bzero(&draw, sizeof(t_draw_attributes));
	init_draw_attributes(raycast, &draw, &cub3d->player);
	draw_texture(cub3d, raycast, &draw, x);
}
