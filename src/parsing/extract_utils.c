/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   extract_utils.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 12:37:40 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/12 18:53:15 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

char	*append_line(t_cub3d *cub3d, char *buffer, char *line)
{
	char	*temp;

	if (!line)
		return (buffer);
	if (!buffer)
		return (ft_strdup(line));
	temp = ft_strjoin(buffer, line);
	if (!temp)
	{
		error_msg(MEM, "append_line");
		free(buffer);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
	free(buffer);
	return (temp);
}

int	open_file(t_cub3d *cub3d, char *filename)
{
	int	fd;

	fd = open(filename, O_RDONLY);
	if (fd == -1)
		free_program_and_exit(cub3d, EXIT_FAILURE);
	return (fd);
}

int	get_line_count(t_cub3d *cub3d, char *filename)
{
	int		fd;
	int		count;
	char	*line;

	count = 0;
	fd = open_file(cub3d, filename);
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
