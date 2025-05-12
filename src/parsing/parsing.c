/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 12:09:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/12 18:52:31 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	extract_data(t_cub3d *cub3d, char *filename)
{
	int	fd;
	int	line_count;
	int	i;

	line_count = get_line_count(cub3d, filename);
	cub3d->map.raw_data = ft_calloc(line_count + 1, sizeof(char *));
	if (!cub3d->map.raw_data)
		free_program_and_exit(cub3d, EXIT_FAILURE);
	fd = open_file(cub3d, filename);
	i = 0;
	while (i < line_count)
	{
		cub3d->map.raw_data[i] = get_next_line(fd);
		if (!cub3d->map.raw_data[i] && i < line_count)
			free_program_and_exit(cub3d, EXIT_FAILURE);
		i++;
	}
	close(fd);
	extract_map(cub3d, cub3d->map.raw_data);
	extract_assets_path(cub3d, cub3d->map.raw_data);
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
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
	extract_data(cub3d, argv);
	check_map(cub3d, &cub3d->map);
}
