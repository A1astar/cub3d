/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   select_textures.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 15:03:25 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 15:05:31 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static t_img	*select_texture_psychedelic(t_cub3d *cub3d, t_raycast *ray,
		t_textures *textures)
{
	if (cub3d->map.map[(int)ray->y_map][(int)ray->x_map] == 'C')
		return (&textures->trip_c_door);
	if (cub3d->map.map[(int)ray->y_map][(int)ray->x_map] == 'O')
		return (&textures->trip_o_door);
	if (ray->side == 0)
	{
		if (((int)ray->x_map + (int)ray->y_map) % 2 != 0)
			return (&textures->trip_wall_one);
		if (ray->x_raydir > 0)
			return (&textures->trip_w_wall);
		else
			return (&textures->trip_e_wall);
	}
	else
	{
		if (((int)ray->x_map + (int)ray->y_map) % 2 != 0)
			return (&textures->trip_wall_two);
		if (ray->y_raydir > 0)
			return (&textures->trip_n_wall);
		else
			return (&textures->trip_s_wall);
	}
}

static t_img	*select_texture_normal(t_cub3d *cub3d, t_raycast *ray,
		t_textures *textures)
{
	if (cub3d->map.map[(int)ray->y_map][(int)ray->x_map] == 'C')
		return (&textures->c_door);
	if (cub3d->map.map[(int)ray->y_map][(int)ray->x_map] == 'O')
		return (&textures->o_door);
	if (ray->side == 0)
	{
		if (((int)ray->x_map + (int)ray->y_map) % 2 != 0)
			return (&textures->wall_one);
		if (ray->x_raydir > 0)
			return (&textures->w_wall);
		else
			return (&textures->e_wall);
	}
	else
	{
		if (((int)ray->x_map + (int)ray->y_map) % 2 != 0)
			return (&textures->wall_two);
		if (ray->y_raydir > 0)
			return (&textures->n_wall);
		else
			return (&textures->s_wall);
	}
}

t_img	*select_texture(t_cub3d *cub3d, t_raycast *ray, t_textures *textures)
{
	if (cub3d->rendering_state == normal)
		return (select_texture_normal(cub3d, ray, textures));
	else
		return (select_texture_psychedelic(cub3d, ray, textures));
}
