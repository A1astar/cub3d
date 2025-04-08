/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/08 14:42:25 by agadea            #+#    #+#             */
/*   Updated: 2024/03/30 13:15:34 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft.h"
# include <stdio.h>
# include <unistd.h>
# include <stdarg.h>
# include <stdlib.h>
# include <limits.h>

enum e_error
{
	no_error,
	error
};

/* ft_printf */
int		ft_printf(const char *format, ...);

/* find format */
int		find_any_flags(char format);
int		find_zero(const char *format);
int		find_any_conversion(char format);
int		check_format_error(const char *format);
int		find_specific_flag(const char *format, char flag);
int		find_specific_conversion(const char *format, char conversion);

/* field_width */
int		get_field_width(const char *format);
int		put_field_width(int field_width, int argument_length);
int		put_zero_padding(int field_width, int argument_length);

/*	precision	*/
int		get_precision(const char *format);
int		global_length(int precision, int argument_length);
int		put_precision(int precision, int argument_length);

/* argument length */
int		d_i_length(int argument);
int		x_length(unsigned int argument);
int		u_length(unsigned int argument);
int		p_length(unsigned long argument);
int		s_length(int precision, char *argument);

/* conversion format */
int		s_conversion(va_list ap, const char *format, int count);
int		p_conversion(va_list ap, const char *format, int count);
int		c_conversion(va_list ap, const char *format, int count);
int		u_conversion(va_list ap, const char *format, int count);
int		x_conversion(va_list ap, const char *format, int count);
int		d_i_conversion(va_list ap, const char *format, int count);
int		upper_x_conversion(va_list ap, const char *format, int count);

/* print utils */
int		putstr_count(char *argument);
size_t	s_strlen(const char *argument);
int		putnbr_zero(int argument, int count);
int		putnbr_count(int argument, int count);
int		putchar_count(char argument, int count);
int		putstr_precision_count(char *argument, int precision);

#endif