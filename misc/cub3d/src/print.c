/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/03 10:49:44 by agadea            #+#    #+#             */
/*   Updated: 2024/07/19 17:10:05 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/cub3d.h"

void	print_map_data(char **data)
{
	int	i;

	i = 0;
	write(1, "\n", 1);
	while (data[i])
	{
		printf("%s\n", data[i]);
		i++;
	}
	write(1, "\n", 1);
}

void	print_ceiling_and_floor(uint8_t *ceiling, uint8_t *floor)
{
	int	i;

	i = 0;
	(void)floor;
	while (i < 3)
	{
		ft_printf("%d", ceiling[i]);
		i++;
	}
}

void	print_file_data(t_map *map)
{
	int	i;

	// printf("NO = %s\n", map->no_texture);
	// printf("SO = %s\n", map->so_texture);
	// printf("WE = %s\n", map->we_texture);
	// printf("EA = %s\n", map->ea_texture);
	write(1, "\n", 1);
	print_ceiling_and_floor(map->ceiling, map->floor);
	write(1, "\n", 1);
	i = 0;
	while (map->data[i])
	{
		printf("%s\n", map->data[i]);
		i++;
	}
	write(1, "\n", 1);
}
