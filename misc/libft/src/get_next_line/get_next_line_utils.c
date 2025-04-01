/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/28 14:48:38 by algadea           #+#    #+#             */
/*   Updated: 2024/12/30 16:31:07 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/get_next_line.h"

void	copy_str(char *dest, char *src, int length)
{
	int	i;

	i = 0;
	while (i < length)
	{
		dest[i] = src[i];
		i++;
	}
	dest[i] = '\0';
}

int	nl_or_strlen(const char *line, int mode)
{
	int	i;

	if (!line)
		return (false);
	i = 0;
	while (line[i])
	{
		if (mode == nl && line[i] == '\n')
			return (true);
		i++;
	}
	if (mode == nl)
		return (false);
	return (i);
}

void	get_line_and_buffer_length(char *line, int *len_line, int *len_buffer)
{
	int	i;

	i = 0;
	while (line[i])
	{
		if (line[i] == '\n')
		{
			i++;
			break ;
		}
		i++;
	}
	*len_line = i;
	*len_buffer = 0;
	while (line[i])
	{
		*len_buffer += 1;
		i++;
	}
}

char	*duplicate_string(const char *s)
{
	size_t	i;
	char	*s_dup;

	s_dup = malloc(nl_or_strlen(s, len) + 1);
	if (!s_dup)
		return (NULL);
	i = 0;
	while (s[i])
	{
		s_dup[i] = s[i];
		i++;
	}
	s_dup[i] = '\0';
	return (s_dup);
}

char	*join_strings(const char *s1, const char *s2)
{
	size_t	i;
	size_t	j;
	char	*strjoin;

	i = 0;
	j = 0;
	if (!s1 || !s2)
		return (NULL);
	strjoin = malloc(nl_or_strlen(s1, len) + nl_or_strlen(s2, len) + 1);
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
