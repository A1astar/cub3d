/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_item.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/25 14:17:49 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/03 12:53:19by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_item_screen(t_window *window, t_item_render *render)
{
	render->attr.v_move_screen = 256 / render->attr.trans_y;
	render->draw.sprite_height = abs((int)(window->height
				/ render->attr.trans_y)) / 2;
	render->draw.sprite_width = render->draw.sprite_height;
}

void	render_item(t_cub3d *cub3d, t_item *item, t_raycast *raycast)
{
	t_item_render	item_render;

	init_item_attributes(item, &cub3d->player, raycast, &item_render.attr);
	init_item_screen(&cub3d->window, &item_render);
	init_sprite_draw_attributes(&cub3d->window, &item_render.draw,
		&item_render.attr);
	draw_sprite(&item_render, raycast, &cub3d->scene, &item->sprite);
}
