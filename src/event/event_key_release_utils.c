/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_key_release_utils.c                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 11:14:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 11:16:40 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	key_release_w(t_key_state *key_state, t_player *player)
{
	key_state->w = release;
	player->movement_w_s--;
}

void	key_release_s(t_key_state *key_state, t_player *player)
{
	key_state->s = release;
	player->movement_w_s++;
}

void	key_release_a(t_key_state *key_state, t_player *player)
{
	key_state->a = release;
	player->movement_a_d++;
}

void	key_release_d(t_key_state *key_state, t_player *player)
{
	key_state->d = release;
	player->movement_a_d--;
}
