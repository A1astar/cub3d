/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 18:56:18 by algadea          ###   ########.fr       */
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
		free_program_and_exit(&cub3d, EXIT_FAILURE);
	}
	return (EXIT_FAILURE);
}
