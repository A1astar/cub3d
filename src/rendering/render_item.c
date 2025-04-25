/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_item.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/25 14:17:49 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/25 17:00:31 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static int	get_alpha(unsigned int color)
{
	unsigned char	*a;

	a = (unsigned char *)&color;
	return (a[1]);
}

void	draw_item(t_item_render *item, t_raycast *ray, t_scene *scene,
		t_img *img)
{
	unsigned int	color;
	int				offset;
	int				stripe;
	int				y;
	int				d;

	y = 0;
	d = 0;
	color = 0;
	offset = 0;
	stripe = item->draw.draw_start_x;
	while (stripe < item->draw.draw_end_x)
	{
		if (item->attr.trans_y > 0 && stripe >= 0 && stripe < WINDOW_WIDTH
			&& item->attr.trans_y < ray->z_buffer[stripe])
		{
			item->draw.tex_x = (int)(256 * (stripe - (-item->draw.sprite_width
							/ 2 + item->draw.sprite_screen_x)) * img->width
					/ item->draw.sprite_width) / 256;
			y = item->draw.draw_start_y;
			while (y < item->draw.draw_end_y)
			{
				d = y * 256 - WINDOW_HEIGHT * 128 + item->draw.sprite_height
					* 128;
				item->draw.tex_y = ((d * img->height)
						/ item->draw.sprite_height) / 256;
				offset = item->draw.tex_y * img->size_line + item->draw.tex_x
					* (img->bpp / 8);
				color = *(unsigned int *)(img->addr + offset);
				if (get_alpha(color) != 0)
					draw_pixel(&scene->img, stripe, y, color);
				y++;
			}
		}
		stripe++;
	}
}

void	init_item_draw_attributes(t_item_draw *draw, t_item_attr *attr)
{
	draw->sprite_screen_x = (int)((WINDOW_WIDTH / 2) * (1 + attr->trans_x
				/ attr->trans_y));
	draw->sprite_height = abs((int)(WINDOW_HEIGHT / attr->trans_y));
	draw->sprite_width = draw->sprite_height;
	draw->draw_start_x = -draw->sprite_width / 2 + draw->sprite_screen_x;
	draw->draw_start_y = -draw->sprite_height / 2 + WINDOW_HEIGHT / 2;
	draw->draw_end_x = draw->sprite_width / 2 + draw->sprite_screen_x;
	draw->draw_end_y = draw->sprite_height / 2 + WINDOW_HEIGHT / 2;
	draw->tex_x = 0;
	draw->tex_y = 0;
}

void	init_item_attributes(t_item *item, t_player *player, t_raycast *raycast,
		t_item_attr *attr)
{
	attr->relative_x = item->x_pos - player->x_pos;
	attr->relative_y = item->y_pos - player->y_pos;
	attr->inversion_val = 1.0 / (raycast->x_plane * player->y_dir
			- player->x_dir * raycast->y_plane);
	attr->trans_x = attr->inversion_val * (player->y_dir * attr->relative_x
			- player->x_dir * attr->relative_y);
	attr->trans_y = attr->inversion_val * (-raycast->y_plane * player->x_dir
			+ raycast->x_plane * attr->relative_y);
}

void	render_item(t_item *item, t_player *player, t_raycast *raycast,
		t_scene *scene)
{
	t_item_render	item_render;

	init_item_attributes(item, player, raycast, &item_render.attr);
	init_item_draw_attributes(&item_render.draw, &item_render.attr);
	draw_item(&item_render, raycast, scene, &item->sprite);
}
