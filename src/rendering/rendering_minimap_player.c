/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_minimap_player.c                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/15 12:13:12 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/14 11:34:12 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_minimap_player(t_cub3d *cub3d, t_minimap *minimap,
		t_player *player, t_render *render)
{
	double	px;
	double	py;
	double	size;
	double	y;
	double	x;

	(void)render;
	px = (player->x_pos + 0.5) * minimap->tile_width * minimap->scale
		+ minimap->x_origin;
	py = (player->y_pos + 0.5) * minimap->tile_height * minimap->scale
		+ minimap->y_origin;
	size = (minimap->tile_width * minimap->scale) * 0.5;
	y = -size / 2;
	while (y < size / 2)
	{
		x = -size / 2;
		while (x < size / 2)
		{
			draw_pixel_color(&cub3d->scene.img, px + x, py + y, HEX_BLUE);
			x++;
		}
		y++;
	}
}
