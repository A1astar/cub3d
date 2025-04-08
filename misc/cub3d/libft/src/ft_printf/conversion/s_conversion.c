/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   s_conversion.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/23 09:38:48 by agadea            #+#    #+#             */
/*   Updated: 2023/06/25 12:33:31 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

static int	left_justify(char *argument, const char *format,
							int field_width, int precision)
{
	int	count;

	count = 0;
	if (find_specific_flag(format, '.') == 1)
	{
		count += putstr_precision_count(argument, precision);
		count += put_field_width(field_width, s_length(precision, argument));
	}
	else if (argument == NULL)
	{
		count += putstr_count(argument);
		count += put_field_width(field_width - 6, s_strlen(argument));
	}
	else
	{
		count += putstr_count(argument);
		count += put_field_width(field_width, s_strlen(argument));
	}
	return (count);
}

static int	field_width_only(char *argument, const char *format,
								int field_width, int precision)
{
	int	count;

	count = 0;
	if (find_specific_flag(format, '.') == 1)
	{
		count += put_field_width(field_width, s_length(precision, argument));
		count += putstr_precision_count(argument, precision);
	}
	else if (argument == NULL)
	{
		count += put_field_width(field_width - 6, s_strlen(argument));
		count += putstr_count(argument);
	}
	else
	{
		count += put_field_width(field_width, s_strlen(argument));
		count += putstr_count(argument);
	}
	return (count);
}

int	s_conversion(va_list ap, const char *format, int count)
{
	char	*argument;
	int		precision;
	int		field_width;

	count = 0;
	argument = va_arg(ap, char *);
	precision = get_precision(format);
	field_width = get_field_width(format);
	if (find_specific_flag(format, '-') == 1)
		count = left_justify(argument, format, field_width, precision);
	else
		count = field_width_only(argument, format, field_width, precision);
	return (count);
}
