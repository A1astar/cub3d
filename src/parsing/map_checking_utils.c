/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_checking_utils.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 11:10:09 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/25 16:57:38 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	apply_enemy_state(t_enemy *randy, int nb_enemy)
{
	if (nb_enemy == 0)
		randy->state = angry;
	else if (nb_enemy == 1)
		randy->state = drunk;
	else if (nb_enemy == 2)
		randy->state = stoned;
	else
		randy->state = godlike;
}

void	check_enemy_nb(t_cub3d *cub3d, int enemy_nb)
{
	if (enemy_nb > 3)
	{
		error_msg("Too many enemies", NULL);
		free_program(cub3d);
	}
}

void	check_player_nb(t_cub3d *cub3d, int player_nb)
{
	if (player_nb > 1)
	{
		error_msg("Too many player", NULL);
		free_program(cub3d);
	}
}

void	check_item_nb(t_cub3d *cub3d, int item_nb)
{
	if (item_nb > 1)
	{
		error_msg("Too many item", NULL);
		free_program(cub3d);
	}
}

void	check_valid_element(t_cub3d *cub3d, char c)
{
	if (c == '1' || c == '0' || c <= ' ' || c == 'O' || c == 'C')
		return ;
	else
	{
		error_msg(MAP_ELEM, NULL);
		free_program(cub3d);
	}
}

char	**dup_tab(char **map, size_t map_row_len)
{
	size_t	i;
	char	**copy;

	i = 0;
	copy = ft_calloc(map_row_len + 1, sizeof(char *));
	if (!copy)
		return (error_msg(MEM, "tab_copy"), NULL);
	while (i < map_row_len)
	{
		copy[i] = ft_strdup(map[i]);
		if (!copy[i])
		{
			error_msg(MEM, "tab_copy(2)");
			ft_free_tab((void **)copy);
			return (NULL);
		}
		i++;
	}
	return (copy);
}
