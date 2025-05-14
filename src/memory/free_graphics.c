/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_graphics.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 14:50:38 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/14 14:28:07 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	free_t_img(t_window *window, t_img *img)
{
	if (img->ptr)
		mlx_destroy_image(window->mlx_ptr, img->ptr);
}

void	free_t_level_menu(t_level_menu *level_menu, t_window *window)
{
	free_t_img(window, &level_menu->bindings);
	free_t_img(window, &level_menu->background);
	free_t_img(window, &level_menu->option[0]);
	free_t_img(window, &level_menu->option[1]);
	free_t_img(window, &level_menu->option[2]);
}

void	free_t_main_menu(t_main_menu *menu, t_window *window)
{
	size_t	nb_img;

	nb_img = 0;
	free_t_img(window, &menu->launcher_title);
	free_t_img(window, &menu->launcher_blink);
	while (nb_img < 50)
	{
		if (nb_img < 2)
			free_t_img(window, &menu->option[nb_img]);
		free_t_img(window, &menu->background[nb_img]);
		nb_img++;
	}
}

void	free_t_window(t_window *window)
{
	if (window->win_ptr)
		mlx_destroy_window(window->mlx_ptr, window->win_ptr);
	if (window->mlx_ptr)
		mlx_destroy_display(window->mlx_ptr);
	free(window->mlx_ptr);
}

void	free_t_scene(t_scene *scene, t_window *window)
{
	if (scene->img.ptr)
		mlx_destroy_image(window->mlx_ptr, scene->img.ptr);
}
