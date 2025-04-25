/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   stat_player.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/23 18:21:59 by algadea           #+#    #+#             */
/*   Updated: 2025/04/25 16:12:02 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	update_viewmodel(t_viewmodel *viewmodel)
{
	static int delay;

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

// void	update_player_pos(t_cub3d *cub3d, t_player *player)
// {
// 	(void)player;
// 	if (cub3d->key_state.w == pressed || cub3d->key_state.up == pressed)
// 		move_player_north(cub3d);
// 	else if (cub3d->key_state.s == pressed || cub3d->key_state.down == pressed)
// 		move_player_south(cub3d);
// 	else if (cub3d->key_state.a == pressed)
// 		move_player_west(cub3d);
// 	else if (cub3d->key_state.d == pressed)
// 		move_player_east(cub3d);
// 	else if (cub3d->key_state.left == pressed)
// 		rotate_player_left(cub3d);
// 	else if (cub3d->key_state.right == pressed)
// 		rotate_player_right(cub3d);
// }

void	update_player_pos(t_cub3d *cub3d, t_player *player)
{
	(void)player;
	if (player->movement_w_s == 1)
		move_player_north(cub3d);
	if (player->movement_w_s == -1)
		move_player_south(cub3d);
	if (player->movement_a_d == -1)
		move_player_west(cub3d);
	if (player->movement_a_d == 1)
		move_player_east(cub3d);
	if (cub3d->key_state.left == pressed)
		rotate_player_left(cub3d);
	if (cub3d->key_state.right == pressed)
		rotate_player_right(cub3d);
	if (cub3d->key_state.shift_l == pressed)
		player->velocity = 0.04;
}

void	update_player_stat(t_cub3d *cub3d)
{
	update_player_pos(cub3d, &cub3d->player);
	update_viewmodel(&cub3d->player.viewmodel);
}