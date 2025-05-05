/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_viewmodel.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/28 19:02:41 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 19:15:30 by alacroix         ###   ########.fr       */
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
			draw_pixel_asset(&scene->img, x_start + x, y_start + y,
				get_pixel(viewmodel, x, y));
			x++;
		}
		y++;
	}
}

t_img	*select_stand(t_cub3d *cub3d, t_viewmodel *viewmodel)
{
	if (cub3d->rendering_state == normal)
		return (&viewmodel->normal_stand);
	else
		return (&viewmodel->trip_stand);
}

t_img	*select_cast_frames(t_cub3d *cub3d, t_animation *animation,
		t_viewmodel *viewmodel)
{
	if (cub3d->rendering_state == normal)
		return (&viewmodel->normal_wand_sprite[animation->current_frame]);
	else
		return (&viewmodel->trip_cig_sprite[animation->current_frame]);
}

t_img	*select_sword_frames(t_cub3d *cub3d, t_animation *animation,
		t_viewmodel *viewmodel)
{
	if (cub3d->rendering_state == normal)
		return (&viewmodel->normal_sword_sprite[animation->current_frame]);
	else
		return (&viewmodel->trip_sword_sprite[animation->current_frame]);
}

t_img	*select_viewmodel(t_cub3d *cub3d, t_animation *animation,
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

t_img	*select_magic(t_animation *magic, t_textures *textures)
{
	if (!magic->active)
		return (NULL);
	magic->delay_count++;
	if (magic->delay_count >= magic->frame_delay)
	{
		magic->delay_count = 0;
		magic->current_frame++;
		if (magic->current_frame >= magic->frame_count)
		{
			magic->active = false;
			return (NULL);
		}
	}
	return (&textures->fireball[magic->current_frame]);
}

void	render_magic(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	t_img	*magic_img;
	int		x_start;
	int		y_start;

	magic_img = select_magic(&cub3d->player.magic, &cub3d->textures);
	if (!magic_img)
		return ;
	x_start = (window->width - magic_img->width) / 2;
	y_start = (window->height - magic_img->height) / 2;
	draw_viewmodel(magic_img, scene, x_start, y_start);
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
