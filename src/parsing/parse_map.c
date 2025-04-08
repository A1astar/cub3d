/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parse_map.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 12:09:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/08 15:55:41 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

char	*append_line(char *buffer, char *line)
{
	char	*temp;

	temp = ft_strjoin(buffer, line);
	if (!temp)
		return (error_msg(MEM, "append_line"), free(buffer), NULL);
	free(buffer);
	return (temp);
}
char	**put_map(char *file)
{
	char	*buffer;
	char	*line;
	char	**map;

	line = NULL;
	buffer = NULL;
	while (1)
	{
		line = get_next_line(file);
		if (!line)
			break ;
		buffer = append_line(buffer, line);
		if (!buffer)
			return (error_msg(MEM, "put_map(1)"), free(line), NULL);
	}
	map = ft_split(buffer, "\n");
	if (!map)
		return (error_msg(MEM, "put_map(2)"), free(buffer), NULL);
	return (map);
}

void	check_bonus(char *line, t_map *map)
{
	if (ft_strncmp("BONUS\n", line, ft_strlen(line)))
		map->bonus = true;
}

int	parse_map(char *file, t_cub3d *game)
{
	char	*line;
	char	**map;

	map = put_map(file);
	if (!map)
		return (-1);
	check_bonus(map[0], &game->map);
	if (!is_valid_map(map))
		return (-1);
	if (load_mandatory_assets(map, game) == -1)
		return (-1);
	if (load_bonus_assets(game) == -1)
		return (-1);
	return (0);
}
