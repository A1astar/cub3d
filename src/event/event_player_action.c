/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_action.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/15 12:18:38 by algadea           #+#    #+#             */
/*   Updated: 2025/05/02 15:20:53 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	doors_open_close(t_player *player, t_map *map)
{
	if (map->map[(int)(player->y_pos + 1)][(int)(player->x_pos)] == 'C')
		map->map[(int)(player->y_pos + 1)][(int)(player->x_pos)] = 'O';
	else if (map->map[(int)(player->y_pos - 1)][(int)(player->x_pos)] == 'C')
		map->map[(int)(player->y_pos - 1)][(int)(player->x_pos)] = 'O';
	else if (map->map[(int)(player->y_pos)][(int)(player->x_pos + 1)] == 'C')
		map->map[(int)(player->y_pos)][(int)(player->x_pos + 1)] = 'O';
	else if (map->map[(int)(player->y_pos)][(int)(player->x_pos - 1)] == 'C')
		map->map[(int)(player->y_pos)][(int)(player->x_pos - 1)] = 'O';
	else if (map->map[(int)(player->y_pos + 1)][(int)(player->x_pos)] == 'O')
		map->map[(int)(player->y_pos + 1)][(int)(player->x_pos)] = 'C';
	else if (map->map[(int)(player->y_pos - 1)][(int)(player->x_pos)] == 'O')
		map->map[(int)(player->y_pos - 1)][(int)(player->x_pos)] = 'C';
	else if (map->map[(int)(player->y_pos)][(int)(player->x_pos + 1)] == 'O')
		map->map[(int)(player->y_pos)][(int)(player->x_pos + 1)] = 'C';
	else if (map->map[(int)(player->y_pos)][(int)(player->x_pos - 1)] == 'O')
		map->map[(int)(player->y_pos)][(int)(player->x_pos - 1)] = 'C';
}

static void	player_sword(t_cub3d *cub3d)
{
	printf(BOLD WHITE "Player " DEFAULT);
	printf(BOLD CYAN "cast!\n" DEFAULT);
	(void)cub3d;
}

static void	player_cast(t_cub3d *cub3d)
{
	printf(BOLD WHITE "Player " DEFAULT);
	printf(BOLD CYAN "cast!\n" DEFAULT);
	(void)cub3d;
}

static void	player_interaction(t_cub3d *cub3d)
{
	doors_open_close(&cub3d->player, &cub3d->map);
}

void	player_action_key(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_q)
		player_cast(&cub3d->player);
	else if (keynum == XK_e)
		player_interaction(&cub3d->player);
	else if (keynum == XK_r)
		player_sword(cub3d);
	else if (keynum == XK_l)
	{
		if (cub3d->rendering_state == normal)
			cub3d->rendering_state = psychedelic;
		else
			cub3d->rendering_state = normal;
	}
}
