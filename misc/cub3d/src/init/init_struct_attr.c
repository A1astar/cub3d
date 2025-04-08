/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_struct_attr.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/29 23:15:37 by agadea            #+#    #+#             */
/*   Updated: 2024/09/12 20:00:34 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_map(t_cub3d *cub3d)
{
	cub3d->map = malloc(sizeof(t_map));
	if (!cub3d->map)
		print_error_then_exit_program(cub3d, err_malloc);
	cub3d->map->no_texture = NULL;
	cub3d->map->so_texture = NULL;
	cub3d->map->we_texture = NULL;
	cub3d->map->ea_texture = NULL;
	cub3d->map->data = NULL;
}

void	init_file(t_cub3d *cub3d)
{
	cub3d->file = malloc(sizeof(t_file));
	if (!cub3d->file)
		print_error_then_exit_program(cub3d, err_malloc);
	cub3d->file->no_filename = NULL;
	cub3d->file->so_filename = NULL;
	cub3d->file->we_filename = NULL;
	cub3d->file->ea_filename = NULL;
	cub3d->file->data = NULL;
}

void	init_player(t_cub3d *cub3d)
{
	cub3d->player = malloc(sizeof(t_player));
	if (!cub3d->player)
		print_error_then_exit_program(cub3d, err_malloc);
	cub3d->player->vertex = malloc(sizeof(uint8_t ***));
	// cub3d->player->img = create_new_img(cub3d, cub3d->window, cub3d->mlx_ptr);
}

void	init_window(t_cub3d *cub3d)
{
	cub3d->window = malloc(sizeof(t_window));
	if (!cub3d->window)
		print_error_then_exit_program(cub3d, err_malloc);
}

void	init_struct_attr(t_cub3d *cub3d)
{
	cub3d->program_state = main_menu;
	init_map(cub3d);
	init_file(cub3d);
	init_player(cub3d);
	init_window(cub3d);
}
