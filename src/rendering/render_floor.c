/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_floor.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/25 12:28:20 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/12 15:04:43 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_floor_draw(t_floor_draw *draw, t_cub3d *cub3d,
		t_floor_ray *ray)
{
	draw->cell_x = (int)(ray->floor_x);
	draw->cell_y = (int)(ray->floor_y);
	draw->tex_x = (int)(cub3d->textures.floor.width * (ray->floor_x
				- draw->cell_x)) & (cub3d->textures.floor.width - 1);
	draw->tex_y = (int)(cub3d->textures.floor.height * (ray->floor_y
				- draw->cell_y)) & (cub3d->textures.floor.height - 1);
}

static void	draw_ray(t_cub3d *cub3d, t_floor_ray *ray, int x, int y)
{
	t_floor_draw	draw;
	int				offset;
	unsigned int	color;
	t_img			*img;

	if (cub3d->rendering_state == psychedelic)
		img = &cub3d->textures.trip_floor;
	else
		img = &cub3d->textures.floor;
	init_floor_draw(&draw, cub3d, ray);
	offset = draw.tex_y * img->size_line + draw.tex_x * (img->bpp / 8);
	color = *(unsigned int *)(img->addr + offset);
	draw_pixel_color(&cub3d->scene.img, x, y, color);
	color = (color >> 1) & 8355711;
	draw_pixel_color(&cub3d->scene.img, x, cub3d->window.height - y - 1, color);
}

void	render_floor_ray(t_cub3d *cub3d, t_floor_ray *ray, int y)
{
	int	x;

	x = 0;
	while (x < cub3d->window.width)
	{
		draw_ray(cub3d, ray, x, y);
		ray->floor_x += ray->floor_step_x;
		ray->floor_y += ray->floor_step_y;
		x++;
	}
}
