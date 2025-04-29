/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   drunk_raycast_threads.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/18 11:26:58 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/29 12:13:17 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	perform_dda(t_ray_attributes *ray, char **map)
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
		if (map[ray->map_pos_y][ray->map_pos_x] == '1')
			ray->hit_wall = true;
	}
}

static void	init_draw_attributes(t_ray_attributes *ray, t_draw_attributes *draw, t_player *player)
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

static void init_ray_step_and_side_dist(t_ray_attributes *ray, t_player *player)
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

static void	init_ray_attributes(t_player *player, t_raycast *raycast,
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

static t_img	*select_texture(t_cub3d *cub3d, t_ray_attributes *ray, t_textures *textures)
{
	if(cub3d->map.map[ray->map_pos_y][ray->map_pos_x] == 'D')
		return(&textures->c_door);
	if(ray->side == 0)
	{
		if(ray->raydir_x > 0)
			return (&textures->w_wall);
		else
			return(&textures->e_wall);
	}
	else
	{
		if(ray->raydir_y > 0)
			return (&textures->n_wall);
		else
			return(&textures->s_wall);
	}
}

static void	draw_texture(t_cub3d *cub3d, t_ray_attributes *ray, t_draw_attributes *draw, int ray_num)
{
	int				offset;
	unsigned int	color;
	t_img			*img;

	color = 0;
	img = select_texture(cub3d, ray, &cub3d->textures);
	draw->tex_x = (int)(draw->wall_x * (double)(img->width));
	if(draw->tex_x < 0)
		draw->tex_x = 0;
	else if (draw->tex_x >= img->width)
		draw->tex_x = img->width -1;
	if(ray->side == 0 && ray->raydir_x > 0)
		draw->tex_x = img->width - draw->tex_x -1;
	if(ray->side == 1 && ray->raydir_y < 0)
		draw->tex_x = img->width - draw->tex_x -1;
	draw->step = 1.0 * img->height / draw->line_height;
	draw->tex_pos = (draw->draw_start - WINDOW_HEIGHT / 2 + draw->line_height / 2) * draw->step;
	while(draw->draw_start < draw->draw_end)
	{
		draw->tex_y = (int)(draw->tex_pos);
		if(draw->tex_y >= img->height)
			draw->tex_y = img->height - 1;
		draw->tex_pos += draw->step;
		offset = draw->tex_y * img->size_line + draw->tex_x * (img->bpp / 8);
		color = *(unsigned int *)(img->addr + offset);
		if(ray->side == 1)
			color = (color >> 1) & 0x7F7F7F;
		draw_pixel_color(&cub3d->scene.img, ray_num, draw->draw_start, color);
		draw->draw_start++;
	}
}

static void	raycast_simple_ray(t_cub3d *cub3d, int ray_num, t_player *player,
		t_raycast *raycast)
{
	t_ray_attributes	ray;
	t_draw_attributes	draw;

	init_ray_attributes(player, raycast, &ray, ray_num);
	perform_dda(&ray, cub3d->map.map);
	init_draw_attributes(&ray, &draw, player);
	draw_texture(cub3d, &ray, &draw, ray_num);
}

static void	*raycast_segment(void *arg)
{
	int			ray;
	t_thread	*data;

	data = (t_thread *)arg;
	ray = data->ray_seg_start;
	while (ray < data->ray_seg_end)
	{
		raycast_simple_ray(data->cub3d, ray, &data->cub3d->player,
			&data->cub3d->raycast);
		ray++;
	}
	return (NULL);
}

void	drunk_raycast_threads(t_cub3d *cub3d)
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
