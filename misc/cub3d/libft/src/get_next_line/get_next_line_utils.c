/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/09 10:28:49 by agadea            #+#    #+#             */
/*   Updated: 2023/07/02 13:32:09 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/get_next_line.h"

size_t	line_length(const char *line)
{
	size_t	i;

	if (!line)
		return (0);
	i = 0;
	while (line[i])
	{
		if (line[i] == '\n')
			return (++i);
		i++;
	}
	return (i);
}

char	*ft_strjoin_n_free(const char *s1, const char *s2)
{
	size_t	i;
	size_t	j;
	char	*strjoin;

	i = 0;
	j = 0;
	if (!s1 || !s2)
		return (NULL);
	strjoin = malloc(ft_strlen(s1) + ft_strlen(s2) + 1);
	if (!strjoin)
		return (NULL);
	while (s1[i])
	{
		strjoin[i] = s1[i];
		i++;
	}
	while (s2[j])
	{
		strjoin[i] = s2[j];
		j++;
		i++;
	}
	strjoin[i] = '\0';
	free((char *)s1);
	return (strjoin);
}

char	*extract_new_line(const char *line)
{
	size_t	i;
	size_t	length;
	char	*new_line;

	if (!line)
		return (NULL);
	length = line_length(line);
	new_line = malloc(length + 1);
	if (!new_line)
		return (free((char *)line), NULL);
	i = 0;
	while (line[i] && i < length)
	{
		new_line[i] = line[i];
		i++;
	}
	new_line[i] = '\0';
	free((char *)line);
	return (new_line);
}
