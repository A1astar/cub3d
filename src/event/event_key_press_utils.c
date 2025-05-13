/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   key_state_utils.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 11:03:37 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 11:08:24 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	key_press_w(t_key_state *key_state, t_player *player)
{
	key_state->w = pressed;
	player->movement_w_s++;
}

void	key_press_s(t_key_state *key_state, t_player *player)
{
	key_state->s = pressed;
	player->movement_w_s--;
}

void	key_press_a(t_key_state *key_state, t_player *player)
{
	key_state->a = pressed;
	player->movement_a_d--;
}

void	key_press_d(t_key_state *key_state, t_player *player)
{
	key_state->d = pressed;
	player->movement_a_d++;
}
