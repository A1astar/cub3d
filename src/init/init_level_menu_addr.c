/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_level_menu_addr.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 14:18:37 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 23:09:55 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_level_menu_other_addr(t_cub3d *cub3d, t_level_menu *level_menu)
{
	level_menu->bindings.addr = mlx_get_data_addr(level_menu->bindings.ptr,
			&level_menu->bindings.bpp, &level_menu->bindings.size_line,
			&level_menu->bindings.endian);
	level_menu->background.addr = mlx_get_data_addr(level_menu->background.ptr,
			&level_menu->background.bpp, &level_menu->background.size_line,
			&level_menu->background.endian);
	if (!level_menu->bindings.addr || !level_menu->background.addr)
	{
		printf(BOLD RED "LEVEL MENU OTHER ADDR ERROR\n" DEFAULT);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

static void	init_level_menu_option_addr(t_cub3d *cub3d,
				t_level_menu *level_menu)
{
	level_menu->option[0].addr = mlx_get_data_addr(level_menu->option[0].ptr,
			&level_menu->option[0].bpp, &level_menu->option[0].size_line,
			&level_menu->option[0].endian);
	level_menu->option[1].addr = mlx_get_data_addr(level_menu->option[1].ptr,
			&level_menu->option[1].bpp, &level_menu->option[1].size_line,
			&level_menu->option[1].endian);
	level_menu->option[2].addr = mlx_get_data_addr(level_menu->option[2].ptr,
			&level_menu->option[2].bpp, &level_menu->option[2].size_line,
			&level_menu->option[2].endian);
	if (!level_menu->option[0].addr || !level_menu->option[1].addr
		|| !level_menu->option[2].addr)
	{
		printf(BOLD RED "LEVEL MENU OPTION ADDR ERROR\n" DEFAULT);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

void	init_level_menu_addr(t_cub3d *cub3d)
{
	init_level_menu_option_addr(cub3d, &cub3d->level_menu);
	init_level_menu_other_addr(cub3d, &cub3d->level_menu);
}
