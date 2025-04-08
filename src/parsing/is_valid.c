/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   is_valid.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 17:45:05 by algadea           #+#    #+#             */
/*   Updated: 2025/04/08 18:29:59 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_texture_valid(t_cub3d *game, t_map *map)
{
	(void)game;
	(void)map;
		return (false);
	return (true);
}

bool	is_valid_map(t_cub3d *game, t_map *map)
{
	if (is_texture_valid(game, map)) 
		return (false);
	return (true);
}