/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/10 17:59:04 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:47:07 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

char	*ft_strnstr(const char *big, const char *little, size_t len)
{
	size_t	i;
	size_t	j;
	size_t	n;

	i = 0;
	if (ft_strlen(little) == 0)
		return ((char *)big);
	if (!len)
		return (NULL);
	while (big[i] && i < len)
	{
		j = 0;
		n = i;
		while (little[j] && big[n] == little[j] && n < len)
		{
			n++;
			j++;
		}
		if (little[j] == '\0')
			return ((char *)&big[i]);
		i++;
	}
	return (NULL);
}
