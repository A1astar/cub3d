/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   raycast_floor.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/24 11:16:10 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/24 12:52:42 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

typedef struct s_floor_ray
{
	double	raydir_x0;
	double	raydir_y0;
	double	raydir_x1;
	double	raydir_y1;
	int		p;
	double	pos_z;
	double	row_distance;
	double	floor_step_x;
	double	floor_step_y;
	double	floor_x;
	double	floor_y;
}			t_floor_ray;

typedef struct s_floor_draw
{
	int		cell_x;
	int		cell_y;
	int		tex_x;
	int		tex_y;
}			t_floor_draw;

static void	init_floor_draw(t_floor_draw *draw, t_cub3d *cub3d, t_floor_ray *ray)
{
	draw->cell_x = (int)(ray->floor_x);
	draw->cell_y = (int)(ray->floor_y);
	draw->tex_x = (int)(cub3d->textures.floor.width * (ray->floor_x
				- draw->cell_x)) & (cub3d->textures.floor.width - 1);
	draw->tex_y = (int)(cub3d->textures.floor.height * (ray->floor_y
				- draw->cell_y)) & (cub3d->textures.floor.height - 1);
}

static void	draw_ray(t_cub3d *cub3d, t_floor_ray *ray, int x, int y)
{
	t_floor_draw	draw;
	int				offset;
	unsigned int	color;
	t_img			*img;

	img = &cub3d->textures.floor;
	ft_bzero(&draw, sizeof(t_floor_draw));
	init_floor_draw(&draw, cub3d, ray);
	offset = draw.tex_y * img->size_line + draw.tex_x * (img->bpp / 8);
	color = *(unsigned int *)(img->addr + offset);
	draw_pixel(&cub3d->scene.img, x, y, color); //floor
	color = (color >> 1) &  8355711;
	draw_pixel(&cub3d->scene.img, x, WINDOW_HEIGHT - y -1, color); //ceiling
}

static void	render_floor_ray(t_cub3d *cub3d, t_floor_ray *ray, int y)
{
	int	x;

	x = 0;
	while (x < WINDOW_WIDTH)
	{
		draw_ray(cub3d, ray, x, y);
		ray->floor_x += ray->floor_step_x;
		ray->floor_y += ray->floor_step_y;
		x++;
	}
}

static void	update_floor_ray(t_player *player, t_raycast *raycast, t_floor_ray *ray,
		int ray_num)
{
	ray->raydir_x0 = player->x_dir - raycast->x_plane;
	ray->raydir_y0 = player->y_dir - raycast->y_plane;
	ray->raydir_x1 = player->x_dir + raycast->x_plane;
	ray->raydir_y1 = player->y_dir + raycast->y_plane;
	ray->p = ray_num - (WINDOW_HEIGHT / 2);
	ray->pos_z = 0.5 * WINDOW_HEIGHT;
	ray->row_distance = ray->pos_z / ray->p;
	ray->floor_step_x = ray->row_distance * (ray->raydir_x1 - ray->raydir_x0)
		/ WINDOW_WIDTH;
	ray->floor_step_y = ray->row_distance * (ray->raydir_y1 - ray->raydir_y0)
		/ WINDOW_WIDTH;
	ray->floor_x = player->x_pos + ray->row_distance * ray->raydir_x0;
	ray->floor_y = player->y_pos + ray->row_distance * ray->raydir_y0;
}

void	raycast_floor(t_cub3d *cub3d, t_raycast *raycast, t_player *player)
{
	int			ray_num;
	t_floor_ray	ray;

	ray_num = WINDOW_HEIGHT / 2;
	while (ray_num < WINDOW_HEIGHT)
	{
		update_floor_ray(player, raycast, &ray, ray_num);
		render_floor_ray(cub3d, &ray, ray_num);
		ray_num++;
	}
}
