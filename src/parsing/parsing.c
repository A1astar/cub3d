/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 18:05:02 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/09 11:55:06 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_cub_file(char *file)
{
	if (!ft_strnstr(file, ".cub", ft_strlen(file)))
		return (false);
	return (true);
}

void	init_program(t_cub3d *game, int argc, char **argv)
{
	if (argc != 2)
	{
		error_msg(ARG, NULL);
		exit(EXIT_FAILURE);
	}
	else if (!is_cub_file(argv[1]))
	{
		error_msg(MAP_EXT, NULL);
		exit(EXIT_FAILURE);
	}
	// extract_data(game, argv[1]);
	// parse_map(game);
	init_mlx(game, &game->scene);
}
