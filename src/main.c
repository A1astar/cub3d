/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 11:44:20 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

// void	launch_game(t_cub3d *game)
// {
// 	mlx_loop();
// 	mlx_loop_end();
// }

int	main(int argc, char **argv)
{
	t_cub3d	game;

	init_program(&game, argc, argv);
	// launch_game(&game);
	// free_program(&game);
	exit(0);
	// return (EXIT_SUCCESS);
	// print_usage();
	// return (EXIT_FAILURE);
}
