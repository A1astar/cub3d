/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   data_player.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/23 18:21:59 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 15:55:28 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	update_viewmodel(t_viewmodel *viewmodel)
{
	static int	delay;

	if (delay == 5)
	{
		if (viewmodel->draw_pos == 20)
			viewmodel->orientation = down;
		else if (viewmodel->draw_pos == 0)
			viewmodel->orientation = up;
		if (viewmodel->orientation == down)
			viewmodel->draw_pos--;
		else if (viewmodel->orientation == up)
			viewmodel->draw_pos++;
		delay = 0;
	}
	delay++;
}

static void	update_player_pos(t_cub3d *cub3d, t_player *player)
{
	if (player->movement_w_s == 1)
		move_player_north(cub3d);
	if (player->movement_w_s == -1)
		move_player_south(cub3d);
	if (player->movement_a_d == -1)
		move_player_west(cub3d);
	if (player->movement_a_d == 1)
		move_player_east(cub3d);
	if (cub3d->key_state.left == pressed)
		rotate_player_left(cub3d, &cub3d->time);
	if (cub3d->key_state.right == pressed)
		rotate_player_right(cub3d, &cub3d->time);
	if (cub3d->key_state.shift_l == pressed)
		player->velocity = 3.0;
}

static void	check_item(t_cub3d *cub3d, t_player *player, t_map *map)
{
	if (map->map[(int)player->y_pos][(int)player->x_pos] == 'M')
	{
		map->map[(int)player->y_pos][(int)player->x_pos] = '0';
		cub3d->nb_item = 0;
		cub3d->rendering_state = psychedelic;
	}
}

void	update_player_data(t_cub3d *cub3d)
{
	update_player_pos(cub3d, &cub3d->player);
	check_item(cub3d, &cub3d->player, &cub3d->map);
	update_viewmodel(&cub3d->player.viewmodel);
}
