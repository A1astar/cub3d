/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_magic.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 14:42:05 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 14:42:54 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static t_img	*select_magic(t_animation *magic, t_textures *textures)
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
