/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   p_conversion.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/23 09:08:14 by agadea            #+#    #+#             */
/*   Updated: 2024/03/30 13:16:28 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

static int	put_pointer(unsigned long argument, int count)
{
	char	*hex_digit;

	hex_digit = "0123456789abcdef";
	if (argument >= 0 && argument <= 15)
		count = write(1, &hex_digit[argument], 1);
	else if (argument > 15)
	{
		count = put_pointer(argument / 16, count);
		count += put_pointer(argument % 16, count);
	}
	return (count);
}

static int	left_justify(unsigned long argument, int field_width)
{
	int	count;

	count = 0;
	if (argument == 0)
	{
		count += write(1, "(nil)", 5);
		count += put_field_width(field_width - 5, p_length(argument));
	}
	else
	{
		count += write(1, "0x", 2);
		count += put_pointer(argument, count);
		count += put_field_width(field_width - 2, p_length(argument));
	}
	return (count);
}

static int	field_width_only(unsigned long argument, int field_width)
{
	int	count;

	count = 0;
	if (argument == 0)
	{
		count += put_field_width(field_width - 4, p_length(argument));
		count += write(1, "(nil)", 5);
	}
	else
	{
		count += put_field_width(field_width - 2, p_length(argument));
		count += write(1, "0x", 2);
		count += put_pointer(argument, count);
	}
	return (count);
}

int	p_conversion(va_list ap, const char *format, int count)
{
	int				field_width;	
	unsigned long	argument;

	argument = va_arg(ap, unsigned long);
	field_width = get_field_width(format);
	if (find_specific_flag(format, '-') == 1)
		count = left_justify(argument, field_width);
	else
		count = field_width_only(argument, field_width);
	return (count);
}
