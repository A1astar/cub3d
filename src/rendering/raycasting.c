/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycasting.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 11:48:07 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/16 14:21:43 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	calculate_plane(t_raycast *raycast)
{
	double	plane_len;

	plane_len = tan(raycast->fov_rad / 2.0);
	raycast->x_plane = (-raycast->y_dir) * plane_len;
	raycast->y_plane = raycast->x_dir * plane_len;
}

void	raycast_simple_ray(int ray_num, t_player *player, t_raycast *raycast)
{
	double	camera_x;
	double	raydir_x;
	double	raydir_y;

	camera_x = 2 * ray_num / (double)WINDOW_WIDTH - 1;
	raydir_x = player->x_dir + raycast->x_plane * camera_x;
	raydir_y = player->y_dir + raycast->y_plane * camera_x;
}

void	*raycast_segment(void *arg)
{
	int			ray;
	t_thread	*data;

	data = (t_thread *)arg;
	ray = data->ray_seg_start;
	while (ray < data->ray_seg_end)
	{
		raycast_simple_ray(ray, &data->cub3d->player, &data->cub3d->raycast);
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
