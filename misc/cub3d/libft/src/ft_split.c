/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/24 14:12:47 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:46:34 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

static size_t	ft_count_word(char const *s, char c)
{
	size_t	i;
	size_t	size;

	i = 0;
	size = 0;
	while (s[i] && s[i] == c)
		i++;
	while (s[i])
	{
		while (s[i] && s[i] != c)
			i++;
		size++;
		while (s[i] && s[i] == c)
			i++;
	}
	return (size);
}

static char	**ft_free(char **splitted_string)
{
	size_t	i;

	i = 0;
	while (splitted_string[i])
	{
		free(splitted_string[i]);
		i++;
	}
	free(splitted_string);
	return (NULL);
}

static char	*ft_make_string(char const *s, char c)
{
	size_t	i;
	size_t	len;
	char	*new_string;

	i = 0;
	len = 0;
	while (s[i])
	{
		if (s[i] == c)
			break ;
		i++;
		len++;
	}
	new_string = malloc (sizeof(char) * (len + 1));
	if (!new_string)
		return (NULL);
	i = 0;
	while (s[i] && s[i] != c)
	{
		new_string[i] = s[i];
		i++;
	}
	new_string[i] = '\0';
	return (new_string);
}

static char	**ft_split_string(char **splitted_string, char const *s, char c)
{
	size_t	i;
	size_t	j;
	size_t	len;

	i = 0;
	j = 0;
	len = 0;
	while (s[j])
	{
		if (s[j] == c)
			j++;
		else
		{
			splitted_string[i] = ft_make_string(s + j, c);
			if (!splitted_string[i])
				return (ft_free(splitted_string));
			len = ft_strlen(splitted_string[i]);
			j += len;
			i++;
		}
	}
	splitted_string[i] = 0;
	return (splitted_string);
}

char	**ft_split(char const *s, char c)
{
	char	**splitted_string;

	if (!s)
		return (NULL);
	splitted_string = malloc (sizeof(char *) * (ft_count_word(s, c) + 1));
	if (!splitted_string)
		return (NULL);
	splitted_string = ft_split_string(splitted_string, s, c);
	return (splitted_string);
}
