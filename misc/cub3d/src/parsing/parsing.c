/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/30 19:16:29 by agadea            #+#    #+#             */
/*   Updated: 2024/07/19 20:02:40 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	parse_elements(t_cub3d *cub3d)
{
	(void)cub3d;
}

// bool	is_closed_by_wall(t_map *map, uint64_t x, uint64_t y)
// {
// 	if (IS_OUT_OF_MAP || (map->data[y][x] == '0'
// 		&& (y == 0 || y == map->height
// 			|| x == 0 || x == map->width)))
// 		return (true);
// 	return (false);
// }

// void	check_wall_closing(t_cub3d *cub3d, uint64_t x, uint64_t y)
// {
// 	if (!is_closed_by_wall(cub3d->map, x, y))
// 		print_error_then_exit_program(cub3d, err_map_format);
// 	if (cub3d->map->data[y][x] == 'X'
// 		|| cub3d->map->data[y][x] == '1')
// 		return ;
// 	if (cub3d->map->data[y][x] == '0')
// 		cub3d->map->data[y][x] = 'X';
// 	check_wall_closing(cub3d, x + 1, y);
// 	check_wall_closing(cub3d, x - 1, y);
// 	check_wall_closing(cub3d, x, y + 1);
// 	check_wall_closing(cub3d, x, y - 1);
// }

void	check_from_first_line(t_cub3d *cub3d, char *line)
{
	int	i;

	i = 0;
	while (line[i])
	{
		if (IS_NOT_CLOSED_BY_WALL)
			print_error_then_exit_program(cub3d, err_map_format);
		i++;
	}
}

void	check_from_last_line(t_cub3d *cub3d, char *line, char *previous_line)
{
	int	i;
	int	previous_line_length;

	i = 0;
	previous_line_length = ft_strlen(previous_line);
	while (line[i])
	{
		if (IS_NOT_CLOSED_BY_WALL)
			print_error_then_exit_program(cub3d, err_map_format);
		i++;
	}
	if (previous_line_length > i)
	{
		i++;
		while (previous_line[i])
		{
			if (IS_NOT_CLOSED_BY_WALL)
				print_error_then_exit_program(cub3d, err_map_format);
			i++;
		}
	}
}

void	check_line(t_cub3d *cub3d, char *line, char *previous_line)
{
	int	i;
	int	line_length;
	int	previous_line_length;

	line_length = ft_strlen(line);
	previous_line_length = ft_strlen(previous_line);
	if (line[0] != '1' || line[line_length - 1] != '1')
		print_error_then_exit_program(cub3d, err_map_format);
	i = 1;
	while (line[i] && i < previous_line_length)
		i++;
	while (line[i])
	{
		if (line[i] != '1')
			print_error_then_exit_program(cub3d, err_map_format);
		i++;
	}
}

void	check_map_wall(t_cub3d *cub3d, t_map *map)
{
	uint64_t	i;

	i = 0;
	while (map->data[i])
	{
		if (i == MAP_FIRST_LINE)
			check_from_first_line(cub3d, map->data[i]);
		else if (i == MAP_LAST_LINE)
			check_from_last_line(cub3d, map->data[i], PREVIOUS_LINE);
		else
			check_line(cub3d, map->data[i], PREVIOUS_LINE);
		i++;
	}
}

void	parse_extracted_data(t_cub3d *cub3d)
{
	parse_elements(cub3d);
	check_map_wall(cub3d, cub3d->map);
	print_map_data(cub3d->map->data);
}
