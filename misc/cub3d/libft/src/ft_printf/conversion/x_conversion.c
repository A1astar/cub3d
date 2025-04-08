/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   x_conversion.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/23 08:22:55 by agadea            #+#    #+#             */
/*   Updated: 2023/06/25 12:33:25 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

static int	put_lower_hex(unsigned int argument, int count)
{
	char	*hex_digit;	

	hex_digit = "0123456789abcdef";
	if (argument >= 0 && argument <= 15)
		count = write(1, &hex_digit[argument], 1);
	else if (argument > 15)
	{
		count = put_lower_hex(argument / 16, count);
		count += put_lower_hex(argument % 16, count);
	}
	return (count);
}

static int	left_justify(unsigned int argument, const char *format,
									int field_width, int precision)
{
	int	count;

	count = 0;
	if (argument == 0 && find_specific_flag(format, '.') == 1 && precision == 0)
	{
		count += put_field_width(field_width, 0);
		return (count);
	}
	if (find_specific_flag(format, '#') == 1 && argument > 0)
		count += write(1, "0x", 2);
	count += put_precision(precision, x_length(argument));
	count += put_lower_hex(argument, count);
	count += put_field_width(field_width,
			global_length(precision, x_length(argument)));
	return (count);
}

static int	zero_padding(unsigned int argument, const char *format,
									int field_width)
{
	int	count;

	count = 0;
	count += put_zero_padding(field_width, x_length(argument));
	if (find_specific_flag(format, '#') == 1 && argument > 0)
		count += write(1, "0x", 2);
	count += put_lower_hex(argument, count);
	return (count);
}

static int	field_width_only(unsigned int argument, const char *format,
										int field_width, int precision)
{
	int	count;

	count = 0;
	if (argument == 0 && find_specific_flag(format, '.') == 1 && precision == 0)
	{
		count += put_field_width(field_width, 0);
		return (count);
	}
	count += put_field_width(field_width,
			global_length(precision, x_length(argument)));
	if (find_specific_flag(format, '#') == 1 && argument > 0)
		count += write(1, "0x", 2);
	count += put_precision(precision, x_length(argument));
	count += put_lower_hex(argument, count);
	return (count);
}

int	x_conversion(va_list ap, const char *format, int count)
{
	int				field_width;
	int				precision;
	unsigned int	argument;

	count = 0;
	precision = get_precision(format);
	argument = va_arg(ap, unsigned int);
	field_width = get_field_width(format);
	if (find_specific_flag(format, '-') == 1)
		count = left_justify(argument, format, field_width, precision);
	else if (find_zero(format) == 1 && find_specific_flag(format, '.') == 0)
		count = zero_padding(argument, format, field_width);
	else
		count = field_width_only(argument, format, field_width, precision);
	return (count);
}
