/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_graphics.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 14:50:38 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/10 19:29:38 by algadea          ###   ########.fr       */
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

void	free_t_scene(t_scene *scene)
{
	if (scene->win_ptr)
		mlx_destroy_window(scene->mlx_ptr, scene->win_ptr);
	if (scene->mlx_ptr)
		mlx_destroy_display(scene->mlx_ptr);
	free_t_img(&scene->img);
}

void	free_t_player(t_player *player, t_scene *scene)
{
	free_image(scene->mlx_ptr, player->pov);
}
