/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_graphics.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 14:50:38 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/11 12:18:38 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	free_image(void *mlx, void *image)
{
	if (image)
		mlx_destroy_image(mlx, image);
}

void	free_t_img(t_img *img)
{
	if (img->ptr)
		free(img->ptr);
	if (img->addr)
		free(img->addr);
	if (img->pixel)
		free(img->pixel);
}

void	free_t_menu(t_menu *menu)
{
	size_t	nb_img;

	nb_img = 0;
	while (nb_img < 3)
	{
		free_t_img(&menu->img[nb_img]);
		nb_img++;
	}
}

void	free_t_window(t_window *window)
{
	if (window->win_ptr)
		mlx_destroy_window(window->mlx_ptr, window->win_ptr);
	if (window->mlx_ptr)
		mlx_destroy_display(window->mlx_ptr);
	// free_t_img(&window->mlx_ptr);
}

void	free_t_player(t_player *player, t_window *window)
{
	free_image(window->mlx_ptr, player->pov);
}
