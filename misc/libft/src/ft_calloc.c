/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/11 17:17:12 by agadea            #+#    #+#             */
/*   Updated: 2024/11/19 15:50:49 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	void	*calloc;

	if (size == 0 || nmemb == 0)
		return (malloc (0));
	if (size * nmemb / size != nmemb)
		return (NULL);
	calloc = malloc(nmemb * size);
	if (!calloc)
		return (NULL);
	ft_bzero(calloc, nmemb * size);
	return (calloc);
}
