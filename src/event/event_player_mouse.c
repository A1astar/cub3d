/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_mouse.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:42:21 by algadea           #+#    #+#             */
/*   Updated: 2025/05/02 15:53:25 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	player_sword(t_animation *animation)
{
	animation->state = sword;
	animation->active = true;
	animation->current_frame = 0;
	animation->delay_count = 0;
}

static void	player_wand(t_animation *animation)
{
	animation->state = cast;
	animation->active = true;
	animation->current_frame = 0;
	animation->delay_count = 0;
}

void	player_action_button(int keynum, t_cub3d *cub3d)
{
	if (keynum == Button1)
		player_wand(&cub3d->player.animation);
	else if (keynum == Button3)
		player_sword(&cub3d->player.animation);
}
