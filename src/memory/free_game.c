/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_game.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:35:04 by algadea           #+#    #+#             */
/*   Updated: 2025/04/11 14:59:41 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

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
			free_image(window->mlx_ptr, randy[nb_randy].sprite[nb_sprite]);
			nb_sprite++;
		}
		nb_sprite = 0;
		nb_randy++;
	}
}

static void	free_t_map(t_map *map, t_window *window)
{
	if (map->raw_data)
		ft_free_tab((void **)map->raw_data);
	if (map->map)
		ft_free_tab((void **)map->map);
	if (map->assets_paths)
		ft_free_tab((void **)map->assets_paths);
	free_image(window->mlx_ptr, map->viewmodel);
	free_image(window->mlx_ptr, map->n_texture_wall);
	free_image(window->mlx_ptr, map->s_texture_wall);
	free_image(window->mlx_ptr, map->e_texture_wall);
	free_image(window->mlx_ptr, map->w_texture_wall);
	free_image(window->mlx_ptr, map->floor);
	free_image(window->mlx_ptr, map->ceiling);
	free_image(window->mlx_ptr, map->closed_door);
	free_image(window->mlx_ptr, map->open_door);
}

static void	free_t_thread(t_thread *threads)
{
	(void)threads;
}

void	free_program(t_cub3d *cub3d)
{
	free_t_map(&cub3d->map, &cub3d->window);
	free_t_player(&cub3d->player, &cub3d->window);
	free_t_thread(&cub3d->thread);
	free_t_enemy(cub3d->randy, &cub3d->window);
	free_t_menu(&cub3d->main_menu);
	free_t_menu(&cub3d->level_menu);
	free_t_window(&cub3d->window);
	exit(EXIT_SUCCESS);
}
