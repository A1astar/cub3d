/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strtrim.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 16:15:16 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:47:13 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

static int	ft_find_trim(char s1, char const *set)
{
	size_t	i;

	i = 0;
	while (set[i])
	{
		if (s1 == set[i])
			return (1);
		i++;
	}
	return (0);
}

static int	ft_trim_from_end(char const *s1, char const *set)
{
	size_t	end;

	end = ft_strlen(s1) - 1;
	while (s1[end])
	{
		if (ft_find_trim(s1[end], set) == 1)
			end--;
		else
			break ;
	}
	return (++end);
}

static int	ft_trim_from_start(char const *s1, char const *set)
{
	size_t	start;

	start = 0;
	while (s1[start])
	{
		if (ft_find_trim(s1[start], set) == 1)
			start++;
		else
			break ;
	}
	return (start);
}

char	*ft_strtrim(char const *s1, char const *set)
{
	size_t	i;
	size_t	start;
	size_t	end;
	char	*strtrim;

	if (!s1)
		return (NULL);
	if (!set)
		return (ft_strdup(s1));
	start = ft_trim_from_start(s1, set);
	end = ft_trim_from_end(s1, set);
	if (start >= end)
		return (ft_strdup(""));
	strtrim = malloc(sizeof(char) * (end - start + 1));
	if (!strtrim)
		return (NULL);
	i = 0;
	while (start < end)
	{
		strtrim[i] = ((char *)s1)[start];
		i++;
		start++;
	}
	strtrim[i] = '\0';
	return (strtrim);
}
