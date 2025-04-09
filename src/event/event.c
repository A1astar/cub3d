/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:10:56 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 12:41:19 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	events_levels(int keynum, t_so_long *so_long)
// {
// 	if (keynum == XK_Escape)
// 	{
// 		so_long->state = game_pause;
// 		so_long->menu.index = resume;
// 	}
// 	else if (keynum == XK_W || keynum == XK_w
// 		|| keynum == XK_A || keynum == XK_a
// 		|| keynum == XK_S || keynum == XK_s
// 		|| keynum == XK_D || keynum == XK_d)
// 		movements(keynum, so_long);
// }

int	key_hook(int keynum, t_cub3d *cub3d)
{
	(void)keynum;
	(void)cub3d;
	return (0);
}

int	exit_cub3d(int keynum, t_cub3d *cub3d)
{
	(void)keynum;
	free_program(cub3d);
	exit(EXIT_SUCCESS);
	return (0);
}

