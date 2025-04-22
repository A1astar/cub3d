/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   extract_map.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 12:32:43 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/22 19:15:12 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static bool	is_valid_map_element(char c)
{
	if (c == '1' || c == '0' || c == '\n' || c <= ' ')
		return (true);
	else if (c == 'N' || c == 'S' || c == 'E' || c == 'W' || c == 'R'
		|| c == 'O' || c == 'C')
		return (true);
	else
		return (false);
}

static bool	is_map_line(char *line)
{
	if (!line)
		return (true);
	while (*line && *line <= ' ')
		line++;
	if (!line)
		return (false);
	while (*line)
	{
		if (!is_valid_map_element(*line))
			return (false);
		line++;
	}
	return (true);
}

static bool	is_only_map_lines(char **data)
{
	int	i;

	i = 0;
	while (data[i])
	{
		if (!is_map_line(data[i]))
			return (false);
		i++;
	}
	return (true);
}

void	extract_map(t_cub3d *game, char **data)
{
	char	*buffer;

	buffer = NULL;
	while (*data && !is_only_map_lines(&(*data)))
		data++;
	if (!*data)
	{
		error_msg("Empty map", NULL);
		free_program(game);
	}
	game->map.map = dup_tab(&(*data), ft_tabsize((void **)&(*data)));
	free(buffer);
	if (!game->map.map)
	{
		error_msg(MEM, "extract_map");
		free_program(game);
	}
}
