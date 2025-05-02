/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_player.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/27 16:35:44 by algadea           #+#    #+#             */
/*   Updated: 2025/05/02 15:54:49 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_animation_attributes(t_animation *animation)
{
	animation->frame_count = 4;
	animation->frame_delay = 5;
	animation->active = false;
	animation->state = stand;
}

static void	init_player_attributes(t_player *player, t_minimap *minimap)
{
	player->radian = player->angle * (PI / 180.0);
	player->height = minimap->tile_height;
	player->width = minimap->tile_width;
	player->velocity = VELOCITY;
}

static void	init_player_orientation(t_player *player)
{
	if (player->orientation == north)
	{
		player->x_dir = 0;
		player->y_dir = -1;
		player->angle = 90;
	}
	else if (player->orientation == east)
	{
		player->x_dir = 1;
		player->y_dir = 0;
		player->angle = 0;
	}
	else if (player->orientation == west)
	{
		player->x_dir = -1;
		player->y_dir = 0;
		player->angle = 180;
	}
	else if (player->orientation == south)
	{
		player->x_dir = 0;
		player->y_dir = 1;
		player->angle = 270;
	}
}

void	init_player(t_player *player, t_minimap *minimap)
{
	init_player_orientation(player);
	init_player_attributes(player, minimap);
	init_animation_attributes(&player->animation);
}
