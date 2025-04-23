/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/23 16:13:44 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

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
		init_program(&cub3d, argv);
		mlx_loop(cub3d.window.mlx_ptr);
		free_program(&cub3d);
		return (EXIT_SUCCESS);
	}
	print_usage();
	return (EXIT_FAILURE);
}
