/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   extract_assets_paths.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 12:33:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 18:19:16 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static bool	is_not_map_line(char *line)
{
	size_t	line_len;

	line_len = 0;
	if (!line)
		return (false);
	line_len = ft_strlen(line);
	if (ft_strnstr(line, "./", line_len))
		return (true);
	else if (ft_strnstr(line, ",", line_len) && ((ft_strnstr(line, "F",
					line_len) || ft_strnstr(line, "C", line_len))))
		return (true);
	else
		return (false);
}

void	extract_assets_path(t_cub3d *game, char **data)
{
	int i;
	char *buffer;

	i = 0;
	buffer = NULL;
	while (data[i])
	{
		if (is_not_map_line(data[i]))
		{
			buffer = append_line(game, buffer, data[i]);
			buffer = append_line(game, buffer, "\\n");
		}
		i++;
	}
	game->map.assets_paths = ft_split(buffer, "\\n");
	if (!game->map.map)
	{
		error_msg(MEM, "extract_data");
		free_program(game);
	}
}
