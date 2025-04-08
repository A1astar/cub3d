/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 18:05:02 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/08 15:55:54 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

bool	is_cub_file(char *file)
{
	if (!ft_strnstr(file, ".cub", ft_strlen(file)))
		return (false);
	return (true);
}

int	init_program(int argc, char **argv, t_cub3d *game)
{
	if (argc != 2)
		return (error_msg(ARG, NULL), -1);
	if (!is_cub_file(argv[2]))
		return (error_msg(MAP_EXT, NULL), -1);
	if (parse_map(argv[2], game) == -1)
		return (-1);
}
