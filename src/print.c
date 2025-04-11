/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 04:57:26 by algadea           #+#    #+#             */
/*   Updated: 2025/04/11 11:07:42 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	print_2d_array_string(char **str)
{
	for (int i = 0; str[i]; i++)
		printf("%s\n", str[i]);
	printf("\n");
}

void	print_usage(void)
{
	printf(BOLD WHITE"Usage: ./cub3d [map]\n"DEFAULT);
}
