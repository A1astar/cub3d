/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/09 09:54:15 by agadea            #+#    #+#             */
/*   Updated: 2023/07/02 13:55:20 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/get_next_line.h"

int	check_for_new_line(const char *line)
{
	size_t	i;

	if (!line)
		return (0);
	i = 0;
	while (line[i])
	{
		if (line[i] == '\n')
			return (1);
		i++;
	}
	return (0);
}

char	*store_the_rest(const char *line)
{
	size_t	i;
	size_t	j;
	size_t	length;
	char	*cache;

	if (!line)
		return (NULL);
	i = 0;
	j = 0;
	length = line_length(line);
	cache = malloc(ft_strlen(line) - length + 1);
	if (!cache)
		return (NULL);
	while (line[i] && line[i] != '\n')
		i++;
	if (line[i] == '\n')
		i++;
	while (line[i])
		cache[j++] = line[i++];
	cache[j] = '\0';
	if (ft_strlen(cache) == 0)
		return (free(cache), NULL);
	return (cache);
}

char	*define_new_line(int fd, ssize_t index, char *buffer, char *cache)
{
	char	*line;

	if (cache)
		line = ft_strjoin_n_free(cache, buffer);
	else
		line = ft_strdup(buffer);
	while (index > 0 && check_for_new_line(line) == 0)
	{
		index = read(fd, buffer, BUFFER_SIZE);
		buffer[index] = '\0';
		line = ft_strjoin_n_free(line, buffer);
	}
	return (line);
}

char	*get_next_line(int fd)
{
	ssize_t		index;
	char		*line;
	char		*buffer;
	static char	*cache;

	if (fd < 0 || BUFFER_SIZE <= 0)
		return (NULL);
	buffer = malloc(BUFFER_SIZE + 1);
	if (!buffer)
		return (NULL);
	index = read(fd, buffer, BUFFER_SIZE);
	if (index < 0 || (ft_strlen(cache) == 0 && index == 0))
		return (free(cache), free(buffer), NULL);
	buffer[index] = '\0';
	line = define_new_line(fd, index, buffer, cache);
	cache = store_the_rest(line);
	line = extract_new_line(line);
	return (free(buffer), line);
}
