/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/28 14:13:36 by algadea           #+#    #+#             */
/*   Updated: 2024/12/16 15:21:16 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

# include <sys/types.h>
# include <sys/stat.h>
# include <stdbool.h>
# include <stdlib.h>
# include <unistd.h>
# include <fcntl.h>
# include <stdio.h>
# include "libft.h"

# define SUCCESS 1
# define FAILURE 0

enum e_mode
{
	nl,
	len
};

typedef struct s_gnl
{
	int		fd;
	int		r_size;
	char	*line;
	char	*buffer;
	char	*r_buffer;
}	t_gnl;

char	*get_next_line(int fd);
char	*duplicate_string(const char *s);
int		nl_or_strlen(const char *line, int mode);
void	copy_str(char *dest, char *src, int length);
char	*join_strings(const char *s1, const char *s2);
void	get_line_and_buffer_length(char *line, int *len_line, int *len_buffer);

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 42
# endif

#endif