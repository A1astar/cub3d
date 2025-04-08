/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render_player.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/30 00:33:26 by agadea            #+#    #+#             */
/*   Updated: 2025/04/08 17:27:31 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	render_player_ray(t_cub3d *cub3d, t_player *player)
// {

// }

// void	transform_player_coordinate(t_cub3d *cub3d, t_player *player)
// {

// }

void	render_player(t_cub3d *cub3d, t_player *player)
{
	int	x;
	int	y;
	int	x_size;
	int	y_size;

	y = player->pos_y * 10;
	// y = (player->pos_x * sin(player->angle) + player->pos_y * cos(player->angle));
	y_size = y + 5;
	while (y < y_size)
	{
		x = player->pos_x * 10;
		// x = (player->pos_x * cos(player->angle) - player->pos_y * sin(player->angle));
		// printf("x = %d, y = %d\n", x, y);
		x_size = x + 5;
		while (x < x_size)
		{
			draw_pixel(cub3d->scene->img, x, y, 0xe62b2b);
			x++;
		}
		y++;
	}
}