/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_game.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:35:04 by algadea           #+#    #+#             */
/*   Updated: 2025/04/17 16:43:50 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	free_t_textures(t_textures *textures, t_window *window)
{
	free_t_img(window, &textures->n_wall);
	free_t_img(window, &textures->s_wall);
	free_t_img(window, &textures->e_wall);
	free_t_img(window, &textures->w_wall);
	free_t_img(window, &textures->floor);
	free_t_img(window, &textures->ceiling);
	free_t_img(window, &textures->o_door);
	free_t_img(window, &textures->c_door);
	free_t_img(window, &textures->viewmodel);
}

static void	free_t_enemy(t_enemy *randy, t_window *window)
{
	size_t	nb_randy;
	size_t	nb_sprite;

	nb_randy = 0;
	nb_sprite = 0;
	while (nb_randy < 4)
	{
		while (nb_sprite < 16)
		{
			free_t_img(window, &randy[nb_randy].sprite[nb_sprite]);
			nb_sprite++;
		}
		nb_sprite = 0;
		nb_randy++;
	}
}

static void	free_t_map(t_map *map)
{
	if (map->raw_data)
		ft_free_tab((void **)map->raw_data);
	if (map->map)
		ft_free_tab((void **)map->map);
	if (map->assets_paths)
		ft_free_tab((void **)map->assets_paths);
}

void	free_program(t_cub3d *cub3d)
{
	free_t_textures(&cub3d->textures, &cub3d->window);
	free_t_map(&cub3d->map);
	free_t_enemy(cub3d->randy, &cub3d->window);
	free_t_main_menu(&cub3d->main_menu, &cub3d->window);
	// free_t_level_menu(&cub3d->level_menu);
	free_t_scene(&cub3d->scene, &cub3d->window);
	free_t_window(&cub3d->window);
	exit(EXIT_SUCCESS);
}
