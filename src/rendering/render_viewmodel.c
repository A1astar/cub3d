/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_viewmodel.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/28 19:02:41 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 14:43:47 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static t_img	*select_stand(t_cub3d *cub3d, t_viewmodel *viewmodel)
{
	if (cub3d->rendering_state == normal)
		return (&viewmodel->normal_stand);
	else
		return (&viewmodel->trip_stand);
}

static t_img	*select_cast_frames(t_cub3d *cub3d, t_animation *animation,
		t_viewmodel *viewmodel)
{
	if (cub3d->rendering_state == normal)
		return (&viewmodel->normal_wand_sprite[animation->current_frame]);
	else
		return (&viewmodel->trip_cig_sprite[animation->current_frame]);
}

static t_img	*select_sword_frames(t_cub3d *cub3d, t_animation *animation,
		t_viewmodel *viewmodel)
{
	if (cub3d->rendering_state == normal)
		return (&viewmodel->normal_sword_sprite[animation->current_frame]);
	else
		return (&viewmodel->trip_sword_sprite[animation->current_frame]);
}

static t_img	*select_viewmodel(t_cub3d *cub3d, t_animation *animation,
		t_viewmodel *viewmodel)
{
	if (!animation->active)
		return (select_stand(cub3d, viewmodel));
	animation->delay_count++;
	if (animation->delay_count >= animation->frame_delay)
	{
		animation->delay_count = 0;
		animation->current_frame++;
		if (animation->current_frame >= animation->frame_count)
		{
			animation->active = false;
			animation->state = stand;
			return (select_stand(cub3d, viewmodel));
		}
	}
	if (animation->state == cast)
		return (select_cast_frames(cub3d, animation, viewmodel));
	else
		return (select_sword_frames(cub3d, animation, viewmodel));
}

void	render_viewmodel(t_cub3d *cub3d, t_window *window,
		t_viewmodel *viewmodel, t_scene *scene)
{
	int		x_start;
	int		y_start;
	t_img	*view_img;

	view_img = select_viewmodel(cub3d, &cub3d->player.animation, viewmodel);
	x_start = window->half_width - viewmodel->normal_stand.width / 2;
	y_start = window->height - viewmodel->normal_stand.height
		+ viewmodel->draw_pos;
	render_magic(cub3d, window, scene);
	draw_viewmodel(view_img, scene, x_start, y_start);
}
