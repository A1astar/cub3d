/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:56 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 13:15:26 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	mouse_motion_hook(int x, int y, t_cub3d *cub3d)
{
	printf("x = %d | y = %d\n", x, y);
	(void)cub3d;
	return (0);
}

int	mouse_press_hook(int keynum, int x, int y, t_cub3d *cub3d)
{
	printf("keynum = %d | x = %d | y = %d\n", keynum, x, y);
	(void)cub3d;
	return (0);
}

int	key_hook(int keynum, t_cub3d *cub3d)
{
	printf("%d\n", keynum);
	if (keynum == XK_Escape)
		exit_cub3d(keynum, cub3d);
	return (0);
}

int	exit_cub3d(int keynum, t_cub3d *cub3d)
{
	(void)keynum;
	free_program(cub3d);
	exit(EXIT_SUCCESS);
	return (0);
}

