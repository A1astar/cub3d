/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_parsing.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 18:05:02 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/07 18:54:10 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

bool	is_cub_file(char *file)
{
	if (!ft_strnstr(file, ".cub", ft_strlen(file)))
		return (false);
	return (true);
}

int	map_parsing(int argc, char **argv, t_game *game)
{
	if (argc != 2)
		return (error_msg(ARG, NULL), -1);
	if (!is_cub_file(argv[2]))
		return (error_msg(MAP_EXT, NULL), -1);
}
