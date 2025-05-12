/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_mandatory_assets.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:05:00 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/12 18:45:52 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	load_img(t_cub3d *cub3d, t_img *texture, char *asset_path)
{
	check_asset_duplicates(cub3d, texture);
	while (*asset_path && *asset_path != '/')
		asset_path++;
	if (!asset_path || !*(asset_path + 1))
	{
		error_msg("No asset_path found", NULL);
		free_program_and_exit(cub3d);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
	asset_path++;
	pthread_mutex_lock(&cub3d->lock);
	texture->ptr = mlx_xpm_file_to_image(cub3d->window.mlx_ptr, asset_path,
			&texture->width, &texture->height);
	if (!texture->ptr)
	{
		error_msg("Wrong asset address", NULL);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
	pthread_mutex_unlock(&cub3d->lock);
	texture->addr = mlx_get_data_addr(texture->ptr, &texture->bpp,
			&texture->size_line, &texture->endian);
	if (!texture->addr)
	{
		error_msg("Cannot load asset", NULL);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

static void	extract_rgb_code(t_cub3d *cub3d, int *rgb_tab, char *line)
{
	char	**temp_tab;

	temp_tab = NULL;
	while (*line && !ft_isdigit(*line))
		line++;
	if (!line || !*(line + 1))
		return ;
	temp_tab = ft_split(line, " ,");
	if (!temp_tab)
	{
		error_msg(MEM, "extract_rgb_code");
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
	if (ft_tabsize((void **)temp_tab) != 3 || !is_rgb_code(temp_tab))
	{
		error_msg("wrong rgb format", NULL);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
	rgb_tab[0] = ft_atoi(temp_tab[0]);
	rgb_tab[1] = ft_atoi(temp_tab[1]);
	rgb_tab[2] = ft_atoi(temp_tab[2]);
	ft_free_tab((void **)temp_tab);
}

static void	load_rgb(t_cub3d *cub3d, t_map *map, char *asset_line,
		size_t line_lengh)
{
	if (ft_strnstr(asset_line, "F", line_lengh))
		extract_rgb_code(cub3d, map->floor_rgb, asset_line);
	if (ft_strnstr(asset_line, "C", line_lengh))
		extract_rgb_code(cub3d, map->ceilling_rgb, asset_line);
}

static void	load_assets(t_cub3d *cub3d, t_textures *textures, char *asset_line,
		size_t line_lengh)
{
	if (ft_strnstr(asset_line, "NO", line_lengh))
		load_img(cub3d, &textures->n_wall, asset_line);
	else if (ft_strnstr(asset_line, "SO", line_lengh))
		load_img(cub3d, &textures->s_wall, asset_line);
	else if (ft_strnstr(asset_line, "WE", line_lengh))
		load_img(cub3d, &textures->w_wall, asset_line);
	else if (ft_strnstr(asset_line, "EA", line_lengh))
		load_img(cub3d, &textures->e_wall, asset_line);
}

// void	init_mandatory_assets(t_cub3d *cub3d, char **assets_paths)
// {
// 	size_t	line_lengh;

// 	line_lengh = 0;
// 	while (*assets_paths)
// 	{
// 		line_lengh = ft_strlen(*assets_paths);
// 		if (is_asset_line(*assets_paths, line_lengh))
// 			load_assets(cub3d, &cub3d->textures, *assets_paths, line_lengh);
// 		if (is_rgb_line(*assets_paths, line_lengh))
// 			load_rgb(cub3d, &cub3d->map, *assets_paths, line_lengh);
// 		assets_paths++;
// 	}
// 	if (mandatory_assets_are_missing(&cub3d->textures))
// 	{
// 		error_msg("Missing assets", NULL);
// 		free_program(cub3d);
// 	}
// }

void	init_mandatory_assets(t_cub3d *cub3d)
{
	size_t	line_lengh;
	char	**assets_paths;

	assets_paths = cub3d->map.assets_paths;
	line_lengh = 0;
	while (*assets_paths)
	{
		line_lengh = ft_strlen(*assets_paths);
		if (is_asset_line(*assets_paths, line_lengh))
			load_assets(cub3d, &cub3d->textures, *assets_paths, line_lengh);
		if (is_rgb_line(*assets_paths, line_lengh))
			load_rgb(cub3d, &cub3d->map, *assets_paths, line_lengh);
		assets_paths++;
	}
	if (mandatory_assets_are_missing(&cub3d->textures))
	{
		error_msg("Missing assets", NULL);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}
