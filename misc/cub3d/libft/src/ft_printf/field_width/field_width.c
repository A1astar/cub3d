/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   field_width.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/24 18:38:54 by agadea            #+#    #+#             */
/*   Updated: 2023/06/25 12:33:23 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../../include/ft_printf.h"

int	put_field_width(int field_width, int argument_length)
{
	int	i;
	int	count;

	i = 0;
	count = 0;
	field_width = field_width - argument_length;
	while (i < field_width)
	{
		count += write(1, " ", 1);
		i++;
	}
	return (count);
}

static int	ajust_value_with_flag(const char *format, int field_width)
{
	if (find_specific_flag(format, '#') == 1
		&& (find_specific_conversion(format, 'x') == 1
			|| find_specific_conversion(format, 'X') == 1))
		field_width -= 2;
	else if ((find_specific_flag(format, ' ') == 1
			|| find_specific_flag(format, '+') == 1)
		&& (find_specific_conversion(format, 'd') == 1
			|| find_specific_conversion(format, 'i') == 1))
		field_width -= 1;
	return (field_width);
}

static int	extract_value(const char *format, int start, int end)
{
	char	*field_width;
	int		value;
	int		i;

	field_width = malloc((end - start) + 1);
	if (!field_width)
		return (0);
	i = 0;
	while (start < end)
	{
		field_width[i] = format[start];
		start++;
		i++;
	}
	field_width[i] = '\0';
	value = atoi(field_width);
	free(field_width);
	return (value);
}

int	get_field_width(const char *format)
{
	int		field_width_value;
	size_t	start;
	size_t	end;
	size_t	i;

	i = 0;
	while (find_any_flags(format[i]) == 1)
		i++;
	start = i;
	while (format[i] >= '0' && format[i] <= '9')
		i++;
	end = i;
	field_width_value = extract_value(format, start, end);
	field_width_value = ajust_value_with_flag(format, field_width_value);
	return (field_width_value);
}
