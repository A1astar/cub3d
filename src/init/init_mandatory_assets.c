/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_mandatory_assets.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:05:00 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/11 14:59:56 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static bool	mandatory_assets_are_missing(t_map *map)
{
	if (!map->n_texture_wall || !map->s_texture_wall || !map->e_texture_wall
		|| !map->w_texture_wall)
		return (true);
	else
		return (false);
}

static void	mlx_load_img(t_cub3d *cub3d, t_map *map, void **asset_ptr,
		char *asset_path)
{
	while (*asset_path && *asset_path != '/')
		asset_path++;
	if (!asset_path || !*(asset_path + 1))
	{
		error_msg("No asset_path found", NULL);
		free_program(cub3d);
	}
	asset_path++;
	*asset_ptr = mlx_xpm_file_to_image(cub3d->window.mlx_ptr, asset_path,
			&map->texture_width, &map->texture_height);
	if (!asset_ptr)
	{
		error_msg("Wrong asset address", NULL);
		free_program(cub3d);
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
		free_program(cub3d);
	}
	if (ft_tabsize((void **)temp_tab) != 3 || !is_rgb_code(temp_tab))
	{
		error_msg("wrong rgb format", NULL);
		free_program(cub3d);
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

static void	load_assets(t_cub3d *cub3d, t_map *map, char *asset_line,
		size_t line_lengh)
{
	if (ft_strnstr(asset_line, "NO", line_lengh))
		mlx_load_img(cub3d, map, &map->n_texture_wall, asset_line);
	else if (ft_strnstr(asset_line, "SO", line_lengh))
		mlx_load_img(cub3d, map, &map->s_texture_wall, asset_line);
	else if (ft_strnstr(asset_line, "WE", line_lengh))
		mlx_load_img(cub3d, map, &map->w_texture_wall, asset_line);
	else if (ft_strnstr(asset_line, "EA", line_lengh))
		mlx_load_img(cub3d, map, &map->e_texture_wall, asset_line);
}

void	init_mandatory_assets(t_cub3d *cub3d, char **assets_paths)
{
	size_t	line_lengh;

	line_lengh = 0;
	while (*assets_paths)
	{
		line_lengh = ft_strlen(*assets_paths);
		if (is_asset_line(*assets_paths, line_lengh))
			load_assets(cub3d, &cub3d->map, *assets_paths, line_lengh);
		if (is_rgb_line(*assets_paths, line_lengh))
			load_rgb(cub3d, &cub3d->map, *assets_paths, line_lengh);
		assets_paths++;
	}
	if (mandatory_assets_are_missing(&cub3d->map))
	{
		error_msg("Missing assets", NULL);
		free_program(cub3d);
	}
}
