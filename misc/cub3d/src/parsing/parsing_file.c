/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_file.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/03 10:10:27 by agadea            #+#    #+#             */
/*   Updated: 2024/07/30 13:13:58 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	open_file(t_cub3d *cub3d, char *filename)
{
	cub3d->file->fd = open(filename, O_RDONLY);
	if (cub3d->file->fd == -1)
	{
		print_error_then_exit_program(cub3d, fileopen);
		clean_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

int	get_file_length(t_cub3d *cub3d, char *filename)
{
	int		i;
	char	*line;

	i = 0;
	open_file(cub3d, filename);
	while (1)
	{
		line = get_next_line(cub3d->file->fd);
		if (!line)
			break ;
		free(line);
		i++;
	}
	close(cub3d->file->fd);
	return (i);
}

void	extract_file(t_cub3d *cub3d, char *filename)
{
	int		i;
	char	*line;
	int		length;

	length = get_file_length(cub3d, filename);
	cub3d->file->data = malloc(sizeof(char *) * (length + 1));
	if (!cub3d->file->data)
		print_error_then_exit_program(cub3d, err_malloc);
	i = 0;
	open_file(cub3d, filename);
	while (1)
	{
		line = get_next_line(cub3d->file->fd);
		if (line == NULL)
			break ;
		if (i == length - 1)
			cub3d->file->data[i] = ft_substr(line, 0, ft_strlen(line));
		else
			cub3d->file->data[i] = ft_substr(line, 0, ft_strlen(line) - 1);
		free(line);
		i++;
	}
	cub3d->file->data[i] = 0;
	close(cub3d->file->fd);
}

void	extract_elements(t_cub3d *cub3d)
{
	int		i;
	int		texture_id;
	char	*id;

	i = 0;
	texture_id = -1;
	cub3d->file->mask = 0;
	while (cub3d->file->data[i] && !are_all_elements_set(cub3d->file->mask))
	{
		while (ft_strlen(cub3d->file->data[i]) == 0)
			i++;
		id = get_identifier(cub3d->file->data[i]);
		if (!id)
			print_error_then_exit_program(cub3d, err_id);
		else if (is_valid_texture(id, &texture_id))
			extract_texture_data(cub3d, id, texture_id, cub3d->file->data[i]);
		else if (is_valid_floor(id))
			extract_floor_data(cub3d, cub3d->file->data[i]);
		else if (is_valid_ceiling(id))
			extract_ceiling_data(cub3d, cub3d->file->data[i]);
		free(id);
		i++;
	}
	cub3d->file->offset = i;
}

void	extract_input_file(t_cub3d *cub3d, char *argv)
{
	if (is_filename_correct(argv))
	{
		extract_file(cub3d, argv);
		extract_elements(cub3d);
		extract_map(cub3d);
		return ;
	}
	print_error_then_exit_program(cub3d, err_filename);
	exit(EXIT_FAILURE);
}
