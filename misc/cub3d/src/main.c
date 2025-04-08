/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/20 11:52:19 by agadea            #+#    #+#             */
/*   Updated: 2025/04/08 18:37:30 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	destroy_images(t_cub3d *cub3d)
{
	if (cub3d->scene->img->ptr)
		mlx_destroy_image(cub3d->mlx_ptr, cub3d->scene->img->ptr);
	if (cub3d->main_menu->xpm->ptr)
		mlx_destroy_image(cub3d->mlx_ptr, cub3d->main_menu->xpm->ptr);
	cub3d->scene->img->ptr = NULL;
	cub3d->main_menu->xpm->ptr = NULL;
}

int	exit_hook(t_cub3d *cub3d)
{
	destroy_images(cub3d);
	mlx_destroy_window(cub3d->mlx_ptr, cub3d->win_ptr);
	mlx_destroy_display(cub3d->mlx_ptr);
	free(cub3d->mlx_ptr);
	cub3d->mlx_ptr = NULL;
	clean_program(cub3d);
	exit(EXIT_SUCCESS);
}

void	start_game_loop(t_cub3d *cub3d)
{
	mlx_loop(cub3d->mlx_ptr);
}

int	main(int argc, char **argv)
{
	t_cub3d	cub3d;

	if (argc == 2)
	{
		init_cub3d(&cub3d, argv[1]);
		print_map_data(cub3d.map->data);
		start_game_loop(&cub3d);
		return (EXIT_SUCCESS);
	}
	print_error_then_exit_program(&cub3d, err_arg_nbr);
	return (EXIT_FAILURE);
}
