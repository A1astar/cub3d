/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_map.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/13 21:49:39 by agadea            #+#    #+#             */
/*   Updated: 2024/08/25 12:23:50 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	get_map_height(t_cub3d *cub3d , char **data)
{
	int	height;

	height = 0;
	while (data[height])
	{
		if (ft_strlen(data[height]) == 0 && data[height + 1] != 0)
			return (0);
		height++;
	}
	if (height == 0)
		print_error_then_exit_program(cub3d, err_map_format);
	return (height);
}

int	set_index_at_map_start_line(t_cub3d *cub3d)
{
	int	index;

	index = cub3d->file->offset;
	while (cub3d->file->data[index] && ft_strlen(cub3d->file->data[index]) == 0)
		index++;
	return (index);
}

bool	is_start_position(char c)
{
	if (c == 'N' || c == 'S' || c == 'E' || c == 'W')
		return (true);
	return (false);
}

int	get_player_orientation(char c)
{
	if (c == 'E')
		return (0);
	if (c == 'N')
		return (90);
	if (c == 'W')
		return (180);
	return (270);
}

void	try_to_get_player_start_position(t_cub3d *cub3d, char *line, uint64_t y, bool *flag)
{
	int	i;

	i = 0;
	while (line[i])
	{
		if (is_start_position(line[i]))
		{
			if (*flag == true)
				print_error_then_exit_program(cub3d, err_map_starting_pos);
			cub3d->player->pos_x = (double)i + 0.30;
			cub3d->player->pos_y = (double)y + 0.30;
			cub3d->player->angle = get_player_orientation(line[i]);
			*flag = true;
		}
		else if (line[i] != '0' && line[i] != '1' && !is_space(line[i]))
			print_error_then_exit_program(cub3d, err_map_format);
		i++;
	}
}

void	extract_map(t_cub3d *cub3d)
{
	int			i;
	int			j;
	bool		flag;
	uint64_t	width;

	i = set_index_at_map_start_line(cub3d);
	cub3d->map->height = get_map_height(cub3d, &cub3d->file->data[i]);
	cub3d->map->data = malloc(sizeof(char *) * (cub3d->map->height + 1));
	if (!cub3d->map->data)
		print_error_then_exit_program(cub3d, err_malloc);
	j = 0;
	flag = false;
	cub3d->map->width = 0;
	while (cub3d->file->data[i])
	{
		cub3d->map->data[j] = ft_strdup(cub3d->file->data[i]);
		try_to_get_player_start_position(cub3d, cub3d->map->data[j], j, &flag);
		width = ft_strlen(cub3d->map->data[j]);
		if (width > cub3d->map->width)
			cub3d->map->width = width;
		j++;
		i++;
	}
	cub3d->map->data[j] = 0;
	close(cub3d->file->fd);
}
