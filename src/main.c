/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:52:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/07 19:32:05 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub3d.h"

void	struct_init(t_game *game)
{
	ft_bzero(&game->map, sizeof(game->map));
	ft_bzero(&game->player, sizeof(game->player));
	ft_bzero(&game->randy[0], sizeof(game->randy));
	ft_bzero(&game->randy[1], sizeof(game->randy));
	ft_bzero(&game->randy[2], sizeof(game->randy));
	ft_bzero(&game->randy[3], sizeof(game->randy));

}

int	main(int argc, char **argv)
{
	t_game	game;

	struct_init(&game);
	if (map_parsing(argc, argv, &game) == -1)
		return (1);
}
