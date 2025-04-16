/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycasting.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 11:48:07 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/16 15:17:30 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

typedef struct s_ray_attributes
{
	bool	hit_wall;
	double	camera_x;
	double	raydir_x;
	double	raydir_y;
	double	side_dist_x;
	double	side_dist_y;
	double	delta_dist_x;
	double	delta_dist_y;
	int		map_pos_x;
	int		map_pos_y;
	int		step_x;
	int		step_y;
	int		side;
}			t_ray_attributes;

void	calculate_plane(t_raycast *raycast)
{
	double	plane_len;

	plane_len = tan(raycast->fov_rad / 2.0);
	raycast->x_plane = (-raycast->y_dir) * plane_len;
	raycast->y_plane = raycast->x_dir * plane_len;
}

void	perform_dda(t_ray_attributes *ray, char **map)
{
	while (!ray->hit_wall)
	{
		if (ray->side_dist_x < ray->side_dist_y)
		{
			ray->side_dist_x += ray->delta_dist_x;
			ray->map_pos_x += ray->step_x;
			ray->side = 0;
		}
		else
		{
			ray->side_dist_y += ray->delta_dist_y;
			ray->map_pos_y += ray->step_y;
			ray->side = 1;
		}
		if (map[ray->map_pos_x][ray->map_pos_y] == '1')
			ray->hit_wall = true;
	}
}

init_ray_step_and_side_dist(t_ray_attributes *ray, t_player *player)
{
	if (ray->raydir_x < 0)
	{
		ray->step_x = -1;
		ray->side_dist_x = (player->x_pos - ray->map_pos_x) * ray->delta_dist_x;
	}
	else
	{
		ray->step_x = 1;
		ray->side_dist_x = (ray->map_pos_x + 1.0 - player->x_pos)
			* ray->delta_dist_x;
	}
	if (ray->raydir_y < 0)
	{
		ray->step_y = -1;
		ray->side_dist_y = (player->y_pos - ray->map_pos_y) * ray->delta_dist_y;
	}
	else
	{
		ray->step_x = 1;
		ray->side_dist_y = (ray->map_pos_y + 1.0 - player->y_pos)
			* ray->delta_dist_y;
	}
}

void	init_ray_attributes(t_player *player, t_raycast *raycast,
		t_ray_attributes *ray, int ray_num)
{
	ray->hit_wall = false;
	ray->side = 0;
	ray->camera_x = 2 * ray_num / (double)WINDOW_WIDTH - 1;
	ray->raydir_x = player->x_dir + raycast->x_plane * ray->camera_x;
	ray->raydir_y = player->y_dir + raycast->y_plane * ray->camera_x;
	ray->map_pos_x = (int)player->x_pos;
	ray->map_pos_y = (int)player->y_pos;
	ray->step_x = 0;
	ray->step_y = 0;
	if (ray->raydir_x == 0)
		ray->delta_dist_x = 1e30;
	else
		ray->delta_dist_x = fabs(1.0 / ray->raydir_x);
	if (ray->raydir_y == 0)
		ray->delta_dist_y = 1e30;
	else
		ray->delta_dist_y = fabs(1.0 / ray->raydir_y);
	init_ray_step_and_side_dist(ray, player);
}

void	raycast_simple_ray(char **map, int ray_num, t_player *player,
		t_raycast *raycast)
{
	t_ray_attributes	ray;

	init_ray_attributes(player, raycast, &ray, ray_num);
	perform_dda(&ray, map);
}

void	*raycast_segment(void *arg)
{
	int			ray;
	t_thread	*data;

	data = (t_thread *)arg;
	ray = data->ray_seg_start;
	while (ray < data->ray_seg_end)
	{
		raycast_simple_ray(&data->cub3d->map.map, ray, &data->cub3d->player,
			&data->cub3d->raycast);
		ray++;
	}
	return (NULL);
}

void	raycasting(t_cub3d *cub3d)
{
	int			x;
	int			segment;
	t_thread	threads_args[8];
	pthread_t	render_thread[8];

	x = 0;
	segment = WINDOW_WIDTH / 8;
	while (x < 8)
	{
		threads_args[x].cub3d = cub3d;
		threads_args[x].ray_seg_start = x * segment;
		threads_args[x].ray_seg_end = (x + 1) * segment;
		if (x == 8 - 1)
			threads_args[x].ray_seg_end = WINDOW_WIDTH;
		pthread_create(&render_thread[x], NULL, &raycast_segment,
			(void *)&threads_args[x]);
		x++;
	}
	x = 0;
	while (x < 8)
	{
		pthread_join(render_thread[x], NULL);
		x++;
	}
}
