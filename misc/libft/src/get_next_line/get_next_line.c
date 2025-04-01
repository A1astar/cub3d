/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/28 13:27:16 by algadea           #+#    #+#             */
/*   Updated: 2024/12/30 16:37:09 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/get_next_line.h"

bool	define_and_store_new_line(t_gnl **file)
{
	char	*line;
	int		len_line;
	int		len_buffer;

	if (!(*file)->line)
		return (FAILURE);
	get_line_and_buffer_length((*file)->line, &len_line, &len_buffer);
	line = malloc(len_line + 1);
	(*file)->buffer = malloc(len_buffer + 1);
	if (!line || !(*file)->buffer)
		return (FAILURE);
	copy_str(line, (*file)->line, len_line);
	copy_str((*file)->buffer, (*file)->line + len_line, len_buffer);
	free((*file)->line);
	(*file)->line = duplicate_string(line);
	free(line);
	if (!(*file)->line)
		return (FAILURE);
	return (SUCCESS);
}

bool	find_new_line(t_gnl **file)
{
	while (1)
	{
		if (!(*file)->r_buffer || nl_or_strlen((*file)->line, nl) == true)
			break ;
		(*file)->r_size = read((*file)->fd, (*file)->r_buffer, BUFFER_SIZE);
		if ((*file)->r_size < 0)
			return (FAILURE);
		(*file)->r_buffer[(*file)->r_size] = '\0';
		if ((*file)->r_size == 0 && nl_or_strlen((*file)->r_buffer, len) == 0
			&& !(*file)->buffer)
			break ;
		if (!(*file)->line)
			(*file)->line = duplicate_string((*file)->r_buffer);
		else
			(*file)->line = join_strings((*file)->line, (*file)->r_buffer);
		if (!(*file)->line)
			return (FAILURE);
	}
	if (nl_or_strlen((*file)->line, len) > 0
		&& define_and_store_new_line(file) == SUCCESS)
		return (SUCCESS);
	return (FAILURE);
}

bool	init_file_struct(t_gnl **file, int fd)
{
	(*file) = malloc(sizeof(t_gnl));
	if (!(*file))
		return (FAILURE);
	(*file)->fd = fd;
	(*file)->r_size = 0;
	(*file)->line = NULL;
	(*file)->buffer = NULL;
	(*file)->r_buffer = NULL;
	return (SUCCESS);
}

void	free_gnl(t_gnl **file)
{
	if ((*file))
	{
		if ((*file)->r_buffer)
		{
			free((*file)->r_buffer);
			(*file)->r_buffer = NULL;
		}
		if ((*file)->buffer && (nl_or_strlen((*file)->buffer, len) == 0))
		{
			free((*file)->buffer);
			(*file)->buffer = NULL;
		}
		if ((*file)->line)
		{
			free((*file)->line);
			(*file)->line = NULL;
		}
		if (!(*file)->buffer)
		{
			free((*file));
			(*file) = NULL;
		}
	}
}

char	*get_next_line(int fd)
{
	char			*line;
	static t_gnl	*file[1024];

	if (fd < 0 || fd > 1024 || BUFFER_SIZE <= 0)
		return (NULL);
	line = NULL;
	if (file[fd] || (!file[fd] && init_file_struct(&file[fd], fd) == SUCCESS))
	{
		file[fd]->r_buffer = malloc(BUFFER_SIZE + 1);
		if (!file[fd]->r_buffer)
			return (NULL);
		if (file[fd]->buffer)
		{
			file[fd]->line = duplicate_string(file[fd]->buffer);
			free(file[fd]->buffer);
			file[fd]->buffer = NULL;
		}
		if (find_new_line(&file[fd]) == SUCCESS)
			line = duplicate_string(file[fd]->line);
	}
	free_gnl(&file[fd]);
	return (line);
}
