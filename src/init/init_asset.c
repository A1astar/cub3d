/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_asset.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:42:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 17:22:55 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static bool	is_matching(char *line, char *str, size_t len)
{
	if (ft_strnstr(line, str, len) && ft_strnstr(line, "./", len))
		return (true);
	return (false);
}

void	mlx_load_img(t_cub3d *cub3d, t_map *map, void *asset_ptr, char *asset_path)
{
	while (*asset_path && *asset_path!= '/')
		asset_path++;
	if (!asset_path || !*(asset_path + 1))
	{
		error_msg(NULL, NULL);
		free_program(cub3d);
	}
	asset_path++;
	asset_ptr = mlx_xpm_file_to_image(asset_ptr, asset_path,map->texture_width, map->texture_height);
	if (!asset_ptr)
	{
		error_msg(NULL, NULL);
		free_program(cub3d);
	}
}

static int	load_assets_and_rgb(t_cub3d *cub3d, t_map *map, char *asset_line)
{
	size_t	line_lengh;

	line_lengh = ft_strlen(asset_line);
	if (is_matching(asset_line, "NO", line_lengh))

	if (is_matching(asset_line, "SO", line_lengh))
	if (is_matching(asset_line, "WO", line_lengh))
	if (is_matching(asset_line, "EO", line_lengh))
	if (is_matching(asset_line, "F", line_lengh))
	if (is_matching(asset_line, "C", line_lengh))
}

void	init_madatory_assets(t_cub3d *cub3d, char **assets_paths)
{
	while (*assets_paths)
	{
		iload_asset(cub3d, cub3d->map, *assets_paths);
		//load_rgb(cub3d, cub3d->map, *assets_paths);
		assets_paths++;
	}
}

void	init_asset(t_cub3d *cub3d)
{
	init_mandatory_assets(cub3d, cub3d->map.assets_paths);
	// init_main_menu(cub3d, &cub3d.scene, &cub3d.main_menu);
}
