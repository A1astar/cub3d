/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_enemy.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/01 12:26:12 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 17:25:59 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_enemy_screen(t_window *window, t_enemy *enemy,
		t_item_render *render)
{
	if (enemy->state != dead)
		render->attr.v_move_screen = 128 / render->attr.trans_y;
	else
		render->attr.v_move_screen = 300 / render->attr.trans_y;
	render->draw.sprite_height = abs((int)(window->height
				/ render->attr.trans_y)) * 0.78;
	render->draw.sprite_width = render->draw.sprite_height;
}

static t_img	*select_blood_frame(t_enemy *enemy,
		t_animation *death_animation, t_textures *texture)
{
	if (death_animation->current_frame >= death_animation->frame_count)
	{
		enemy->state = dead;
		return (&texture->cadaver);
	}
	death_animation->delay_count++;
	if (death_animation->delay_count >= death_animation->frame_delay)
	{
		death_animation->delay_count = 0;
		death_animation->current_frame++;
	}
	return (&texture->blood[death_animation->current_frame]);
}

static t_img	*select_sprite(t_enemy *enemy, t_textures *texture)
{
	if (enemy->state == dying)
		return (select_blood_frame(enemy, &enemy->death_anim, texture));
	else if (enemy->state == dead)
		return (&texture->cadaver);
	else
		return (&enemy->sprite);
}

static void	init_enemy(t_cub3d *cub3d, t_enemy *enemy, t_raycast *raycast,
		t_scene *scene)
{
	t_item_render	randy_render;
	t_img			*img;

	img = select_sprite(enemy, &cub3d->textures);
	init_enemy_attributes(enemy, &cub3d->player, raycast, &randy_render.attr);
	init_enemy_screen(&cub3d->window, enemy, &randy_render);
	init_sprite_draw_attributes(&cub3d->window, &randy_render.draw,
		&randy_render.attr);
	draw_sprite(&randy_render, raycast, scene, img);
}

void	render_enemy(t_cub3d *cub3d, t_raycast *raycast, t_scene *scene)
{
	int	i;

	i = 0;
	while (i < cub3d->nb_enemy)
		init_enemy(cub3d, &cub3d->randy[i++], raycast, scene);
}
