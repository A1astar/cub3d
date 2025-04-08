/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstlast.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 09:03:50 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:45:12 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

t_list	*ft_lstlast(t_list *lst)
{
	t_list	*index;

	if (!lst)
		return (NULL);
	index = lst;
	while (index->next)
		index = index->next;
	return (index);
}
