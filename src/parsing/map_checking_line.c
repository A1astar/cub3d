/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_checking_line.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 11:42:41 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 12:01:41 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	handle_player(t_cub3d *cub3d, char tile, size_t x, size_t y)
{
	if (is_player_spawn(&cub3d->player, tile))
	{
		cub3d->player.x_pos = x;
		cub3d->player.y_pos = y;
		cub3d->nb_player++;
		check_player_nb(cub3d, cub3d->nb_player);
	}
}

static void	handle_enemy(t_cub3d *cub3d, char tile, size_t x, size_t y)
{
	if (is_enemy_spawn(tile))
	{
		check_enemy_nb(cub3d, cub3d->nb_enemy);
		apply_enemy_state(&cub3d->randy[cub3d->nb_enemy], cub3d->nb_enemy);
		cub3d->randy[cub3d->nb_enemy].x_pos = x;
		cub3d->randy[cub3d->nb_enemy].y_pos = y;
		cub3d->nb_enemy++;
	}
}

static void	handle_item(t_cub3d *cub3d, char tile, size_t x, size_t y)
{
	if (is_item(tile))
	{
		cub3d->item.x_pos = x;
		cub3d->item.y_pos = y;
		cub3d->nb_item++;
		check_item_nb(cub3d, cub3d->nb_item);
	}
}

static void	handle_tile(t_cub3d *cub3d, char tile, size_t x, size_t y)
{
	handle_player(cub3d, tile, x, y);
	handle_enemy(cub3d, tile, x, y);
	handle_item(cub3d, tile, x, y);
	if (!is_player_spawn(&cub3d->player, tile) && !is_enemy_spawn(tile)
		&& !is_item(tile))
		check_valid_element(cub3d, tile);
}

void	scan_map_line(t_cub3d *cub3d, char *map_line, size_t row)
{
	size_t	i;

	i = 0;
	update_map_size(cub3d, map_line);
	while (map_line[i])
	{
		handle_tile(cub3d, map_line[i], i, row);
		i++;
	}
}
