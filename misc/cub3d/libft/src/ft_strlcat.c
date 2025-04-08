/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/08 15:52:03 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:46:50 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t	i;
	size_t	j;
	size_t	len_src;
	size_t	len_dest;

	i = 0;
	j = 0;
	if (size == 0 && !dst)
		return (0);
	len_dest = ft_strlen(dst);
	len_src = ft_strlen(src);
	if (size == 0 || size < len_dest)
		return (size + len_src);
	while (dst[i] && i < size)
		i++;
	while (src[j] && i < size - 1)
		dst[i++] = src[j++];
	dst[i] = '\0';
	return (len_dest + len_src);
}
