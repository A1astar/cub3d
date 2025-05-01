/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_enemy.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/01 12:26:12 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/01 18:56:28 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	draw_item(t_item_render *item, t_raycast *ray, t_scene *scene,
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

static void	init_item_draw_attributes(t_item_draw *draw, t_item_attr *attr)
{
	draw->sprite_screen_x = (int)((WINDOW_WIDTH / 2) * (1 + (attr->trans_x
					/ attr->trans_y)));
	draw->sprite_height = abs((int)(WINDOW_HEIGHT / attr->trans_y)) * 0.78;
	draw->sprite_width = draw->sprite_height;

	// *START_X
	draw->draw_start_x = -draw->sprite_width / 2 + draw->sprite_screen_x;
	if (draw->draw_start_x < 0)
		draw->draw_start_x = 0;

	// *END_X
	draw->draw_end_x = draw->sprite_width / 2 + draw->sprite_screen_x;
	if (draw->draw_end_x >= WINDOW_WIDTH)
		draw->draw_end_x = WINDOW_WIDTH - 1;

	// *START_Y
	draw->draw_start_y = -draw->sprite_height / 2 + WINDOW_HEIGHT / 2 + attr->v_move_screen;
	if (draw->draw_start_y < 0)
		draw->draw_start_y = 0;

	// *END_Y
	draw->draw_end_y = draw->sprite_height / 2 + WINDOW_HEIGHT / 2 + attr->v_move_screen;
	if (draw->draw_end_y >= WINDOW_HEIGHT)
		draw->draw_end_y = WINDOW_HEIGHT - 1;

	draw->tex_x = 0;
	draw->tex_y = 0;
	draw->screen_to_tex_y = 0;
}

static void	init_enemy_attributes(t_enemy *enemy, t_player *player,
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
	attr->v_move_screen = 128 / attr->trans_y;
}

static void	init_enemy(t_player *player, t_enemy *enemey, t_raycast *raycast,
		t_scene *scene)
{
	t_item_render	randy_render;

	init_enemy_attributes(enemey, player, raycast, &randy_render.attr);
	init_item_draw_attributes(&randy_render.draw, &randy_render.attr);
	draw_item(&randy_render, raycast, scene, &enemey->sprite);
}

void	render_enemy(t_cub3d *cub3d, t_raycast *raycast, t_scene *scene)
{
	int	i;

	i = 0;
	while (i < cub3d->nb_enemy)
		init_enemy(&cub3d->player, &cub3d->randy[i++], raycast, scene);
}
