/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 15:57:03 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"


void	launch_game(t_cub3d *cub3d)
{
	mlx_loop_end(cub3d->scene.mlx_ptr);
	while (RUNNING)
	{
		if (cub3d->program_state == main_menu)
			mlx_loop_hook(cub3d->scene.mlx_ptr, main_menu_loop, cub3d);
		else if (cub3d->program_state == level_menu)
			mlx_loop_hook(cub3d->scene.mlx_ptr, level_menu_loop, cub3d);
		else if (cub3d->program_state == playing)
			mlx_loop_hook(cub3d->scene.mlx_ptr, playing_loop, cub3d);
		mlx_loop(cub3d->scene.mlx_ptr);
	}
}

void	init_main_menu(t_cub3d *cub3d, t_scene *scene, t_menu *main_menu)
{
	main_menu->img[0].ptr = mlx_xpm_file_to_image(scene->mlx_ptr,
		"asset/menu/main-menu1.xpm", &main_menu->width, &main_menu->height);
	main_menu->img[1].ptr = mlx_xpm_file_to_image(scene->mlx_ptr,
		"asset/menu/main-menu2.xpm", &main_menu->width, &main_menu->height);
	main_menu->img[2].ptr = mlx_xpm_file_to_image(scene->mlx_ptr,
		"asset/menu/main-menu3.xpm", &main_menu->width, &main_menu->height);
	if (!main_menu->img[0].ptr || main_menu->img[1].ptr
		|| main_menu->img[2].ptr)
	{
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

bool	argument_count_correct(int argc)
{
	if (argc == 2)
		return (true);
	return (false);
}

int	main(int argc, char **argv)
{
	t_cub3d	cub3d;

	if (argument_count_correct(argc))
	{
		init_program(&cub3d,argv);
		launch_game(&cub3d);
		free_program(&cub3d);
		return (EXIT_SUCCESS);
	}
	// print_usage();
	return (EXIT_FAILURE);
}
