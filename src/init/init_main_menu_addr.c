/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_main_menu_addr.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/29 12:28:21 by algadea           #+#    #+#             */
/*   Updated: 2025/05/02 15:25:58 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_main_menu_option_addr(t_cub3d *cub3d, t_main_menu *main_menu)
{
	main_menu->option[0].addr = mlx_get_data_addr(main_menu->option[0].ptr,
		&main_menu->option[0].bpp,
		&main_menu->option[0].size_line,
		&main_menu->option[0].endian);
	main_menu->option[1].addr = mlx_get_data_addr(main_menu->option[1].ptr,
		&main_menu->option[1].bpp,
		&main_menu->option[1].size_line,
		&main_menu->option[1].endian);
	if (!main_menu->option[0].addr || !main_menu->option[1].addr)
	{
		printf(BOLD RED "MAIN MENU OPTION XPM ERROR\n" DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

static void	init_main_menu_launcher_addr(t_cub3d *cub3d, t_main_menu *main_menu)
{
	main_menu->launcher_blink.addr = mlx_get_data_addr(
		main_menu->launcher_blink.ptr,
		&main_menu->launcher_blink.bpp,
		&main_menu->launcher_blink.size_line,
		&main_menu->launcher_blink.endian);
	main_menu->launcher_title.addr = mlx_get_data_addr(
		main_menu->launcher_title.ptr,
		&main_menu->launcher_title.bpp,
		&main_menu->launcher_title.size_line,
		&main_menu->launcher_title.endian);
	if (!main_menu->launcher_blink.addr || !main_menu->launcher_title.addr)
	{
		printf(BOLD RED "MAIN MENU LAUNCHER XPM ERROR\n" DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_main_menu_addr(t_cub3d *cub3d)
{
	init_main_menu_launcher_addr(cub3d, &cub3d->main_menu);
	init_main_menu_option_addr(cub3d, &cub3d->main_menu);
}
