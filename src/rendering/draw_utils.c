/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   draw_utils.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 12:05:27 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 12:26:01 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	draw_sprite_pixel(t_scene *scene, unsigned int color, int x, int y)
{
	if (get_alpha(color) != 0)
		draw_pixel_color(&scene->img, x, y, color);
}

int	get_offset(t_item_render *item, t_img *img)
{
	int	offset;

	offset = item->draw.tex_y * img->size_line + item->draw.tex_x * (img->bpp
			/ 8);
	if (offset >= 0 && offset < img->height * img->size_line)
		return (offset);
	else
		return (0);
}
