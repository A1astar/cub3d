/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   extract_assets_paths.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 12:33:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/12 18:54:00 by algadea          ###   ########.fr       */
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

void	extract_assets_path(t_cub3d *cub3d, char **data)
{
	char	*buffer;

	buffer = NULL;
	while (*data)
	{
		if (is_not_map_line(*data))
			buffer = append_line(cub3d, buffer, *data);
		data++;
	}
	if (!buffer)
	{
		error_msg(TEXT, NULL);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
	cub3d->map.assets_paths = ft_split(buffer, "\n");
	free(buffer);
	if (!cub3d->map.map)
	{
		error_msg(MEM, "extract_data");
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}
