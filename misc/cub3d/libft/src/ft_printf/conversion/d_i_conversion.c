/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   d_i_conversion.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/11 14:51:35 by agadea            #+#    #+#             */
/*   Updated: 2024/03/30 13:18:11 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

static int	put_plus_or_space(int argument, const char *format)
{
	int	count;

	count = 0;
	if (find_specific_flag(format, '+') == 1 && argument >= 0)
		count += write(1, "+", 1);
	else if (find_specific_flag(format, ' ') == 1 && argument >= 0)
		count += write(1, " ", 1);
	return (count);
}

static int	left_justify(int argument, const char *format,
							int field_width, int precision)
{
	int	count;

	count = 0;
	if (argument == 0 && find_specific_flag(format, '.') == 1 && precision == 0)
	{
		count += put_field_width(field_width, 0);
		return (count);
	}
	count += put_plus_or_space(argument, format);
	if (argument < 0)
	{
		count += write(1, "-", 1);
		if (find_specific_flag(format, '.') == 1)
			precision++;
	}
	count += put_precision(precision, d_i_length(argument));
	count += putnbr_count(argument, count);
	count += put_field_width(field_width,
			global_length(precision, d_i_length(argument)));
	return (count);
}

static int	zero_padding(int argument, const char *format, int field_width)
{
	int	count;

	count = 0;
	count += put_plus_or_space(argument, format);
	if (argument < 0)
	{
		count += write(1, "-", 1);
		count += put_zero_padding(field_width, d_i_length(argument));
		count += putnbr_zero(argument, count);
	}
	else
	{
		count += put_zero_padding(field_width, d_i_length(argument));
		count += putnbr_count(argument, count);
	}
	return (count);
}

static int	field_width_only(int argument, const char *format,
								int field_width, int precision)
{
	int	count;

	count = 0;
	if (argument == 0 && find_specific_flag(format, '.') == 1 && precision == 0)
	{
		count += put_field_width(field_width, 0);
		return (count);
	}
	if (argument < 0 && find_specific_flag(format, '.') == 1)
		precision++;
	count += put_field_width(field_width,
			global_length(precision, d_i_length(argument)));
	count += put_plus_or_space(argument, format);
	if (argument < 0)
		count += write(1, "-", 1);
	count += put_precision(precision, d_i_length(argument));
	count += putnbr_count(argument, count);
	return (count);
}

int	d_i_conversion(va_list ap, const char *format, int count)
{
	int	argument;
	int	precision;
	int	field_width;

	count = 0;
	argument = va_arg(ap, int);
	precision = get_precision(format);
	field_width = get_field_width(format);
	if (find_specific_flag(format, '-') == 1)
		count = left_justify(argument, format, field_width, precision);
	else if (find_zero(format) == 1 && find_specific_flag(format, '.') == 0)
		count = zero_padding(argument, format, field_width);
	else
		count = field_width_only(argument, format, field_width, precision);
	return (count);
}
