/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   zero_padding.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/26 17:53:39 by agadea            #+#    #+#             */
/*   Updated: 2023/06/25 12:33:21 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

int	putnbr_zero(int argument, int count)
{
	count = 0;
	if (argument == -2147483648)
		count += write(1, "2147483648", 10);
	else if (argument < 0)
	{
		argument *= -1;
		count += putnbr_zero(argument, count);
	}
	else if (argument >= 0 && argument <= 9)
	{
		count += putchar_count(argument + '0', count);
	}
	else
	{
		count = putnbr_zero(argument / 10, count);
		count += putnbr_zero(argument % 10, count);
	}
	return (count);
}

int	put_zero_padding(int field_width, int argument_length)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	field_width = field_width - argument_length;
	while (i < field_width)
	{
		count += write(1, "0", 1);
		i++;
	}
	return (count);
}
