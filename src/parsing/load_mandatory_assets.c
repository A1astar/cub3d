/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   load_mandatory_assets.c                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 12:08:07 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 11:18:28 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static bool	no_assets_missing(t_map *map)
{
	if (!map->n_texture_wall)
		return (false);
	if (!map->s_texture_wall)
		return (false);
	if (!map->e_texture_wall)
		return (false);
	if (!map->w_texture_wall)
		return (false);
	if (!map->ceilling_rgb && !map->bonus)
		return (false);
	if (!map->floor_rgb && !map->bonus)
		return (false);
	return (true);
}

static int	load_asset(void *asset_ptr, char *line, char *name)
{
	while (*line && *line != '/')
		line++;
	if (!line || !*(line + 1))
		return (-1);
	line++;
	asset_ptr = mlx_xpm_file_to_image(); // TODO
	if (!asset_ptr)
		return (error_msg(TEXT, name), -1);
	return (0);
}

bool	is_rgb_code(char **tab)
{
	int	value;

	value = 0;
	while (*tab)
	{
		value = ft_atoi(*tab);
		if (value < 0 || value > 255)
			return (false);
		tab++;
	}
	return (true);
}

static int	load_rgb(char **element, char *line)
{
	while (*line && !ft_isdigit(*line))
		line++;
	if (!line || !*(line + 1))
		return (-1);
	element = ft_split(line, " ,");
	if (!element)
		return (error_msg(MEM, "load_rgb"), -1);
	if (ft_tabsize(element) != 3 || !is_rgb_code(element))
		return (error_msg(RGB, NULL), -1);
	return (0);
}

static int	search_load_assets(char *line, t_map *map)
{
	size_t	line_len;
	char	*asset_path;

	line_len = ft_strlen(line);
	asset_path = NULL;
	asset_path = ft_strnstr(line, "NO", line_len);
	if (asset_path)
		return (load_asset(map->n_texture_wall, asset_path, "n_wall"));
	asset_path = ft_strnstr(line, "SO", line_len);
	if (asset_path)
		return (load_asset(map->s_texture_wall, asset_path, "s_wall"));
	asset_path = ft_strnstr(line, "WE", line_len);
	if (asset_path)
		return (load_asset(map->w_texture_wall, asset_path, "w_wall"));
	asset_path = ft_strnstr(line, "EA", line_len);
	if (asset_path)
		return (load_asset(map->e_texture_wall, asset_path, "e_wall"));
	asset_path = ft_strnstr(line, "F", line_len);
	if (asset_path)
		return (load_rgb(map->floor_rgb, asset_path));
	asset_path = ft_strnstr(line, "C", line_len);
	if (asset_path)
		return (load_rgb(map->ceilling_rgb, asset_path));
	return (0);
}

int	load_mandatory_assets(char **map_tab, t_cub3d *game)
{
	while (*map_tab)
	{
		if (search_load_assets(*map_tab, &game->map) == -1)
			return (-1);
		map_tab++;
	}
	if (!no_asset_missing(game))
		return (error_msg(MISS_TEXT, NULL), -1);
	return (0);
}
