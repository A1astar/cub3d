/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   memory_alloc.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/03 10:52:52 by agadea            #+#    #+#             */
/*   Updated: 2024/07/29 16:17:01 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	alloc_struct_attr(t_cub3d *cub3d)
{
	cub3d->map = malloc(sizeof(t_map));
	cub3d->file = malloc(sizeof(t_file));
	cub3d->scene = malloc(sizeof(t_scene));
	cub3d->player = malloc(sizeof(t_player));
	cub3d->window = malloc(sizeof(t_window));
	cub3d->raycast = malloc(sizeof(t_raycast));
	cub3d->main_menu = malloc(sizeof(t_main_menu));
	if (!cub3d->map || !cub3d->file || !cub3d->player
		|| !cub3d->window || !cub3d->raycast || !cub3d->main_menu)
		print_error_then_exit_program(cub3d, err_malloc);
}
