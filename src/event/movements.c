/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   movements.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/07 21:09:14 by agadea            #+#    #+#             */
/*   Updated: 2025/03/01 20:47:41 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/so_long.h"

void	right(t_so_long *so_long)
{
	so_long->player.x_origin += WALK_VALUE;
	if (so_long->player.x_origin > so_long->window.width)
		so_long->player.x_origin -= WALK_VALUE;
	so_long->player.direction = to_the_right;
}

void	left(t_so_long *so_long)
{
	so_long->player.x_origin -= WALK_VALUE;
	if (so_long->player.x_origin < 0)
		so_long->player.x_origin += WALK_VALUE;
	so_long->player.direction = to_the_left;
}

void	movements(int keynum, t_so_long *so_long)
{
	so_long->player.state = walking;
	if (collision_detection(so_long) == 0)
	{
		if (keynum == XK_W || keynum == XK_w)
		{
			so_long->player.y_origin -= WALK_VALUE;
			if (so_long->player.y_origin < 0)
				so_long->player.y_origin += WALK_VALUE;
		}
		else if (keynum == XK_S || keynum == XK_s)
		{
			so_long->player.y_origin += WALK_VALUE;
			if (so_long->player.y_origin > so_long->window.height)
				so_long->player.y_origin -= WALK_VALUE;
		}
		else if (keynum == XK_A || keynum == XK_a)
			left(so_long);
		else if (keynum == XK_D || keynum == XK_d)
			right(so_long);
		so_long->score_count++;
	}
}
