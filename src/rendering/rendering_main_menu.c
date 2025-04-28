/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rendering_main_menu.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/28 15:56:33 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	render_main_menu(t_cub3d *cub3d, t_window *window,
		t_main_menu *main_menu)
{
	(void)cub3d;
	mlx_put_image_to_window(window->mlx_ptr, window->win_ptr,
		main_menu->option[main_menu->index].ptr, 0, 0);
}

int	main_menu_loop(t_cub3d *cub3d)
{
	if (cub3d->program_state == main_menu)
		render_main_menu(cub3d, &cub3d->window, &cub3d->main_menu);
	return (0);
}
