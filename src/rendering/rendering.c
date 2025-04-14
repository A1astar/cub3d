/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/11 18:57:26 by algadea           #+#    #+#             */
/*   Updated: 2025/04/14 15:00:09 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	draw_pixel(t_img *img, int x, int y, int color)
{
	char	*pixel;

	pixel = img->addr + (y * img->size_line + x * (img->bpp / 8));
	*(int *)pixel = color;
}

int	cub3d_loop(t_cub3d *cub3d)
{
	if (cub3d->program_state == game)
		game_loop(cub3d);
	else if (cub3d->program_state == level_menu)
		level_menu_loop(cub3d);
	else if (cub3d->program_state == main_menu)
		main_menu_loop(cub3d);
	return (0);
}
