/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/08 03:12:35 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

void	init_struct_attributes(t_cub3d *cub3d)
{
	ft_bzero(&cub3d->map, sizeof(cub3d->map));
	ft_bzero(&cub3d->player, sizeof(cub3d->player));
	ft_bzero(&cub3d->randy[0], sizeof(cub3d->randy));
	ft_bzero(&cub3d->randy[1], sizeof(cub3d->randy));
	ft_bzero(&cub3d->randy[2], sizeof(cub3d->randy));
	ft_bzero(&cub3d->randy[3], sizeof(cub3d->randy));

}

void	init_program(t_cub3d *cub3d)
{
	init_struct_attributes(cub3d);
	init_mlx(cub3d);
	init_thread(cub3d);
}

void	launch_game(t_cub3d *cub3d)
{

}

int	main(int argc, char **argv)
{
	t_cub3d	cub3d;

	init_program(&cub3d);
	if (map_parsing(argc, argv, &cub3d) == -1)
		return (1);
	launch_game(&cub3d);
}
