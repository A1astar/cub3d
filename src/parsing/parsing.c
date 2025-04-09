/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 12:09:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 15:58:26 by algadea          ###   ########.fr       */
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

void	check_bonus(char *line, t_map *map)
{
	if (ft_strncmp("BONUS\n", line, ft_strlen(line)))
		map->bonus = true;
}

void	parsing(t_cub3d *game, char *argv)
{
	extract_data(game, argv);
	ft_printf("\n\nFULL_FILE\n\n");
	print_2d_array_string(game->map.raw_data);
	ft_printf("\n\nMAP\n\n");
	print_2d_array_string(game->map.map);
	ft_printf("\n\nDATAS\n\n");
	print_2d_array_string(game->map.assets_paths);
}
