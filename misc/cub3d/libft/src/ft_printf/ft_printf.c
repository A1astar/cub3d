/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/10 09:13:47 by agadea            #+#    #+#             */
/*   Updated: 2024/03/30 13:16:08 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/ft_printf.h"

int	conversion(const char *format)
{
	while (*format)
	{
		if (*format == 'c')
			return ('c');
		else if (*format == 's')
			return ('s');
		else if (*format == 'p')
			return ('p');
		else if (*format == 'd' || *format == 'i')
			return ('d');
		else if (*format == 'u')
			return ('u');
		else if (*format == 'x')
			return ('x');
		else if (*format == 'X')
			return ('X');
		else if (*format == '%')
			return ('%');
		format++;
	}
	return (0);
}

int	start_conversion(va_list ap, const char *format, int count)
{
	if (conversion(format) == 'c')
		count = c_conversion(ap, format, count);
	else if (conversion(format) == 's')
		count = s_conversion(ap, format, count);
	else if (conversion(format) == 'p')
		count = p_conversion(ap, format, count);
	else if (conversion(format) == 'd' || conversion(format) == 'i')
		count = d_i_conversion(ap, format, count);
	else if (conversion(format) == 'u')
		count = u_conversion(ap, format, count);
	else if (conversion(format) == 'x')
		count = x_conversion(ap, format, count);
	else if (conversion(format) == 'X')
		count = upper_x_conversion(ap, format, count);
	else if (conversion(format) == '%')
		count = write(1, "%%", 1);
	return (count);
}

int	format_length(const char *format)
{
	int	length;

	length = 0;
	while (*format && find_any_conversion(*format) == 0)
	{
		format++;
		length++;
	}
	return (length);
}

int	ft_printf(const char *format, ...)
{
	int		count;
	va_list	ap;

	if (!format)
		return (-1);
	count = 0;
	va_start(ap, format);
	while (*format)
	{
		if (*format == '%' && (check_format_error(format + 1) == no_error))
		{
			format++;
			count += start_conversion(ap, format, count);
			format += format_length(format);
		}
		else
			count += write(1, format, 1);
		format++;
	}
	va_end(ap);
	return (count);
}
