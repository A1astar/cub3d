/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_playing.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 17:03:16 by algadea           #+#    #+#             */
/*   Updated: 2025/04/12 18:25:56 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	playing_mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	printf("x = %d | y = %d\n", x, y);
	(void)cub3d;
	return (0);
}

void	player_attack(t_cub3d *cub3d)
{
	printf(BOLD WHITE"Player "DEFAULT);
	printf(BOLD RED"attack!\n"DEFAULT);
	(void)cub3d;
}

void	player_parry(t_cub3d *cub3d)
{
	printf(BOLD WHITE"Player "DEFAULT);
	printf(BOLD BLUE"parry!\n"DEFAULT);
	(void)cub3d;
}

int	playing_mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	printf("keynum = %d | x = %d | y = %d\n", keynum, x, y);
	if (keynum == Button1) // Left click
		player_attack(cub3d);
	else if (keynum == Button3) // Right click
		player_parry(cub3d);
	return (0);
}

// void	update_player_stats(void)
// {

// }

bool	can_move_to_north(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y - 1][x] == '1' && player->y_pos - 0.1 <= y)
		return (false);
	return (true);
}

bool	can_move_to_south(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y + 1][x] == '1' && player->y_pos + 0.1 >= y)
		return (false);
	return (true);
}

bool	can_move_to_west(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y][x - 1] == '1' && player->x_pos - 0.1 <= x)
		return (false);
	return (true);
}

bool	can_move_to_east(t_player *player, t_map *map, int x, int y)
{
	if (map->map[y][x + 1] == '1' && player->x_pos + 0.1 >= x)
		return (false);
	return (true);
}


void	player_action(t_cub3d *cub3d)
{
	printf(BOLD WHITE"Player "DEFAULT);
	printf(BOLD CYAN"action!\n"DEFAULT);
	(void)cub3d;
}

void	update_player_stats(t_cub3d *cub3d)
{
	(void)cub3d;
}

int	playing_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		// cub3d->program_state == level_menu;
		exit_cub3d(cub3d);
	else if (keynum == XK_w && can_move_to_north(&cub3d->player,
		&cub3d->map, (int)cub3d->player.x_pos, (int)cub3d->player.y_pos))
		cub3d->player.y_pos -= 0.1;
	else if (keynum == XK_s && can_move_to_south(&cub3d->player,
		&cub3d->map, (int)cub3d->player.x_pos, (int)(cub3d->player.y_pos)))
		cub3d->player.y_pos += 0.1;
	else if (keynum == XK_a && can_move_to_west(&cub3d->player,
		&cub3d->map, (int)cub3d->player.x_pos, (int)cub3d->player.y_pos))
		cub3d->player.x_pos -= 0.1;
	else if (keynum == XK_d && can_move_to_east(&cub3d->player,
		&cub3d->map, (int)cub3d->player.x_pos, (int)cub3d->player.y_pos))
		cub3d->player.x_pos += 0.1;
	// else if (keynum == XK_q)
	// 	player_cast(cub3d);
	// else if (keynum == XK_e)
	// 	player_action(cub3d);
	// else if (keynum == XK_r)
	// 	player_reload(cub3d);
	update_player_stats(cub3d);
	return (0);
}