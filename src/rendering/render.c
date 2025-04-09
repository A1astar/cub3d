/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   render.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:33:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 19:00:25 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	level_menu_loop(t_cub3d *cub3d)
{
	(void)cub3d;
	return (0);
}

void	render_main_menu(t_cub3d *cub3d, t_scene *scene, t_menu *main_menu)
{
	(void)cub3d;
	mlx_put_image_to_window(scene->mlx_ptr, scene->win_ptr, 
		main_menu->img[main_menu->index].ptr, 0, 0);
}

int	main_menu_loop(t_cub3d *cub3d)
{
	render_main_menu(cub3d, &cub3d->scene, &cub3d->main_menu);
	return (0);
}

int	playing_loop(t_cub3d *cub3d)
{
	(void)cub3d;
	return (0);
}