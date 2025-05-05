/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_actions.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/05 11:53:29 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 12:33:50 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	activate_animation(t_animation * animation, enum e_anim_state)
// {}
void	player_sword(t_animation *animation)
{
	animation->state = sword;
	animation->active = true;
	animation->current_frame = 0;
	animation->delay_count = 0;
}

void	player_cast(t_animation *animation)
{
	animation->state = cast;
	animation->active = true;
	animation->current_frame = 0;
	animation->delay_count = 0;
}
