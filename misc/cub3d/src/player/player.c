/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   player.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/30 00:28:31 by agadea            #+#    #+#             */
/*   Updated: 2024/09/07 23:16:34 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_moving_key(int keynum)
{
	// if (keynum == XK_a || keynum == XK_A
	// 	|| keynum == XK_d || keynum == XK_D
	// 	|| keynum == XK_w || keynum == XK_W
	// 	|| keynum == XK_s || keynum == XK_S)
	if (keynum == XK_w || keynum == XK_W
		|| keynum == XK_s || keynum == XK_S)
		return (true);
	return (false);
}

bool	is_rotation_key(int keynum)
{
	if (keynum == XK_a || keynum == XK_A
		|| keynum == XK_d || keynum == XK_D)
		return (true);
	return (false);
}

void	rotate_player(t_cub3d *cub3d, t_player *player, int keynum)
{
	(void)cub3d;
	if (keynum == XK_a || keynum == XK_A)
		player->angle -= 0.05;
	else if (keynum == XK_d || keynum == XK_D)
		player->angle += 0.05;
	printf("%f\n", player->angle);
}

void	move_player(t_cub3d *cub3d, t_player *player, int keynum)
{
	if ((keynum == XK_a || keynum == XK_A)
		&& !have_collision_west(cub3d, player))
		player->pos_x -= 0.10;
	else if ((keynum == XK_d || keynum == XK_D)
		&& !have_collision_east(cub3d, player))
		player->pos_x += 0.10;
	if ((keynum == XK_w || keynum == XK_W)
		&& !have_collision_north(cub3d, player))
		player->pos_y -= 0.10;
	else if ((keynum == XK_s || keynum == XK_S)
		&& !have_collision_south(cub3d, player))
		player->pos_y += 0.10;
}

void	player_event(t_cub3d *cub3d, t_player *player, int keynum)
{
	if (is_moving_key(keynum))
		move_player(cub3d, player, keynum);
	else if (is_rotation_key(keynum))
		rotate_player(cub3d, player, keynum);
}
