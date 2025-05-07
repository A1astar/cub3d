/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_actions.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/05 11:53:29 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/07 12:02:06 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	activate_player_animation(t_animation *animation,
		t_anim_state state)
{
	animation->state = state;
	animation->active = true;
	animation->current_frame = 0;
	animation->delay_count = 0;
}

static void	kill_enemy(t_cub3d *cub3d, t_player *player, t_raycast *raycast,
		t_anim_state state)
{
	int		i;
	float	dx;
	float	dy;
	float	distance;
	float	hitbox;

	i = 0;
	if (state == sword)
		hitbox = 1.0;
	else
		hitbox = 4.0;
	while (i < cub3d->nb_enemy)
	{
		dx = cub3d->randy[i].x_pos - (player->x_pos + raycast->x_dir);
		dy = cub3d->randy[i].y_pos - (player->y_pos + raycast->y_dir);
		distance = sqrtf(dx * dx + dy * dy);
		if (distance < hitbox)
		{
			if (cub3d->randy[i].state != dead || cub3d->randy[i].state != dying)
				cub3d->randy[i].state = dying;
		}
		i++;
	}
}

void	player_sword(t_cub3d *cub3d, t_player *player)
{
	activate_player_animation(&player->animation, sword);
	activate_player_animation(&player->slash, sword);
	kill_enemy(cub3d, player, &cub3d->raycast, sword);
}

void	player_cast(t_cub3d *cub3d, t_player *player)
{
	activate_player_animation(&player->animation, cast);
	activate_player_animation(&player->magic, cast);
	kill_enemy(cub3d, player, &cub3d->raycast, cast);
}
