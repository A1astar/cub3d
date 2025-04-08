/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_element.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/08 21:57:59 by agadea            #+#    #+#             */
/*   Updated: 2024/06/13 21:47:21 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	get_element_length(char *line)
{
	int		i;

	i = 0;
	while (line[i] && !is_space(line[i]))
		i++;
	return (i);
}

char	*get_identifier(char *line)
{
	int		i;
	int		len;
	char	*element;

	i = 0;
	len = get_element_length(line);
	if (len == 0)
		return (NULL);
	element = malloc(len + 1);
	while (i < len)
	{
		element[i] = line[i];
		i++;
	}
	element[i] = '\0';
	return (element);
}

char	*get_rgb_value(char *line)
{
	int		i;
	int		length;
	char	*tmp;

	length = 0;
	while (line[length] && line[length] != ',')
		length++;
	if (length == 0)
		return (NULL);
	tmp = malloc(length + 1);
	if (!tmp)
		return (NULL);
	i = 0;
	while (i < length)
	{
		tmp[i] = line[i];
		i++;
	}
	tmp[i] = '\0';
	return (tmp);
}
