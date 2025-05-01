/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast_floor.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/24 11:16:10 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/01 17:27:04 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	update_floor_ray(t_window *window, t_player *player,
		t_floor_ray *ray, int ray_num)
{
	ray->p = ray_num - window->half_height;
	ray->pos_z = 0.5 * window->height;
	ray->row_distance = ray->pos_z / ray->p;
	ray->floor_step_x = ray->row_distance * (ray->raydir_x1 - ray->raydir_x0)
		/ window->width;
	ray->floor_step_y = ray->row_distance * (ray->raydir_y1 - ray->raydir_y0)
		/ window->width;
	ray->floor_x = player->x_pos + ray->row_distance * ray->raydir_x0;
	ray->floor_y = player->y_pos + ray->row_distance * ray->raydir_y0;
}

static void	init_floor_ray(t_player *player, t_raycast *raycast,
		t_floor_ray *ray)
{
	ray->raydir_x0 = player->x_dir - raycast->x_plane;
	ray->raydir_y0 = player->y_dir - raycast->y_plane;
	ray->raydir_x1 = player->x_dir + raycast->x_plane;
	ray->raydir_y1 = player->y_dir + raycast->y_plane;
}

void	raycast_floor(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
{
	int			ray_num;
	t_floor_ray	ray;

	ray_num = cub3d->window.half_height + 1;
	init_floor_ray(player, raycast, &ray);
	while (ray_num < WINDOW_HEIGHT)
	{
		update_floor_ray(&cub3d->window, player, &ray, ray_num);
		render_floor_ray(cub3d, &ray, ray_num);
		ray_num++;
	}
}
