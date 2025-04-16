/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycasting.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 11:48:07 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/16 12:55:14 by alacroix         ###   ########.fr       */
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

void	*dda(void *arg)
{
	int			ray;
	t_thread	*data;

	data = (t_thread *)arg;
	ray = data->ray_seg_start;
	while (ray < data->ray_seg_end)
	{
		/*brain overheating calculations*/
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
		pthread_create(&render_thread[x], NULL, &dda, (void *)&threads_args[x]);
		x++;
	}
	x = 0;
	while (x < 8)
	{
		pthread_join(render_thread[x], NULL);
		x++;
	}
}
