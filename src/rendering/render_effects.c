/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_magic.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 14:42:05 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/07 12:18:13 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static t_img	*select_effect_frame(t_animation *anim, t_textures *textures)
{
	if (!anim->active)
		return (NULL);
	anim->delay_count++;
	if (anim->delay_count >= anim->frame_delay)
	{
		anim->delay_count = 0;
		anim->current_frame++;
		if (anim->current_frame >= anim->frame_count)
		{
			anim->active = false;
			return (NULL);
		}
	}
	if(anim->state == cast)
		return (&textures->fireball[anim->current_frame]);
	return (&textures->slash[anim->current_frame]);
}

void	render_effect(t_cub3d *cub3d, t_window *window, t_scene *scene, t_animation *effect)
{
	t_img	*effect_frame;
	int		x_start;
	int		y_start;

	effect_frame = select_effect_frame(effect, &cub3d->textures);
	if (!effect_frame)
		return ;
	x_start = (window->width - effect_frame->width) / 2;
	y_start = (window->height - effect_frame->height) / 2;
	draw_viewmodel(effect_frame, scene, x_start, y_start);
}
