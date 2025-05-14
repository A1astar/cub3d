/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_key_release_utils.c                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 11:14:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/14 15:40:17 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	key_release_w(t_key_state *key_state, t_player *player)
{
	key_state->w = release;
	if (player->movement_w_s != -1)
		player->movement_w_s--;
}

void	key_release_s(t_key_state *key_state, t_player *player)
{
	key_state->s = release;
	if (player->movement_w_s != 1)
		player->movement_w_s++;
}

void	key_release_a(t_key_state *key_state, t_player *player)
{
	key_state->a = release;
	if (player->movement_a_d != 1)
		player->movement_a_d++;
}

void	key_release_d(t_key_state *key_state, t_player *player)
{
	key_state->d = release;
	if (player->movement_a_d != -1)
		player->movement_a_d--;
}
