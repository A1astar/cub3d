/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_game.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 03:35:04 by algadea           #+#    #+#             */
/*   Updated: 2025/05/14 13:17:34 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	free_t_viewmodel(t_viewmodel *viewmodel, t_window *window)
{
	free_t_img(window, &viewmodel->normal_stand);
	free_t_img(window, &viewmodel->trip_stand);
	free_t_img(window, &viewmodel->normal_sword_sprite[0]);
	free_t_img(window, &viewmodel->normal_sword_sprite[1]);
	free_t_img(window, &viewmodel->normal_sword_sprite[2]);
	free_t_img(window, &viewmodel->normal_sword_sprite[3]);
	free_t_img(window, &viewmodel->normal_wand_sprite[0]);
	free_t_img(window, &viewmodel->normal_wand_sprite[1]);
	free_t_img(window, &viewmodel->normal_wand_sprite[2]);
	free_t_img(window, &viewmodel->normal_wand_sprite[3]);
	free_t_img(window, &viewmodel->trip_sword_sprite[0]);
	free_t_img(window, &viewmodel->trip_sword_sprite[1]);
	free_t_img(window, &viewmodel->trip_sword_sprite[2]);
	free_t_img(window, &viewmodel->trip_sword_sprite[3]);
	free_t_img(window, &viewmodel->trip_cig_sprite[0]);
	free_t_img(window, &viewmodel->trip_cig_sprite[1]);
	free_t_img(window, &viewmodel->trip_cig_sprite[2]);
	free_t_img(window, &viewmodel->trip_cig_sprite[3]);
}

static void	free_t_enemy(t_enemy *randy, t_window *window)
{
	size_t	nb_randy;

	nb_randy = 0;
	while (nb_randy < 4)
		free_t_img(window, &randy[nb_randy++].sprite);
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

void	free_program_and_exit(t_cub3d *cub3d, int exit_code)
{
	mlx_mouse_show(&cub3d->window.mlx_ptr, &cub3d->window.win_ptr);
	free_t_textures(&cub3d->textures, &cub3d->item, &cub3d->window);
	free_t_viewmodel(&cub3d->player.viewmodel, &cub3d->window);
	free_t_map(&cub3d->map);
	free_t_enemy(cub3d->randy, &cub3d->window);
	free_t_level_menu(&cub3d->level_menu, &cub3d->window);
	free_t_main_menu(&cub3d->main_menu, &cub3d->window);
	free_t_scene(&cub3d->scene, &cub3d->window);
	free_t_window(&cub3d->window);
	exit(exit_code);
}
