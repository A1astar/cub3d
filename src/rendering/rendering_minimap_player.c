/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_minimap_player.c                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/15 12:13:12 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/15 17:46:32 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static double	get_x_rot_value(t_player *player, t_render *render)
{
	return (render->x_cent * cos(player->radian) - render->y_cent
		* sin(player->radian));
}

static double	get_y_rot_value(t_player *player, t_render *render)
{
	return (render->x_cent * sin(player->radian) + render->y_cent
		* cos(player->radian));
}

// void	render_minimap_player(t_cub3d *cub3d, t_scene *scene, t_minimap *minimap, t_player *player)
// {
// 	double		x;
// 	double		y;
// 	double	x_center;
// 	double	y_center;
// 	double	x_rot;
// 	double	y_rot;
// 	double	px;
// 	double	py;

// 	(void)scene;
// 	minimap->scale = 1;
// 	px = (player->x_pos + 0.5) * minimap->tile_width + minimap->x_origin;
// 	py = (player->y_pos + 0.5) * minimap->tile_height + minimap->y_origin;
// 	// px = (player->x_pos - 0.5) * minimap->tile_width + minimap->x_origin;
// 	// py = (player->y_pos - 0.5) * minimap->tile_height + minimap->y_origin;
// 	y = 0.0;
// 	while (y < minimap->tile_height * minimap->scale)
// 	{
// 		x = 0.0;
// 		while (x < minimap->tile_width * minimap->scale)
// 		{
// 			x_center = x - (minimap->tile_width * minimap->scale) / 2;
// 			y_center = y - (minimap->tile_height * minimap->scale) / 2;
// 			x_rot = x_center * cos(player->radian) - y_center * sin(player->radian);
// 			y_rot = x_center * sin(player->radian) + y_center * cos(player->radian);
// 			draw_pixel(&cub3d->scene.img, (int) (px + x_rot), (int)(py + y_rot), HEX_RED);
// 			x++;
// 		}
// 		y++;
// 	}
// }

void	render_minimap_player(t_cub3d *cub3d, t_minimap *minimap,
		t_player *player, t_render *render)
{
	double	x;
	double	y;

	render->px = (player->x_pos + 0.5) * minimap->tile_width
		+ minimap->x_origin;
	render->py = (player->y_pos + 0.5) * minimap->tile_height
		+ minimap->y_origin;
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
			draw_pixel(&cub3d->scene.img, (int)(render->px + render->x_rot),
				(int)(render->py + render->y_rot), HEX_RED);
			x++;
		}
		y++;
	}
}
