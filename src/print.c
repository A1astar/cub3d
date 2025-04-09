/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 04:57:26 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 16:41:34 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	print_2d_array_string(char **str)
{
	for (int i = 0; str[i]; i++)
		printf("%s", str[i]);
	printf("\n");
}

void	print_usage(void)
{
	printf(BOLD WHITE"Usage: ./cub3d [map]\n"DEFAULT);
}
