/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycasting.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 11:48:07 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/17 16:06:25 by alacroix         ###   ########.fr       */
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

typedef struct s_draw_attributes
{
	double	perp_wall_dist;
	int		line_height;
	int		draw_start;
	int		draw_end;
	double	wall_x;
	int		tex_x;
	int		tex_y;
	double	step;
	double	tex_pos;
}			t_draw_attributes;

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

void	init_draw_attributes(t_ray_attributes *ray, t_draw_attributes *draw, t_player *player)
{
	if (ray->side == 0)
		draw->perp_wall_dist = (ray->side_dist_x - ray->delta_dist_x);
	else
		draw->perp_wall_dist = (ray->side_dist_y - ray->delta_dist_y);
	draw->line_height = (int)(WINDOW_HEIGHT / draw->perp_wall_dist);
	draw->draw_start = -draw->line_height / 2 + WINDOW_HEIGHT / 2;
	if (draw->draw_start < 0)
		draw->draw_start = 0;
	draw->draw_end = draw->line_height / 2 + WINDOW_HEIGHT / 2;
	if (draw->draw_end >= WINDOW_HEIGHT)
		draw->draw_end = WINDOW_HEIGHT - 1;
	if(ray->side == 0)
		draw->wall_x = floor(player->y_pos + draw->perp_wall_dist * ray->raydir_y);
	else
		draw->wall_x = floor(player->x_pos + draw->perp_wall_dist * ray->raydir_x);
}












void init_ray_step_and_side_dist(t_ray_attributes *ray, t_player *player)
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
		ray->step_y = 1;
		ray->side_dist_y = (ray->map_pos_y + 1.0 - player->y_pos)
			* ray->delta_dist_y;
	}
}

void	init_ray_attributes(t_player *player, t_raycast *raycast,
		t_ray_attributes *ray, int ray_num)
{
	ray->hit_wall = false;
	ray->camera_x = 2 * ray_num / (double)WINDOW_WIDTH - 1;
	ray->raydir_x = player->x_dir + raycast->x_plane * ray->camera_x;
	ray->raydir_y = player->y_dir + raycast->y_plane * ray->camera_x;
	ray->map_pos_x = (int)player->x_pos;
	ray->map_pos_y = (int)player->y_pos;
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







void	*choose_textures(t_ray_attributes *ray, t_textures *textures, t_player *player, char **map)
{
	// if(map[ray->map_pos_x][ray->map_pos_y] == 'D')
	// 	return(textures->closed_door);
	// if(ray->side == 0)
	// {
	// 	if(ray->raydir_x > 0)
	// 		return (textures->w_texture_wall);
	// 	else
	// 		return(textures->e_texture_wall);
	// }
	// else
	// {
	// 	if(ray->raydir_y > 0)
	// 		return (textures->n_texture_wall);
	// 	else
	// 		return(textures->s_texture_wall);
	// }
}

void	draw_textures(t_cub3d *cub3d, t_player *player, t_ray_attributes *ray, t_draw_attributes *draw)
{
	t_img *img;

	img->ptr = choose_texture(ray, &cub3d->textures, player, &cub3d->map.map);
	img->addr = mlx_get_data_addr(img->ptr, &img->bpp, &img->size_line, &img->endian);

}

void	raycast_simple_ray(t_cub3d *cub3d, int ray_num, t_player *player,
		t_raycast *raycast)
{
	t_ray_attributes	ray;
	t_draw_attributes	draw;

	init_ray_attributes(player, raycast, &ray, ray_num);
	init_draw_attributes(&ray, &draw, player);
	perform_dda(&ray, &cub3d->map.map);
	draw_texture(cub3d, player, &ray, &draw);
}

void	*raycast_segment(void *arg)
{
	int			ray;
	t_thread	*data;

	data = (t_thread *)arg;
	ray = data->ray_seg_start;
	while (ray < data->ray_seg_end)
	{
		raycast_simple_ray(&data->cub3d, ray, &data->cub3d->player,
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
