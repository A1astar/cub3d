/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_struct_attr_2.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/29 23:15:59 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 11:40:29 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_minimap(t_cub3d *cub3d)
{
	cub3d->minimap = malloc(sizeof(t_minimap));
	if (!cub3d->minimap)
		print_error_then_exit_program(cub3d, err_malloc);
	// cub3d->minimap->img = create_new_img(cub3d, cub3d->window, cub3d->mlx_ptr);
	cub3d->minimap->height = cub3d->map->height;
	cub3d->minimap->width = cub3d->map->width;
	cub3d->minimap->x_pos = cub3d->window->width - cub3d->window->width / 4;
	cub3d->minimap->y_pos = cub3d->window->height - cub3d->window->height / 4;
	// cub3d->minimap->height = cub3d->map->height * (int)(cub3d->window->height * (1.0/4.0));
	// cub3d->minimap->width = cub3d->map->width * (int)(cub3d->window->width * (1.0/4.0));
}

void	init_scene(t_cub3d *cub3d)
{
	cub3d->scene = malloc(sizeof(t_scene));
	if (!cub3d->scene)
		print_error_then_exit_program(cub3d, err_malloc);
	cub3d->scene->img = NULL;
}

void	init_raycast(t_cub3d *cub3d)
{
	cub3d->raycast = malloc(sizeof(t_raycast));
	if (!cub3d->raycast)
		print_error_then_exit_program(cub3d, err_malloc);
}

void	init_main_menu(t_cub3d *cub3d)
{
	cub3d->main_menu = malloc(sizeof(t_main_menu));
	if (!cub3d->main_menu)
		print_error_then_exit_program(cub3d, err_malloc);
	cub3d->main_menu->xpm = NULL;
}

void	init_struct_attr_2(t_cub3d *cub3d)
{
	init_minimap(cub3d);
	init_scene(cub3d);
	init_raycast(cub3d);
	init_main_menu(cub3d);
}
