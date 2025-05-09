/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/05 17:01:59 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/09 21:44:46 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	draw_viewmodel(t_img *viewmodel, t_scene *scene, int x_start,
		int y_start)
{
	int	x;
	int	y;

	x = 0;
	y = 0;
	while (y < viewmodel->height)
	{
		x = 0;
		while (x < viewmodel->width)
		{
			if (!(x_start + x < 0 || x_start + x > WINDOW_WIDTH
				|| y_start + y < 0 || y_start + y > WINDOW_HEIGHT))
			{
				draw_pixel_asset(&scene->img, x_start + x, y_start + y,
					get_pixel(viewmodel, x, y));
			}
			x++;
		}
		y++;
	}
}

void	draw_sprite(t_item_render *item, t_raycast *ray, t_scene *scene,
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

void	init_sprite_draw_attributes(t_window *window, t_item_draw *draw,
		t_item_attr *attr)
{
	draw->sprite_screen_x = (int)((window->half_width) * (1 + (attr->trans_x
					/ attr->trans_y)));
	draw->draw_start_x = -draw->sprite_width / 2 + draw->sprite_screen_x;
	if (draw->draw_start_x < 0)
		draw->draw_start_x = 0;
	draw->draw_end_x = draw->sprite_width / 2 + draw->sprite_screen_x;
	if (draw->draw_end_x >= window->width)
		draw->draw_end_x = window->width - 1;
	draw->draw_start_y = -draw->sprite_height / 2 + window->half_height
		+ attr->v_move_screen;
	if (draw->draw_start_y < 0)
		draw->draw_start_y = 0;
	draw->draw_end_y = draw->sprite_height / 2 + window->half_height
		+ attr->v_move_screen;
	if (draw->draw_end_y >= window->height)
		draw->draw_end_y = window->height - 1;
	draw->tex_x = 0;
	draw->tex_y = 0;
	draw->screen_to_tex_y = 0;
}

void	init_enemy_attributes(t_enemy *enemy, t_player *player,
		t_raycast *raycast, t_item_attr *attr)
{
	double	inv_det;
	double	rel_x;
	double	rel_y;

	rel_x = (enemy->x_pos + 0.5) - player->x_pos;
	rel_y = (enemy->y_pos + 0.5) - player->y_pos;
	inv_det = 1.0 / (raycast->x_plane * player->y_dir - player->x_dir
			* raycast->y_plane);
	attr->trans_x = inv_det * (player->y_dir * rel_x - player->x_dir * rel_y);
	attr->trans_y = inv_det * (-raycast->y_plane * rel_x + raycast->x_plane
			* rel_y);
	attr->distance = rel_x * rel_x + rel_y * rel_y;
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
}
