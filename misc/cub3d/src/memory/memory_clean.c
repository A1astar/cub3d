/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   memory_clean.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/30 19:00:07 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 13:11:17 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	reset_map_pointer(t_map *map)
{
	map->no_texture = NULL;
	map->so_texture = NULL;
	map->we_texture = NULL;
	map->ea_texture = NULL;
	map->data = NULL;
}

void	free_map(t_map *map)
{
	if (map->no_texture)
		free_xpm_file(map->no_texture);
	if (map->so_texture)
		free_xpm_file(map->so_texture);
	if (map->we_texture)
		free_xpm_file(map->we_texture);
	if (map->ea_texture)
		free_xpm_file(map->ea_texture);
	if (map->data)
		free_2d_char(map->data);
	reset_map_pointer(map);
	free(map);
	map = NULL;
}

void	free_file(t_file *file)
{
	if (file->no_filename)
		free(file->no_filename);
	if (file->so_filename)
		free(file->so_filename);
	if (file->we_filename)
		free(file->we_filename);
	if (file->ea_filename)
		free(file->ea_filename);
	if (file->data)
		free_2d_char(file->data);
	file->no_filename = NULL;
	file->so_filename = NULL;
	file->we_filename = NULL;
	file->ea_filename = NULL;
	free(file);
	file = NULL;
}

void	free_scene(t_scene *scene)
{
	if (scene->img)
		free_img(scene->img);
	free(scene);
	scene = NULL;
}

void	free_main_menu(t_main_menu *main_menu)
{
	if (main_menu->xpm)
		free_xpm_file(main_menu->xpm);
	free(main_menu);
	main_menu = NULL;
}

void	clean_program(t_cub3d *cub3d)
{
	if (cub3d->map)
		free_map(cub3d->map);
	if (cub3d->file)
		free_file(cub3d->file);
	if (cub3d->scene)
		free_scene(cub3d->scene);
	if (cub3d->player)
		free(cub3d->player);
	if (cub3d->window)
		free(cub3d->window);
	if (cub3d->raycast)
		free(cub3d->raycast);
	if (cub3d->minimap)
		free(cub3d->minimap);
	if (cub3d->main_menu)
		free_main_menu(cub3d->main_menu);
}
