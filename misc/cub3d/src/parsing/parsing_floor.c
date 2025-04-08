/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_floor.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/03 10:10:40 by agadea            #+#    #+#             */
/*   Updated: 2024/07/31 15:58:52 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_valid_floor(char *element)
{
	if (*element == 'F')
		return (true);
	return (false);
}

void	extract_floor_data(t_cub3d *cub3d, char *line)
{
	int		i;
	int		j;
	int		len;
	char	*tmp;

	i = 0;
	j = 0;
	len = ft_strlen(line);
	while (line[i] && j < 3)
	{
		tmp = get_rgb_value(&line[i]);
		if (!tmp)
			print_error_then_exit_program(cub3d, err_floor);
		cub3d->map->floor[j] = ft_atoi(tmp);
		i += ft_strlen(tmp) + 1;
		j++;
		free(tmp);
		if (i > len)
			break ;
	}
	set_mask_element(e_floor, &cub3d->file->mask);
}
