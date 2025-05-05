/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_actions.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/05 11:53:29 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 12:45:33 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	activate_animation(t_animation *animation, t_anim_state state)
{
	animation->state = state;
	animation->active = true;
	animation->current_frame = 0;
	animation->delay_count = 0;
}

void	player_sword(t_cub3d *cub3d, t_animation *animation)
{
	activate_animation(animation, sword);
}

void	player_cast(t_cub3d *cub3d, t_animation *animation)
{
	activate_animation(animation, cast);
}
