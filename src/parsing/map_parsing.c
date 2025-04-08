/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_parsing.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 18:05:02 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/08 03:03:35 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

bool	is_cub_file(char *file)
{
	if (!ft_strnstr(file, ".cub", ft_strlen(file)))
		return (false);
	return (true);
}

bool	everything_loaded(t_map *map)
{
	if (!map->n_wall)
		return (false);
	else if (!map->s_wall)
		return (false);
	else if (!map->e_wall)
		return (false);
	else if (!map->w_wall)
		return (false);
	else if (!map->ceiling)
		return (false);
	else if (!map->floor)
		return (false);
	else if (!map->door)
		return (false);
	else
		return (true);
}

/*WIP*/
int	load_textures(char *file, t_map *map)
{
	char	*line;
	int		map_fd;

	line = NULL;
	map_fd = open(file, O_RDONLY);
	if (map_fd < 0)
		return (error_msg(OPEN, file), -1);
	while (1)
	{
		line = get_next_line(map_fd);
		if (!line)
			break ;
		/*check line and load text*/
	}
	if (!everyhing_loaded(map))
		return (-1);
	return (0);
}

/*WIP*/
int	map_checking(char *file, t_cub3d *game)
{
	char	*line;
	char	**map;

	if (load_textures(file, &game->map) == -1)
		return (-1);
}

int	map_parsing(int argc, char **argv, t_cub3d *game)
{
	if (argc != 2)
		return (error_msg(ARG, NULL), -1);
	if (!is_cub_file(argv[2]))
		return (error_msg(MAP_EXT, NULL), -1);
	if (map_checking(argv[2], game) == -1)
		return (-1);
}
