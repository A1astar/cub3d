/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   put_precision.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/02 11:54:13 by agadea            #+#    #+#             */
/*   Updated: 2024/11/23 01:11:03 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

int	global_length(int precision, int argument_length)
{
	if (precision > argument_length)
		argument_length += precision - argument_length;
	return (argument_length);
}

int	put_precision(int precision, int argument_length)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	precision = precision - argument_length;
	while (i < precision)
	{
		count += write(1, "0", 1);
		i++;
	}
	return (count);
}
