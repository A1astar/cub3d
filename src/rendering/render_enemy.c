/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_enemy.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/01 12:26:12 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 16:37:00 by alacroix         ###   ########.fr       */
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

static void	init_item_draw_attributes(t_window *window,
				t_item_draw *draw, t_item_attr *attr)
{
	draw->sprite_screen_x = (int)((window->half_width) * (1 + (attr->trans_x
					/ attr->trans_y)));
	draw->sprite_height = abs((int)(window->height / attr->trans_y)) * 0.78;
	draw->sprite_width = draw->sprite_height;

	// *START_X
	draw->draw_start_x = -draw->sprite_width / 2 + draw->sprite_screen_x;
	if (draw->draw_start_x < 0)
		draw->draw_start_x = 0;

	// *END_X
	draw->draw_end_x = draw->sprite_width / 2 + draw->sprite_screen_x;
	if (draw->draw_end_x >= window->width)
		draw->draw_end_x = window->width - 1;

	// *START_Y
	draw->draw_start_y = -draw->sprite_height / 2 + window->half_height + attr->v_move_screen;
	if (draw->draw_start_y < 0)
		draw->draw_start_y = 0;

	// *END_Y
	draw->draw_end_y = draw->sprite_height / 2 + window->half_height + attr->v_move_screen;
	if (draw->draw_end_y >= window->height)
		draw->draw_end_y = window->height - 1;

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
	if(enemy->state != dead)
		attr->v_move_screen = 128 / attr->trans_y;
	else
		attr->v_move_screen = 300 / attr->trans_y;
}



t_img *select_blood_frame(t_enemy *enemy, t_animation *death_animation, t_textures *texture)
{
	if(death_animation->current_frame >= death_animation->frame_count)
	{
		enemy->state = dead;
		return(&texture->cadaver);
	}
	death_animation->delay_count++;
	if(death_animation->delay_count >= death_animation->frame_delay)
	{
		death_animation->delay_count = 0;
		death_animation->current_frame++;
	}
	return (&texture->blood[death_animation->current_frame]);
}

t_img *select_sprite(t_enemy *enemy, t_textures *texture)
{
	if(enemy->state == dying)
		return(select_blood_frame(enemy, &enemy->death_anim, texture));
	else if (enemy->state == dead)
		return(&texture->cadaver);
	else
		return (&enemy->sprite);
}


static void	init_enemy(t_cub3d *cub3d, t_enemy *enemy, t_raycast *raycast,
		t_scene *scene)
{
	t_item_render	randy_render;
	t_img			*img;

	img	= select_sprite(enemy, &cub3d->textures);
	init_enemy_attributes(enemy, &cub3d->player, raycast, &randy_render.attr);
	init_item_draw_attributes(&cub3d->window, &randy_render.draw, &randy_render.attr);
	draw_item(&randy_render, raycast, scene, img);
}

void	render_enemy(t_cub3d *cub3d, t_raycast *raycast, t_scene *scene)
{
	int	i;

	i = 0;
	while (i < cub3d->nb_enemy)
		init_enemy(cub3d, &cub3d->randy[i++], raycast, scene);
}
