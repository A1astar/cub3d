/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_game.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/07 11:59:26 by algadea           #+#    #+#             */
/*   Updated: 2025/05/14 15:49:44 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	reset_key_state(t_key_state *key_state, t_player *player)
{
	key_state->w = release;
	key_state->a = release;
	key_state->s = release;
	key_state->d = release;
	key_state->up = release;
	key_state->left = release;
	key_state->down = release;
	key_state->right = release;
	key_state->shift_l = release;
	player->movement_w_s = 0;
	player->movement_a_d = 0;
}

int	game_mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	int	last_x;
	int	delta_x;

	(void)y;
	last_x = cub3d->window.half_width;
	if (x == last_x)
		return (0);
	delta_x = x - last_x;
	if (delta_x < 0)
		rotate_player_left(cub3d, &cub3d->time);
	else if (delta_x > 0)
		rotate_player_right(cub3d, &cub3d->time);
	mlx_mouse_move(cub3d->window.mlx_ptr, cub3d->window.win_ptr,
		cub3d->window.half_width, cub3d->window.half_height);
	return (0);
}

int	game_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	(void)x;
	(void)y;
	player_action_button(keynum, cub3d);
	return (0);
}

bool	is_player_movement_key(int keynum)
{
	if (keynum == XK_w || keynum == XK_s || keynum == XK_a || keynum == XK_d
		|| keynum == XK_Up || keynum == XK_Down || keynum == XK_Left
		|| keynum == XK_Right || keynum == XK_Shift_L)
		return (true);
	return (false);
}

int	game_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
	{
		cub3d->program_state = level_menu;
		reset_key_state(&cub3d->key_state, &cub3d->player);
	}
	else if (is_player_movement_key(keynum))
		player_movement_key(keynum, cub3d);
	else if (is_player_action_key(keynum))
		player_action_key(keynum, cub3d);
	return (0);
}
