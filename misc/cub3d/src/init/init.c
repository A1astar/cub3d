/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/20 19:47:46 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 00:10:21 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_mlx(t_cub3d *cub3d)
{
	cub3d->window->height = WINDOW_HEIGHT;
	cub3d->window->width = WINDOW_WIDTH;
	cub3d->mlx_ptr = mlx_init();
	if (!cub3d->mlx_ptr)
		print_error_then_exit_program(cub3d, err_mlx_ptr);
	cub3d->win_ptr = mlx_new_window(cub3d->mlx_ptr,
		cub3d->window->width, cub3d->window->height, "CUB3D");
	if (!cub3d->win_ptr)
		print_error_then_exit_program(cub3d, err_win_ptr);
}

void	set_null_pointers(t_cub3d *cub3d)
{
	cub3d->win_ptr = NULL;
	cub3d->mlx_ptr = NULL;
	cub3d->map = NULL;
	cub3d->file = NULL;
	cub3d->scene = NULL;
	cub3d->player = NULL;
	cub3d->window = NULL;
	cub3d->raycast = NULL;
	cub3d->minimap = NULL;
	cub3d->main_menu = NULL;
}

void	init_cub3d(t_cub3d *cub3d, char *argv)
{
	set_null_pointers(cub3d);
	init_struct_attr(cub3d);
	extract_input_file(cub3d, argv);
	parse_extracted_data(cub3d);
	init_mlx(cub3d);
	init_struct_attr_2(cub3d);
	load_asset(cub3d);
	set_menu_loop(cub3d);
}
