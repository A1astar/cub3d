/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_level_menu.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 14:17:49 by algadea           #+#    #+#             */
/*   Updated: 2025/05/13 20:11:13 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	init_level_menu_other(t_cub3d *cub3d,
			t_window *window, t_level_menu *level_menu)
{
	level_menu->bindings.ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/level_menu/level-menu-bindings720.xpm",
			&level_menu->bindings.width,
			&level_menu->bindings.height);
	level_menu->background.ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/level_menu/level-menu-background720.xpm",
			&level_menu->background.width,
			&level_menu->background.height);
	if (!level_menu->background.ptr || !level_menu->bindings.ptr)
	{
		printf(BOLD RED "LEVEL MENU OTHER XPM ERROR\n" DEFAULT);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

static void	init_level_menu_quit(t_cub3d *cub3d,
			t_window *window, t_level_menu *level_menu)
{
	level_menu->quit[0].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/level_menu/level-menu-quit1-720.xpm",
			&level_menu->quit[0].width,
			&level_menu->quit[0].height);
	level_menu->quit[1].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/level_menu/level-menu-quit2-720.xpm",
			&level_menu->quit[1].width,
			&level_menu->quit[1].height);
	if (!level_menu->quit[0].ptr || !level_menu->quit[1].ptr)
	{
		printf(BOLD RED "LEVEL MENU QUIT XPM ERROR\n" DEFAULT);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

static void	init_level_menu_option(t_cub3d *cub3d,
			t_window *window, t_level_menu *level_menu)
{
	level_menu->option[0].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/level_menu/level-menu-option1-720.xpm",
			&level_menu->option[0].width,
			&level_menu->option[0].height);
	level_menu->option[1].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/level_menu/level-menu-option2-720.xpm",
			&level_menu->option[1].width,
			&level_menu->option[1].height);
	level_menu->option[2].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/level_menu/level-menu-option3-720.xpm",
			&level_menu->option[2].width,
			&level_menu->option[2].height);
	if (!level_menu->option[0].ptr || !level_menu->option[1].ptr
		|| !level_menu->option[2].ptr)
	{
		printf(BOLD RED "LEVEL MENU OPTION XPM ERROR\n" DEFAULT);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

static void	init_level_menu_attributes(t_level_menu *level_menu)
{
	level_menu->state = level_menu_option;
	level_menu->index_option = 0;
	level_menu->index_option_static = 1;
	level_menu->index_quit = 0;
	level_menu->index_quit_static = 1;
	level_menu->blink.value = 0xCC / 4;
	level_menu->blink.max = 255 / 4;
	level_menu->blink.direction = down;
}

void	init_level_menu(t_cub3d *cub3d)
{
	init_level_menu_attributes(&cub3d->level_menu);
	init_level_menu_option(cub3d, &cub3d->window, &cub3d->level_menu);
	init_level_menu_quit(cub3d, &cub3d->window, &cub3d->level_menu);
	init_level_menu_other(cub3d, &cub3d->window, &cub3d->level_menu);
	init_level_menu_addr(cub3d);
}
