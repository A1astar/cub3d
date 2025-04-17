/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 15:55:58 by algadea           #+#    #+#             */
/*   Updated: 2025/04/17 19:45:53 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// typedef struct s_ray_attributes
// {
// 	bool	hit_wall;
// 	double	camera_x;
// 	double	raydir_x;
// 	double	raydir_y;
// 	double	side_dist_x;
// 	double	side_dist_y;
// 	double	delta_dist_x;
// 	double	delta_dist_y;
// 	int		map_pos_x;
// 	int		map_pos_y;
// 	int		step_x;
// 	int		step_y;
// 	int		side;
// }			t_ray_attributes;

// typedef struct s_draw_attributes
// {
// 	double	perp_wall_dist;
// 	int		line_height;
// 	int		draw_start;
// 	int		draw_end;
// 	double	wall_x;
// 	int		tex_x;
// 	int		tex_y;
// 	double	step;
// 	double	tex_pos;
// }			t_draw_attributes;

// void	calculate_plane(t_raycast *raycast)
// {
// 	double	plane_len;

// 	plane_len = tan(raycast->fov_rad / 2.0);
// 	raycast->x_plane = (-raycast->y_dir) * plane_len;
// 	raycast->y_plane = raycast->x_dir * plane_len;
// }

// void	perform_dda(t_ray_attributes *ray, char **map)
// {
// 	while (!ray->hit_wall)
// 	{
// 		if (ray->side_dist_x < ray->side_dist_y)
// 		{
// 			ray->side_dist_x += ray->delta_dist_x;
// 			ray->map_pos_x += ray->step_x;
// 			ray->side = 0;
// 		}
// 		else
// 		{
// 			ray->side_dist_y += ray->delta_dist_y;
// 			ray->map_pos_y += ray->step_y;
// 			ray->side = 1;
// 		}
// 		if (map[ray->map_pos_y][ray->map_pos_x] == '1')
// 			ray->hit_wall = true;
// 	}
// }

// void	init_draw_attributes(t_ray_attributes *ray, t_draw_attributes *draw, t_player *player)
// {
// 	if (ray->side == 0)
// 		draw->perp_wall_dist = (ray->side_dist_x - ray->delta_dist_x);
// 	else
// 		draw->perp_wall_dist = (ray->side_dist_y - ray->delta_dist_y);
// 	draw->line_height = (int)(WINDOW_HEIGHT / draw->perp_wall_dist);
// 	draw->draw_start = -draw->line_height / 2 + WINDOW_HEIGHT / 2;
// 	if (draw->draw_start < 0)
// 		draw->draw_start = 0;
// 	draw->draw_end = draw->line_height / 2 + WINDOW_HEIGHT / 2;
// 	if (draw->draw_end >= WINDOW_HEIGHT)
// 		draw->draw_end = WINDOW_HEIGHT - 1;
// 	if(ray->side == 0)
// 		draw->wall_x = floor(player->y_pos + draw->perp_wall_dist * ray->raydir_y);
// 	else
// 		draw->wall_x = floor(player->x_pos + draw->perp_wall_dist * ray->raydir_x);
// }

// void init_ray_step_and_side_dist(t_ray_attributes *ray, t_player *player)
// {
// 	if (ray->raydir_x < 0)
// 	{
// 		ray->step_x = -1;
// 		ray->side_dist_x = (player->x_pos - ray->map_pos_x) * ray->delta_dist_x;
// 	}
// 	else
// 	{
// 		ray->step_x = 1;
// 		ray->side_dist_x = (ray->map_pos_x + 1.0 - player->x_pos)
// 			* ray->delta_dist_x;
// 	}
// 	if (ray->raydir_y < 0)
// 	{
// 		ray->step_y = -1;
// 		ray->side_dist_y = (player->y_pos - ray->map_pos_y) * ray->delta_dist_y;
// 	}
// 	else
// 	{
// 		ray->step_y = 1;
// 		ray->side_dist_y = (ray->map_pos_y + 1.0 - player->y_pos)
// 			* ray->delta_dist_y;
// 	}
// }

// void	init_ray_attributes(t_player *player, t_raycast *raycast,
// 		t_ray_attributes *ray, int ray_num)
// {
// 	ray->hit_wall = false;
// 	ray->camera_x = 2 * ray_num / (double)WINDOW_WIDTH - 1;
// 	ray->raydir_x = player->x_dir + raycast->x_plane * ray->camera_x;
// 	ray->raydir_y = player->y_dir + raycast->y_plane * ray->camera_x;
// 	ray->map_pos_x = (int)player->x_pos;
// 	ray->map_pos_y = (int)player->y_pos;
// 	if (ray->raydir_x == 0)
// 		ray->delta_dist_x = 1e30;
// 	else
// 		ray->delta_dist_x = fabs(1.0 / ray->raydir_x);
// 	if (ray->raydir_y == 0)
// 		ray->delta_dist_y = 1e30;
// 	else
// 		ray->delta_dist_y = fabs(1.0 / ray->raydir_y);
// 	init_ray_step_and_side_dist(ray, player);
// }

// t_img	*select_texture(t_cub3d *cub3d, t_ray_attributes *ray, t_textures *textures)
// {
// 	if(cub3d->map.map[ray->map_pos_y][ray->map_pos_x] == 'D')
// 		return(&textures->c_door);
// 	if(ray->side == 0)
// 	{
// 		if(ray->raydir_x > 0)
// 			return (&textures->w_wall);
// 		else
// 			return(&textures->e_wall);
// 	}
// 	else
// 	{
// 		if(ray->raydir_y > 0)
// 			return (&textures->n_wall);
// 		else
// 			return(&textures->s_wall);
// 	}
// }

// void	draw_texture(t_cub3d *cub3d, t_ray_attributes *ray, t_draw_attributes *draw, int ray_num)
// {
// 	int				offset;
// 	unsigned int	color;
// 	t_img			*img;

// 	color = 0;
// 	img = select_texture(cub3d, ray, &cub3d->textures);
// 	draw->tex_x = (int)(draw->wall_x * (double)(img->width));
// 	if(draw->tex_x < 0)
// 		draw->tex_x = 0;
// 	else if (draw->tex_x >= img->width)
// 		draw->tex_x = img->width -1;
// 	if(ray->side == 0 && ray->raydir_x > 0)
// 		draw->tex_x = img->width - draw->tex_x -1;
// 	if(ray->side == 1 && ray->raydir_y < 0)
// 		draw->tex_x = img->width - draw->tex_x -1;
// 	draw->step = 1.0 * img->height / draw->line_height;
// 	draw->tex_pos = (draw->draw_start - WINDOW_HEIGHT / 2 + draw->line_height / 2) * draw->step;
// 	while(draw->draw_start < draw->draw_end)
// 	{
// 		draw->tex_y = (int)(draw->tex_pos);
// 		if(draw->tex_y >= img->height)
// 			draw->tex_y = img->height - 1;
// 		draw->tex_pos += draw->step;
// 		offset = draw->tex_y * img->size_line + draw->tex_x * (img->bpp / 8);
// 		color = *(unsigned int *)(img->addr + offset);
// 		if(ray->side == 1)
// 			color = (color >> 1) & 0x7F7F7F;
// 		draw_pixel(&cub3d->scene.img, ray_num, draw->draw_start, color);
// 		draw->draw_start++;
// 	}
// }

// void	raycast_simple_ray(t_cub3d *cub3d, int ray_num, t_player *player,
// 		t_raycast *raycast)
// {
// 	t_ray_attributes	ray;
// 	t_draw_attributes	draw;

// 	init_ray_attributes(player, raycast, &ray, ray_num);
// 	perform_dda(&ray, cub3d->map.map);
// 	pthread_mutex_lock(&cub3d->print);
// 	init_draw_attributes(&ray, &draw, player);
// 	printf("ray.camera: %lf\n" ,ray.camera_x);
// 	printf("ray.delta: %lf\n", ray.delta_dist_x);
// 	printf("ray.delta_dist_y: %lf\n", ray.delta_dist_y);
// 	printf("ray.side: %d\n", ray.side);
// 	printf("ray.map.posX: %d\n", ray.map_pos_x);
// 	printf("ray.map.posY: %d\n", ray.map_pos_y);
// 	printf("ray.stepX: %d\n", ray.step_x);
// 	printf("ray.stepY: %d\n", ray.step_y);
// 	printf("ray.raydirX: %lf\n", ray.raydir_x);
// 	printf("ray.raydirY: %lf\n", ray.raydir_y);
// 	printf("map entry: %c\n", cub3d->map.map[ray.map_pos_y][ray.map_pos_x]);
// 	printf("--------------------------------\n");
// 	pthread_mutex_unlock(&cub3d->print);
// 	draw_texture(cub3d, &ray, &draw, ray_num);
// }

// void	*raycast_segment(void *arg)
// {
// 	int			ray;
// 	t_thread	*data;

// 	data = (t_thread *)arg;
// 	ray = data->ray_seg_start;
// 	while (ray < data->ray_seg_end)
// 	{
// 		raycast_simple_ray(data->cub3d, ray, &data->cub3d->player,
// 			&data->cub3d->raycast);
// 		ray++;
// 	}
// 	return (NULL);
// }

// void	drunk_raycast(t_cub3d *cub3d)
// {
// 	int			x;
// 	int			segment;
// 	t_thread	threads_args[8];
// 	pthread_t	render_thread[8];

// 	x = 0;
// 	segment = WINDOW_WIDTH / 8;
// 	while (x < 8)
// 	{
// 		threads_args[x].cub3d = cub3d;
// 		threads_args[x].ray_seg_start = x * segment;
// 		threads_args[x].ray_seg_end = (x + 1) * segment;
// 		if (x == 8 - 1)
// 			threads_args[x].ray_seg_end = WINDOW_WIDTH;
// 		pthread_create(&render_thread[x], NULL, &raycast_segment,
// 			(void *)&threads_args[x]);
// 		x++;
// 	}
// 	x = 0;
// 	while (x < 8)
// 	{
// 		pthread_join(render_thread[x], NULL);
// 		x++;
// 	}
//}


// void	calculate_plane(t_raycast *raycast)
// {
// 	double	plane_len;

// 	plane_len = tan(raycast->fov_rad / 2.0);
// 	raycast->x_plane = (-raycast->y_dir) * plane_len;
// 	raycast->y_plane = raycast->x_dir * plane_len;
// }

// void	perform_dda(t_ray_attributes *ray, char **map)
// {
// 	while (!ray->hit_wall)
// 	{
// 		if (ray->side_dist_x < ray->side_dist_y)
// 		{
// 			ray->side_dist_x += ray->delta_dist_x;
// 			ray->map_pos_x += ray->step_x;
// 			ray->side = 0;
// 		}
// 		else
// 		{
// 			ray->side_dist_y += ray->delta_dist_y;
// 			ray->map_pos_y += ray->step_y;
// 			ray->side = 1;
// 		}
// 		if (map[ray->map_pos_y][ray->map_pos_x] == '1')
// 			ray->hit_wall = true;
// 	}
// }

// void	init_draw_attributes(t_ray_attributes *ray, t_draw_attributes *draw, t_player *player)
// {
// 	if (ray->side == 0)
// 		draw->perp_wall_dist = (ray->side_dist_x - ray->delta_dist_x);
// 	else
// 		draw->perp_wall_dist = (ray->side_dist_y - ray->delta_dist_y);
// 	draw->line_height = (int)(WINDOW_HEIGHT / draw->perp_wall_dist);
// 	draw->draw_start = -draw->line_height / 2 + WINDOW_HEIGHT / 2;
// 	if (draw->draw_start < 0)
// 		draw->draw_start = 0;
// 	draw->draw_end = draw->line_height / 2 + WINDOW_HEIGHT / 2;
// 	if (draw->draw_end >= WINDOW_HEIGHT)
// 		draw->draw_end = WINDOW_HEIGHT - 1;
// 	if(ray->side == 0)
// 		draw->wall_x = player->y_pos + draw->perp_wall_dist * ray->raydir_y;
// 	else
// 		draw->wall_x = player->x_pos + draw->perp_wall_dist * ray->raydir_x;
// 	draw->wall_x -= floor(draw->wall_x);
// }

// void init_ray_step_and_side_dist(t_ray_attributes *ray, t_player *player)
// {
// 	if (ray->raydir_x < 0)
// 	{
// 		ray->step_x = -1;
// 		ray->side_dist_x = (player->x_pos - ray->map_pos_x) * ray->delta_dist_x;
// 	}
// 	else
// 	{
// 		ray->step_x = 1;
// 		ray->side_dist_x = (ray->map_pos_x + 1.0 - player->x_pos)
// 			* ray->delta_dist_x;
// 	}
// 	if (ray->raydir_y < 0)
// 	{
// 		ray->step_y = -1;
// 		ray->side_dist_y = (player->y_pos - ray->map_pos_y) * ray->delta_dist_y;
// 	}
// 	else
// 	{
// 		ray->step_y = 1;
// 		ray->side_dist_y = (ray->map_pos_y + 1.0 - player->y_pos)
// 			* ray->delta_dist_y;
// 	}
// }

// void	init_ray_attributes(t_player *player, t_raycast *raycast,
// 		t_ray_attributes *ray, int ray_num)
// {
// 	ray->hit_wall = false;
// 	ray->camera_x = 2 * ray_num / (double)WINDOW_WIDTH - 1;
// 	ray->raydir_x = player->x_dir + raycast->x_plane * ray->camera_x;
// 	ray->raydir_y = player->y_dir + raycast->y_plane * ray->camera_x;
// 	ray->map_pos_x = (int)player->x_pos;
// 	ray->map_pos_y = (int)player->y_pos;
// 	if (ray->raydir_x == 0)
// 		ray->delta_dist_x = 1e30;
// 	else
// 		ray->delta_dist_x = fabs(1.0 / ray->raydir_x);
// 	if (ray->raydir_y == 0)
// 		ray->delta_dist_y = 1e30;
// 	else
// 		ray->delta_dist_y = fabs(1.0 / ray->raydir_y);
// 	init_ray_step_and_side_dist(ray, player);
// }

// t_img	*select_texture(t_cub3d *cub3d, t_ray_attributes *ray, t_textures *textures)
// {
// 	if(cub3d->map.map[ray->map_pos_y][ray->map_pos_x] == 'D')
// 		return(&textures->c_door);
// 	if(ray->side == 0)
// 	{
// 		if(ray->raydir_x > 0)
// 			return (&textures->w_wall);
// 		else
// 			return(&textures->e_wall);
// 	}
// 	else
// 	{
// 		if(ray->raydir_y > 0)
// 			return (&textures->n_wall);
// 		else
// 			return(&textures->s_wall);
// 	}
// }

// void	draw_texture(t_cub3d *cub3d, t_ray_attributes *ray, t_draw_attributes *draw, int ray_num)
// {
// 	int				offset;
// 	unsigned int	color;
// 	t_img			*img;

// 	color = 0;
// 	img = select_texture(cub3d, ray, &cub3d->textures);
// 	draw->tex_x = (int)(draw->wall_x * (double)(img->width));
// 	if(draw->tex_x < 0)
// 		draw->tex_x = 0;
// 	else if (draw->tex_x >= img->width)
// 		draw->tex_x = img->width -1;
// 	if(ray->side == 0 && ray->raydir_x > 0)
// 		draw->tex_x = img->width - draw->tex_x -1;
// 	if(ray->side == 1 && ray->raydir_y < 0)
// 		draw->tex_x = img->width - draw->tex_x -1;
// 	draw->step = 1.0 * img->height / draw->line_height;
// 	draw->tex_pos = (draw->draw_start - WINDOW_HEIGHT / 2 + draw->line_height / 2) * draw->step;
// 	while(draw->draw_start < draw->draw_end)
// 	{
// 		draw->tex_y = (int)(draw->tex_pos);
// 		if(draw->tex_y >= img->height)
// 			draw->tex_y = img->height - 1;
// 		draw->tex_pos += draw->step;
// 		offset = draw->tex_y * img->size_line + draw->tex_x * (img->bpp / 8);
// 		color = *(unsigned int *)(img->addr + offset);
// 		if(ray->side == 1)
// 			color = (color >> 1) & 0x7F7F7F;
// 		draw_pixel(&cub3d->scene.img, ray_num, draw->draw_start, color);
// 		draw->draw_start++;
// 	}
// }

// void	raycast_simple_ray(t_cub3d *cub3d, int ray_num, t_player *player,
// 		t_raycast *raycast)
// {
// 	t_ray_attributes	ray;
// 	t_draw_attributes	draw;

// 	init_ray_attributes(player, raycast, &ray, ray_num);
// 	perform_dda(&ray, cub3d->map.map);
// 	pthread_mutex_lock(&cub3d->print);
// 	init_draw_attributes(&ray, &draw, player);
// 	printf("ray.camera: %lf\n" ,ray.camera_x);
// 	printf("ray.delta: %lf\n", ray.delta_dist_x);
// 	printf("ray.delta_dist_y: %lf\n", ray.delta_dist_y);
// 	printf("ray.side: %d\n", ray.side);
// 	printf("ray.map.posX: %d\n", ray.map_pos_x);
// 	printf("ray.map.posY: %d\n", ray.map_pos_y);
// 	printf("ray.stepX: %d\n", ray.step_x);
// 	printf("ray.stepY: %d\n", ray.step_y);
// 	printf("ray.raydirX: %lf\n", ray.raydir_x);
// 	printf("ray.raydirY: %lf\n", ray.raydir_y);
// 	printf("map entry: %c\n", cub3d->map.map[ray.map_pos_y][ray.map_pos_x]);
// 	printf("--------------------------------\n");
// 	pthread_mutex_unlock(&cub3d->print);
// 	draw_texture(cub3d, &ray, &draw, ray_num);
// }

// void	*raycast_segment(void *arg)
// {
// 	int			ray;
// 	t_thread	*data;

// 	data = (t_thread *)arg;
// 	ray = data->ray_seg_start;
// 	while (ray < data->ray_seg_end)
// 	{
// 		raycast_simple_ray(data->cub3d, ray, &data->cub3d->player,
// 			&data->cub3d->raycast);
// 		ray++;
// 	}
// 	return (NULL);
// }

// void	raycasting(t_cub3d *cub3d)
// {
// 	int			x;
// 	int			segment;
// 	t_thread	threads_args[8];
// 	pthread_t	render_thread[8];

// 	x = 0;
// 	segment = WINDOW_WIDTH / 8;
// 	while (x < 8)
// 	{
// 		threads_args[x].cub3d = cub3d;
// 		threads_args[x].ray_seg_start = x * segment;
// 		threads_args[x].ray_seg_end = (x + 1) * segment;
// 		if (x == 8 - 1)
// 			threads_args[x].ray_seg_end = WINDOW_WIDTH;
// 		pthread_create(&render_thread[x], NULL, &raycast_segment,
// 			(void *)&threads_args[x]);
// 		x++;
// 	}
// 	x = 0;
// 	while (x < 8)
// 	{
// 		pthread_join(render_thread[x], NULL);
// 		x++;
// 	}
// }





void	update_raycast_side(t_raycast *raycast, t_player *player)
{
	if (raycast->x_raydir < 0)
	{
		raycast->x_step = -1;
		raycast->x_side = (player->x_pos - raycast->x_map) * raycast->x_delta;
	}
	else
	{
		raycast->x_step = 1;
		raycast->x_side = (raycast->x_map + 1.0 - player->x_pos) * raycast->x_delta;
	}
	if (raycast->y_raydir < 0)
	{
		raycast->y_step = -1;
		raycast->y_side = (player->y_pos - raycast->y_map) * raycast->y_delta;
	}
	else
	{
		raycast->y_step = 1;
		raycast->y_side = (raycast->y_map + 1.0 - player->y_pos) * raycast->y_delta;
	}
}

void	update_raycast_delta(t_raycast *raycast)
{
	if (raycast->x_raydir == 0)
		raycast->x_delta = 1e30;
	else
		raycast->x_delta = fabs(1 / raycast->x_raydir);

	if (raycast->y_raydir == 0)
		raycast->y_delta = 1e30;
	else
		raycast->y_delta = fabs(1 / raycast->y_raydir);
}

void	update_raycast(t_raycast *raycast, t_player *player, int x, int w)
{
	raycast->x_camera = 2 * x / (double)w - 1;
	raycast->x_raydir = raycast->x_dir + raycast->x_plane * raycast->x_camera;
	raycast->y_raydir = raycast->y_dir + raycast->y_plane * raycast->x_camera;
	raycast->x_map = (int)player->x_pos;
	raycast->y_map = (int)player->y_pos;

	update_raycast_delta(raycast);
	update_raycast_side(raycast, player);
}

void	draw_vertical_line(t_scene *scene, int x, int draw_start, int draw_end, int color)
{
	while (draw_start < draw_end)
	{
		draw_pixel(&scene->img, x, draw_start, color);
		draw_start++;
	}
}

void	render_raycast(t_cub3d *cub3d, t_raycast *raycast, int x)
{
	raycast->line_height = (int)(raycast->height / raycast->perp_wall);
	raycast->pitch = 100;

	raycast->draw_start = -raycast->line_height / 2 + raycast->height / 2;
	if (raycast->draw_start < 0 )
		raycast->draw_start = 0;

	raycast->draw_end = raycast->line_height / 2 + raycast->height / 2;
	if (raycast->draw_end >= raycast->height)
		raycast->draw_end = raycast->height - 1;

	static int color = 0x00FFFFFF;

	if (raycast->side == 1)
		color = color / 2;
	draw_vertical_line(&cub3d->scene, x, raycast->draw_start, raycast->draw_end, color);
}

bool	wall_hit(t_map *map, t_raycast *raycast)
{
	if (map->map[(int)raycast->y_map][(int)raycast->x_map] == '1')
		return (true);
	return (false);
}

void	raycast(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
{
	int	x;

	x = 0;
	while (x < raycast->width)
	{
		update_raycast(raycast, player, x, raycast->width);
		while (!wall_hit(&cub3d->map, &cub3d->raycast))
		{
			if (raycast->x_side < raycast->y_side)
			{
				raycast->x_side += raycast->x_delta;
				raycast->x_map += raycast->x_step;
				raycast->side = 0;
			}
			else
			{
				raycast->y_side += raycast->y_delta;
				raycast->y_map += raycast->y_step;
				raycast->side = 1;
			}
		}
		if (raycast->side == 0)
			raycast->perp_wall = raycast->x_side - raycast->x_delta;
		else
			raycast->perp_wall = raycast->y_side - raycast->y_delta;
		render_raycast(cub3d, raycast, x);
		x++;
	}
}
