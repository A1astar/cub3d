/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 09:03:43 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:45:02 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*next_element;
	t_list	*current_element;

	if (!lst || !(*del))
		return ;
	current_element = *lst;
	while (current_element)
	{
		next_element = current_element->next;
		del(current_element->content);
		free(current_element);
		current_element = next_element;
	}
	*lst = NULL;
}
