/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player_event_ations.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/05 11:53:29 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 11:54:18 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

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
