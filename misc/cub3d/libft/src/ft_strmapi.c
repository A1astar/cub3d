/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/16 13:55:27 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:46:58 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

char	*ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	size_t	i;
	size_t	len;
	char	*strmapi;

	i = 0;
	if (!s || !(*f))
		return (NULL);
	len = ft_strlen(s);
	strmapi = malloc(sizeof(char) * len + 1);
	if (!strmapi)
		return (NULL);
	while (s[i])
	{
		strmapi[i] = f(i, s[i]);
		i++;
	}
	strmapi[i] = '\0';
	return (strmapi);
}
