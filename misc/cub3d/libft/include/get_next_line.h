/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/09 10:30:14 by agadea            #+#    #+#             */
/*   Updated: 2023/10/18 20:17:56 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H

/* libc */
# include "libft.h"
# include <stdio.h>
# include <fcntl.h>
# include <unistd.h>
# include <stdlib.h>

/* project */
char	*get_next_line(int fd);
size_t	line_length(const char *line);
size_t	sizeof_rest(const char *line);
char	*extract_new_line(const char *line);
int		check_for_new_line(const char *line);
char	*store_the_rest(const char *line);
char	*ft_strjoin_n_free(const char *s1, const char *s2);
char	*define_new_line(int fd, ssize_t index, char *buffer, char *cache);

# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 1
# endif

#endif