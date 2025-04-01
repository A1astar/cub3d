/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 09:03:43 by agadea            #+#    #+#             */
/*   Updated: 2024/12/16 15:22:23 by algadea          ###   ########.fr       */
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
