/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parse_map.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 12:09:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 12:16:51 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

char	*append_line(t_cub3d *game, char *buffer, char *line)
{
	char	*temp;

	if (!buffer)
		return (ft_strdup(line));
	temp = ft_strjoin(buffer, line);
	if (!temp)
	{
		error_msg(MEM, "append_line");
		free(line);
		free_program(game);
	}
	free(buffer);
	return (temp);
}

int	open_file(t_cub3d *game, char *filename)
{
	int	fd;

	fd = open(filename, O_RDONLY);
	if (fd == -1)
		free_program(game);
	return (fd);
}

int	get_line_count(t_cub3d *game, char *filename)
{
	int		fd;
	int		count;
	char	*line;

	count = 0;
	fd = open_file(game, filename);
	while (1)
	{
		line = get_next_line(fd);
		if (!line)
			break ;
		free(line);
		count++;
	}
	close(fd);
	return (count);
}
////////////MAP/////////////////

bool	is_valid_map_element(char c)
{
	if (c == '1' || c == '0' || c == '\n' || c <= ' ')
		return (true);
	else if (c == 'N' || c == 'S' || c == 'E' || c == 'W')
		return (true);
	else
		return (false);
}

bool	is_map_line(char *line)
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

bool	is_only_map_lines(char **data)
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
	int		i;
	char	*buffer;

	i = 0;
	buffer = NULL;
	while (data[i])
	{
		while (!is_only_map_lines(&data[i]))
			i++;
		buffer = append_line(game, buffer, data[i]);
		buffer = append_line(game, buffer, "\\n");
		i++;
	}
	game->map.map = ft_split(buffer, "\\n");
	if (!game->map.map)
	{
		error_msg(MEM, "extract_map");
		free_program(game);
	}
}
////////////////////////////////////////////


//////////////////ASSETS_PATHS/////////////


bool	is_asset_line(char *line)
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

void	extract_assets_path(t_cub3d *game, char **data)
{
	int		i;
	char	*buffer;

	i = 0;
	buffer = NULL;
	while (data[i])
	{
		if(is_assets_line(data[i]))
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

//////////////////////////////////////////

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

void	parse_map(t_cub3d *game)
{
	ft_printf("\n\nFULL_FILE\n\n");
	print_2d_array_string(game->map.raw_data);
	ft_printf("\n\nMAP\n\n");
	print_2d_array_string(game->map.map);
	ft_printf("\n\nDATAS\n\n");
}
