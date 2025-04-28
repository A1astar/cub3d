/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_main_menu.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/28 15:47:34 by algadea           #+#    #+#             */
/*   Updated: 2025/04/28 16:20:23 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_main_menu_settings(t_cub3d *cub3d,
			t_window *window, t_main_menu *main_menu)
{
	main_menu->option[0].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu1-720.xpm",
			&main_menu->option[0].width,
			&main_menu->option[0].height);
	main_menu->option[1].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu2-720.xpm",
			&main_menu->option[1].width,
			&main_menu->option[1].height);
	main_menu->option[2].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu3-720.xpm",
			&main_menu->option[2].width,
			&main_menu->option[2].height);
	if (!main_menu->option[0].ptr || !main_menu->option[1].ptr
		|| !main_menu->option[2].ptr)
	{
		printf(BOLD RED "MAIN MENU OPTION XPM ERROR\n" DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

static void	init_main_menu_option(t_cub3d *cub3d,
			t_window *window, t_main_menu *main_menu)
{
	main_menu->option[0].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu1-720.xpm",
			&main_menu->option[0].width,
			&main_menu->option[0].height);
	main_menu->option[1].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu2-720.xpm",
			&main_menu->option[1].width,
			&main_menu->option[1].height);
	main_menu->option[2].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu3-720.xpm",
			&main_menu->option[2].width,
			&main_menu->option[2].height);
	if (!main_menu->option[0].ptr || !main_menu->option[1].ptr
		|| !main_menu->option[2].ptr)
	{
		printf(BOLD RED "MAIN MENU OPTION XPM ERROR\n" DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_main_menu_launcher(t_cub3d *cub3d,
			t_window *window, t_main_menu *main_menu)
{
	main_menu->launcher_blink.ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu1-720.xpm",
			&main_menu->launcher_blink.width,
			&main_menu->launcher_blink.height);
	main_menu->launcher_title.ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main-menu1-720.xpm",
			&main_menu->launcher_title.width,
			&main_menu->launcher_title.height);
	if (!main_menu->launcher_blink.ptr || !main_menu->launcher_title.ptr)
	{
		printf(BOLD RED "MAIN MENU LAUNCHER XPM ERROR\n" DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_main_menu_background(t_cub3d *cub3d,
			t_window *window, t_main_menu *main_menu)
{
	main_menu->background[0].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main_menu-launch480.xpm",
			&main_menu->background[0].width,
			&main_menu->background[0].height);
	main_menu->background[1].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main_menu-launch720.xpm",
			&main_menu->background[1].width,
			&main_menu->background[1].height);
	main_menu->background[2].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main_menu-launch1080.xpm",
			&main_menu->background[2].width,
			&main_menu->background[2].height);
	if (!main_menu->background[0].ptr || !main_menu->background[1].ptr
		|| !main_menu->background[2].ptr)
	{
		printf(BOLD RED "MAIN MENU BACKGROUND XPM ERROR\n" DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_main_menu(t_cub3d *cub3d)
{
	// init_main_menu_background(cub3d, &cub3d->window, &cub3d->main_menu);
	// init_main_menu_launcher(cub3d, &cub3d->window, &cub3d->main_menu);
	init_main_menu_option(cub3d, &cub3d->window, &cub3d->main_menu);
	init_main_menu_settings(cub3d, &cub3d->window, &cub3d->main_menu);
}
