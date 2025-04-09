/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 13:16:45 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

int	game_loop(t_cub3d *cub3d)
{
	(void)cub3d;
	return (0);
}

void	launch_game(t_cub3d *cub3d)
{
	mlx_loop_hook(cub3d->scene.mlx_ptr, game_loop, cub3d);
	mlx_hook(cub3d->scene.win_ptr, ButtonPress,
		ButtonPressMask, mouse_press_hook, cub3d);
	mlx_hook(cub3d->scene.win_ptr, MotionNotify,
		ButtonMotionMask, mouse_motion_hook, cub3d);
	mlx_hook(cub3d->scene.win_ptr, KeyPress,
		KeyPressMask, key_hook, cub3d);
	mlx_hook(cub3d->scene.win_ptr, DestroyNotify,
		StructureNotifyMask, &exit_cub3d, cub3d);
	mlx_loop(cub3d->scene.mlx_ptr);
}

int	main(int argc, char **argv)
{
	t_cub3d	cub3d;

	init_program(&cub3d, argc, argv);
	// printf("%p\n", cub3d.scene.mlx_ptr);
	launch_game(&cub3d);
	free_program(&cub3d);
	exit(0);
	// return (EXIT_SUCCESS);
	// print_usage();
	// return (EXIT_FAILURE);
}
