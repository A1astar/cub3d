/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_checking_nb.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/06 11:36:28 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/12 18:52:50 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	check_enemy_nb(t_cub3d *cub3d, int enemy_nb)
{
	if (enemy_nb > 3)
	{
		error_msg("Too many enemies", NULL);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

void	check_player_nb(t_cub3d *cub3d, int player_nb)
{
	if (player_nb > 1)
	{
		error_msg("Too many player", NULL);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}

void	check_item_nb(t_cub3d *cub3d, int item_nb)
{
	if (item_nb > 1)
	{
		error_msg("Too many item", NULL);
		free_program_and_exit(cub3d, EXIT_FAILURE);
	}
}
