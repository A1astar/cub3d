/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_checking_utils2.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 12:50:42 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/10 17:57:16 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_player_spawn(t_map *map, char c)
{
	if (c == 'N')
		return (map->orientation = north, true);
	if (c == 'S')
		return (map->orientation = south, true);
	if (c == 'E')
		return (map->orientation = east, true);
	if (c == 'W')
		return (map->orientation = west, true);
	return (false);
}

bool	is_enemy_spawn(char c)
{
	if (c == 'R')
		return (true);
	return (false);
}
