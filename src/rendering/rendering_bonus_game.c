/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_bonus_game.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 12:03:39 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_game(t_cub3d *cub3d, t_window *window, t_scene *scene)
{
	if (cub3d->rendering_state == normal)
		raycast_floor(cub3d, &cub3d->raycast, &cub3d->player);
	else
		rendering_psychedelic(&cub3d->scene, &cub3d->map, ep_ceiling);
	raycast_map(cub3d, &cub3d->raycast, &cub3d->player);
	raycast_doors(cub3d, &cub3d->raycast, &cub3d->player);
	if (cub3d->nb_item)
		render_item(cub3d, &cub3d->item, &cub3d->raycast);
	render_enemy(cub3d, &cub3d->raycast, &cub3d->scene);
	render_minimap(cub3d, &cub3d->map, &cub3d->minimap, &cub3d->player);
	render_viewmodel(cub3d, &cub3d->window, &cub3d->player.viewmodel,
		&cub3d->scene);
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr, scene->img.ptr, 0,
		0);
}

int	game_loop(t_cub3d *cub3d)
{
	update_frame_rate(&cub3d->time);
	update_game_data(cub3d);
	render_game(cub3d, &cub3d->window, &cub3d->scene);
	return (0);
}
