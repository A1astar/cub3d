/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_minimap_player.c                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/15 12:13:12 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/15 12:30:57 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static float	get_x_rot_value(t_player *player, t_render *render)
{
	return(render->x_cent * cos(player->radian) - render->y_cent * sin(player->radian));
}

static float	get_y_rot_value(t_player *player, t_render *render)
{
	return (render->x_cent * sin(player->radian) + render->y_cent * cos(player->radian));
}

void	render_minimap_player(t_cub3d *cub3d, t_minimap *minimap, t_player *player, t_render *render)
{
	float		x;
	float		y;

	render->px = (player->x_pos + 0.5) * minimap->tile_width + minimap->x_origin;
	render->py = (player->y_pos + 0.5) * minimap->tile_height + minimap->y_origin;
	y = 0.0;
	while (y < minimap->tile_height * minimap->scale)
	{
		x = 0.0;
		while (x < minimap->tile_width * minimap->scale)
		{
			render->x_cent = x - (minimap->tile_width * minimap->scale) / 2;
			render->y_cent = y - (minimap->tile_height * minimap->scale) / 2;
			render->x_rot = get_x_rot_value(player, render);
			render->y_rot = get_y_rot_value(player, render);
			draw_pixel(&cub3d->scene.img, (int) (render->px + render->x_rot), (int)(render->py + render->y_rot), HEX_RED);
			x+= 0.5;
		}
		y+= 0.5;
	}
}
