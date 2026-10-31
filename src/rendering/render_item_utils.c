/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_item_utils.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/29 14:05:30 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 14:51:43 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	item_on_screen(t_item_render *item, t_raycast *ray, int stripe)
{
	if (item->attr.trans_y > 0 && stripe >= 0 && stripe < WINDOW_WIDTH
		&& item->attr.distance < pow(ray->z_buffer[stripe], 2))
		return (true);
	return (false);
}

int	get_tex_x(t_item_render *item, t_img *img, int stripe)
{
	int	tex_x;

	tex_x = (int)(256 * (stripe - (-item->draw.sprite_width / 2
					+ item->draw.sprite_screen_x)) * img->width
			/ item->draw.sprite_width) / 256;
	return (tex_x);
}

void	update_draw_attributes(t_item_draw *draw, t_item_attr *attr, t_img *img,
		int y)
{
	draw->screen_to_tex_y = (y - attr->v_move_screen) * 256 - WINDOW_HEIGHT
		* 128 + draw->sprite_height * 128;
	draw->tex_y = ((draw->screen_to_tex_y * img->height) / draw->sprite_height)
		/ 256;
}
