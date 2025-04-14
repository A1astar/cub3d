/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_checking_utils2.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 12:50:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/14 16:01:27 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_player_spawn(t_player *player, char c)
{
	if (c == 'N')
		return (player->orientation = north, true);
	if (c == 'S')
		return (player->orientation = south, true);
	if (c == 'E')
		return (player->orientation = east, true);
	if (c == 'W')
		return (player->orientation = west, true);
	return (false);
}

bool	is_enemy_spawn(char c)
{
	if (c == 'R')
		return (true);
	return (false);
}
