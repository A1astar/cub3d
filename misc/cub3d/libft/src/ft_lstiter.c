/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstiter.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/22 09:03:48 by agadea            #+#    #+#             */
/*   Updated: 2023/05/23 09:45:10 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/libft.h"

void	ft_lstiter(t_list *lst, void (*f)(void *))
{
	t_list	*next_element;
	t_list	*current_element;

	if (!lst || !(*f))
		return ;
	current_element = lst;
	while (current_element)
	{
		next_element = current_element->next;
		f(current_element->content);
		current_element = next_element;
	}
}
