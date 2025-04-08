/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   u_conversion.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/23 09:38:03 by agadea            #+#    #+#             */
/*   Updated: 2023/06/25 12:33:30 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

static int	put_decimal(unsigned int argument, int count)
{
	char	*decimal_digit;

	decimal_digit = "0123456789";
	if (argument >= 0 && argument <= 9)
		count = write(1, &decimal_digit[argument], 1);
	else if (argument > 9)
	{
		count = put_decimal(argument / 10, count);
		count += put_decimal(argument % 10, count);
	}
	return (count);
}

static int	left_justify(unsigned int argument, const char *format,
									int field_width, int precision)
{
	int	count;

	count = 0;
	if (find_specific_flag(format, '.') == 1 && precision == 0 && argument == 0)
	{
		count += put_field_width(field_width, 0);
		return (count);
	}
	count += put_precision(precision, u_length(argument));
	count += put_decimal(argument, count);
	count += put_field_width(field_width,
			global_length(precision, u_length(argument)));
	return (count);
}

static int	zero_padding(unsigned int argument, int field_width)
{
	int	count;

	count = 0;
	count += put_zero_padding(field_width, u_length(argument));
	count += put_decimal(argument, count);
	return (count);
}

static int	field_width_only(unsigned int argument, const char *format,
										int field_width, int precision)
{
	int	count;

	count = 0;
	if (find_specific_flag(format, '.') == 1 && precision == 0 && argument == 0)
	{
		count += put_field_width(field_width, 0);
		return (count);
	}
	count += put_field_width(field_width,
			global_length(precision, u_length(argument)));
	count += put_precision(precision, u_length(argument));
	count += put_decimal(argument, count);
	return (count);
}

int	u_conversion(va_list ap, const char *format, int count)
{
	int				field_width;
	int				precision;
	unsigned int	argument;

	count = 0;
	argument = va_arg(ap, unsigned int);
	precision = get_precision(format);
	field_width = get_field_width(format);
	if (find_specific_flag(format, '-') == 1)
		count = left_justify(argument, format, field_width, precision);
	else if (find_zero(format) == 1 && find_specific_flag(format, '.') == 0)
		count = zero_padding(argument, field_width);
	else
		count = field_width_only(argument, format, field_width, precision);
	return (count);
}
