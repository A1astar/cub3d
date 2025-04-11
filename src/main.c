/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/11 12:54:20 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	launch_game(t_cub3d *cub3d)
{
	while (RUNNING)
	{
		if (cub3d->program_state == main_menu)
		{
			update_mlx_hook(cub3d, &cub3d->window, main_menu);
			mlx_loop(cub3d->window.mlx_ptr);
		}
		else if (cub3d->program_state == level_menu)
		{
			update_mlx_hook(cub3d, &cub3d->window, level_menu);
			mlx_loop(cub3d->window.mlx_ptr);
		}
		else if (cub3d->program_state == playing)
		{
			printf("here launch game\n");
			update_mlx_hook(cub3d, &cub3d->window, playing);
			mlx_loop(cub3d->window.mlx_ptr);
		}
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
	print_usage();
	return (EXIT_FAILURE);
}
