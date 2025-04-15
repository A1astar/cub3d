/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_game.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:35:04 by algadea           #+#    #+#             */
/*   Updated: 2025/04/15 18:42:01 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	free_t_textures(t_textures *textures, t_window *window)
{
	if (textures->n_texture_wall)
		free_image(window->mlx_ptr, textures->n_texture_wall);
	if (textures->s_texture_wall)
		free_image(window->mlx_ptr, textures->s_texture_wall);
	if (textures->e_texture_wall)
		free_image(window->mlx_ptr, textures->e_texture_wall);
	if (textures->w_texture_wall)
		free_image(window->mlx_ptr, textures->w_texture_wall);
	if (textures->floor)
		free_image(window->mlx_ptr, textures->floor);
	if (textures->ceiling)
		free_image(window->mlx_ptr, textures->ceiling);
	if (textures->open_door)
		free_image(window->mlx_ptr, textures->closed_door);
	if (textures->open_door)
		free_image(window->mlx_ptr, textures->open_door);
	if (textures->viewmodel)
		free_image(window->mlx_ptr, textures->viewmodel);
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
			free_image(window->mlx_ptr, randy[nb_randy].sprite[nb_sprite]);
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

static void	free_t_thread(t_thread *threads)
{
	(void)threads;
}

void	free_program(t_cub3d *cub3d)
{
	free_t_textures(&cub3d->textures, &cub3d->window);
	free_t_map(&cub3d->map);
	free_t_thread(&cub3d->thread);
	free_t_enemy(cub3d->randy, &cub3d->window);
	free_t_main_menu(&cub3d->main_menu, &cub3d->window);
	// free_t_level_menu(&cub3d->level_menu);
	free_t_scene(&cub3d->scene, &cub3d->window);
	free_t_window(&cub3d->window);
	exit(EXIT_SUCCESS);
}
