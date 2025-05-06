/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map_checking_utils.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/10 11:10:09 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/06 11:55:57 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	update_map_size(t_cub3d *cub3d, char *map_line)
{
	size_t	map_size;

	map_size = ft_strlen(map_line);
	if (map_size > (size_t)cub3d->minimap.width)
		cub3d->minimap.width = map_size;
}

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
