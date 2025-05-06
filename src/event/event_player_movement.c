/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_movement.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/23 15:24:39 by algadea           #+#    #+#             */
<<<<<<< HEAD
/*   Updated: 2025/05/06 12:01:35 by algadea          ###   ########.fr       */
=======
/*   Updated: 2025/05/06 15:42:04 by alacroix         ###   ########.fr       */
>>>>>>> refs/remotes/origin/main
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	move_player_north(t_cub3d *cub3d)
{
	if (!can_move_to_north(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	cub3d->player.x_pos += cub3d->raycast.x_dir * cub3d->player.velocity;
	cub3d->player.y_pos += cub3d->raycast.y_dir * cub3d->player.velocity;
}

void	move_player_east(t_cub3d *cub3d)
{
	if (!can_move_to_east(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	cub3d->player.x_pos -= cub3d->raycast.y_dir * cub3d->player.velocity;
	cub3d->player.y_pos += cub3d->raycast.x_dir * cub3d->player.velocity;
}

void	move_player_west(t_cub3d *cub3d)
{
	if (!can_move_to_west(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
	cub3d->player.x_pos += cub3d->raycast.y_dir * cub3d->player.velocity;
	cub3d->player.y_pos -= cub3d->raycast.x_dir * cub3d->player.velocity;
}

void	move_player_south(t_cub3d *cub3d)
{
	if (!can_move_to_south(&cub3d->raycast, &cub3d->player, &cub3d->map))
		return ;
<<<<<<< HEAD
	cub3d->player.x_pos -= cub3d->raycast.x_dir * cub3d->player.velocity * cub3d->scene.delta_time;
	cub3d->player.y_pos -= cub3d->raycast.y_dir * cub3d->player.velocity * cub3d->scene.delta_time;
=======
	cub3d->player.x_pos -= cub3d->raycast.x_dir * cub3d->player.velocity;
	cub3d->player.y_pos -= cub3d->raycast.y_dir * cub3d->player.velocity;
	//cub3d->player.x_pos -= cub3d->raycast.x_dir * cub3d->player.velocity * cub3d->scene.delta_time;
	//cub3d->player.y_pos -= cub3d->raycast.y_dir * cub3d->player.velocity * cub3d->scene.delta_time;
	// cub3d->player.x_pos -= cub3d->raycast.x_dir * cub3d->scene.delta_time;
	// cub3d->player.y_pos -= cub3d->raycast.y_dir * cub3d->scene.delta_time;
>>>>>>> refs/remotes/origin/main
}
