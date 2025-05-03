/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_item.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/25 14:17:49 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/03 12:53:19by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	draw_item(t_item_render *item, t_raycast *ray, t_scene *scene,
		t_img *img)
{
	unsigned int	color;
	int				offset;
	int				stripe;
	int				y;

	stripe = item->draw.draw_start_x;
	while (stripe < item->draw.draw_end_x)
	{
		if (item_on_screen(item, ray, stripe))
		{
			item->draw.tex_x = get_tex_x(item, img, stripe);
			y = item->draw.draw_start_y;
			while (y < item->draw.draw_end_y)
			{
				update_draw_attributes(&item->draw, &item->attr, img, y);
				offset = item->draw.tex_y * img->size_line + item->draw.tex_x
					* (img->bpp / 8);
				color = *(unsigned int *)(img->addr + offset);
				if (get_alpha(color) != 0)
					draw_pixel_color(&scene->img, stripe, y, color);
				y++;
			}
		}
		stripe++;
	}
}

void	init_item_draw_attributes(t_window *window, t_item_draw *draw, t_item_attr *attr)
{
	draw->sprite_screen_x = (int)((window->half_width) * (1 + (attr->trans_x
					/ attr->trans_y)));
	draw->sprite_height = abs((int)(window->height / attr->trans_y)) / 2;
	draw->sprite_width = draw->sprite_height;

	// *START X
	draw->draw_start_x = -draw->sprite_width / 2 + draw->sprite_screen_x;
	if (draw->draw_start_x < 0)
		draw->draw_start_x = 0;

	// *END X
	draw->draw_end_x = draw->sprite_width / 2 + draw->sprite_screen_x;
	if (draw->draw_end_x >= window->width)
		draw->draw_end_x = window->width - 1;

	// *START Y
	draw->draw_start_y = -draw->sprite_height / 2 + window->half_height + attr->v_move_screen;
	if (draw->draw_start_y < 0)
		draw->draw_start_y = 0;

	// *END Y
	draw->draw_end_y = draw->sprite_height / 2 + window->half_height + attr->v_move_screen;
	if (draw->draw_end_y >= window->height)
		draw->draw_end_y = window->height - 1;

	draw->tex_x = 0;
	draw->tex_y = 0;
	draw->screen_to_tex_y = 0;
}

void	init_item_attributes(t_item *item, t_player *player, t_raycast *raycast,
		t_item_attr *attr)
{
	double	inv_det;
	double	rel_x;
	double	rel_y;

	rel_x = (item->x_pos + 0.5) - player->x_pos;
	rel_y = (item->y_pos + 0.5) - player->y_pos;
	inv_det = 1.0 / (raycast->x_plane * player->y_dir - player->x_dir
			* raycast->y_plane);
	attr->trans_x = inv_det * (player->y_dir * rel_x - player->x_dir * rel_y);
	attr->trans_y = inv_det * (-raycast->y_plane * rel_x + raycast->x_plane
			* rel_y);
	attr->distance = rel_x * rel_x + rel_y * rel_y;
	attr->v_move_screen = 256 / attr->trans_y;
}

void	render_item(t_cub3d *cub3d, t_item *item, t_raycast *raycast)
{
	t_item_render	item_render;

	init_item_attributes(item, &cub3d->player, raycast, &item_render.attr);
	init_item_draw_attributes(&cub3d->window, &item_render.draw, &item_render.attr);
	draw_item(&item_render, raycast, &cub3d->scene, &item->sprite);
}
