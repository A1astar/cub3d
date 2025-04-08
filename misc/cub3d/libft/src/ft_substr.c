/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 14:11:46 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:47:16 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

size_t	ft_malloc_size(char const *s, unsigned int start, size_t len)
{
	size_t	malloc_size;

	malloc_size = 0;
	if (len >= ft_strlen(s + start))
		malloc_size = ft_strlen(s + start) + 1;
	else if (len < ft_strlen(s + start))
		malloc_size = len + 1;
	return (malloc_size);
}

char	*ft_substr(char const *s, unsigned int start, size_t len)
{
	size_t	i;
	size_t	size;
	char	*substr;

	if (!s)
		return (NULL);
	if (start >= ft_strlen(s))
	{
		substr = malloc(sizeof(char));
		if (!substr)
			return (NULL);
		substr[0] = '\0';
		return (substr);
	}
	size = ft_malloc_size(s, start, len);
	substr = malloc(sizeof(char) * size);
	if (!substr)
		return (NULL);
	i = 0;
	while (s[start] && i < len)
		substr[i++] = s[start++];
	substr[i] = '\0';
	return (substr);
}
