/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parse_map.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 12:09:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/08 20:09:45 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

char	*append_line(t_cub3d *game, char *buffer, char *line)
{
	char	*temp;
	if(!buffer)
		return(ft_strdup(line));
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
	return fd;
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

bool is_valid_map_element(char c)
{
	//todo
}

bool is_map_line(char *line)
{
	while(*line && *line <= ' ')
		line++;
	if(!line)
		return(false);
	while(*line)
	{
		if(!is_valid_map_element(line))
			return (false);
	}
	return (true); 
}

void	extract_map(t_cub3d *game, char **data)
{
	int	i;
	char *buffer;

	i = 0;
	while(data[i])
	{
		if(is_map_line(data[i]) && (is_map_line(data[i]) || !data[i + 1]))
				buffer = append_line(game, buffer, data[i]);
		i++;
	}
	game->map.map = ft_split(buffer, '\n');
	if(game->map.map)
	{
		error_msg(MEM, "extract_data");
		free_program(game);
	}
}

void	extract_data(t_cub3d *game, char *filename)
{
	int		fd;
	int		line_count;
	int		i;

	line_count = get_line_count(game, filename);
	game->map.data = ft_calloc(line_count + 1, sizeof(char *));
	if (!game->map.data)
		free_program(game);
	fd = open_file(game, filename);
	i = 0;
	while (i < line_count)
	{
		game->map.data[i] = get_next_line(fd);
		if (!game->map.data[i] && i < line_count)
			free_program(game);
		i++;
	}
	close(fd);
	extract_map(game, game->map.data);
}

void	check_bonus(char *line, t_map *map)
{
	if (ft_strncmp("BONUS\n", line, ft_strlen(line)))
		map->bonus = true;
}

void	parse_map(t_cub3d *game)
{
	print_2d_array_string(game->map.data);
}
