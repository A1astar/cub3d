/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_assets_utils.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 18:06:53 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/22 14:43:48 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_asset_line(char *line, size_t len)
{
	if (ft_strnstr(line, "./", len))
		return (true);
	return (false);
}

bool	is_rgb_line(char *line, size_t len)
{
	if (ft_strnstr(line, ",", len))
		return (true);
	return (false);
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

void	check_asset_duplicates(t_cub3d *cub3d, t_img *texture)
{
	if (texture->ptr)
	{
		error_msg("Asset duplication", NULL);
		free_program(cub3d);
	}
}

bool	mandatory_assets_are_missing(t_textures *textures)
{
	if (!textures->n_wall.ptr || !textures->s_wall.ptr || !textures->e_wall.ptr
		|| !textures->w_wall.ptr)
		return (true);
	else
		return (false);
}
