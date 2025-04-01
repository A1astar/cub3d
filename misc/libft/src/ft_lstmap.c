/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 09:03:52 by agadea            #+#    #+#             */
/*   Updated: 2024/12/16 15:22:34 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*head;
	t_list	*new;

	if (!lst || !(*f) || !(*del))
		return (NULL);
	head = ft_lstnew(NULL);
	if (!head)
		return (NULL);
	new = head;
	while (lst)
	{
		new->content = f(lst->content);
		if (lst->next)
		{
			new = ft_lstnew(NULL);
			if (!new)
			{
				ft_lstclear(&head, (del));
				return (NULL);
			}
			ft_lstadd_back(&head, new);
		}
		lst = lst->next;
	}
	return (head);
}
