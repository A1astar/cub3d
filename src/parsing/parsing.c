/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 12:09:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/22 12:27:59 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	extract_data(t_cub3d *game, char *filename)
{
	int	fd;
	int	line_count;
	int	i;

	line_count = get_line_count(game, filename);
	game->map.raw_data = ft_calloc(line_count + 1, sizeof(char *));
	if (!game->map.raw_data)
		free_program(game);
	fd = open_file(game, filename);
	i = 0;
	while (i < line_count)
	{
		game->map.raw_data[i] = get_next_line(fd);
		if (!game->map.raw_data[i] && i < line_count)
			free_program(game);
		i++;
	}
	close(fd);
	extract_map(game, game->map.raw_data);
	extract_assets_path(game, game->map.raw_data);
}

bool	got_right_suffix(char *file)
{
	if (ft_strnstr(file, ".cub", ft_strlen(file)))
		return (true);
	return (false);
}

void	parsing(t_cub3d *cub3d, char *argv)
{
	if (!got_right_suffix(argv))
	{
		error_msg(MAP_EXT, NULL);
		free_program(cub3d);
	}
	extract_data(cub3d, argv);
	check_map(cub3d, &cub3d->map);
}
