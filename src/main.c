/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 11:20:29 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	init_struct_attributes(t_cub3d *cub3d)
{
	ft_bzero(&cub3d->map, sizeof(cub3d->map));
	ft_bzero(&cub3d->scene, sizeof(cub3d->scene));
	ft_bzero(&cub3d->player, sizeof(cub3d->player));
	ft_bzero(&cub3d->thread, sizeof(cub3d->thread));
	ft_bzero(&cub3d->setting, sizeof(cub3d->setting));
	ft_bzero(&cub3d->randy[0], sizeof(cub3d->randy));
	ft_bzero(&cub3d->randy[1], sizeof(cub3d->randy));
	ft_bzero(&cub3d->randy[2], sizeof(cub3d->randy));
	ft_bzero(&cub3d->randy[3], sizeof(cub3d->randy));
	ft_bzero(&cub3d->main_menu, sizeof(cub3d->main_menu));
	ft_bzero(&cub3d->level_menu, sizeof(cub3d->level_menu));
}

int	main(int argc, char **argv)
{
	t_cub3d	cub3d;

	init_program(&cub3d, argc, argv);
	exit(0);
	// launch_game(&cub3d);
	// free_program(&cub3d);
	// return (EXIT_SUCCESS);
	// print_usage();
	// return (EXIT_FAILURE);
}
