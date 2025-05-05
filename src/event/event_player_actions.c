/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_actions.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/05 11:53:29 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 16:26:15 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	activate_player_animation(t_animation *animation, t_anim_state state)
{
	animation->state = state;
	animation->active = true;
	animation->current_frame = 0;
	animation->delay_count = 0;
}

static void	kill_enemy(t_cub3d *cub3d, t_player *player, t_raycast *raycast)
{
	int		i;
	float	dx;
	float	dy;
	float	distance;

	i = 0;
	while(i < cub3d->nb_enemy)
	{
		dx = cub3d->randy[i].x_pos - (player->x_pos + raycast->x_dir);
		dy = cub3d->randy[i].y_pos - (player->y_pos + raycast->y_dir);
		distance = sqrtf(dx * dx + dy * dy);

		if(distance < 1.0f)
		{
			if(cub3d->randy[i].state != dead || cub3d->randy[i].state != dying)
				cub3d->randy[i].state = dying;
		}
		i++;
	}
}

void	player_sword(t_cub3d *cub3d, t_animation *animation)
{
	activate_player_animation(animation, sword);
	kill_enemy(cub3d, &cub3d->player, &cub3d->raycast);
}

void	player_cast(t_cub3d *cub3d, t_animation *animation)
{
	(void)cub3d;
	activate_player_animation(animation, cast);
	kill_enemy(cub3d, &cub3d->player, &cub3d->raycast);
}
