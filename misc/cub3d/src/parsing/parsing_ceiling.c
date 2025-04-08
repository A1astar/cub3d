/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_ceiling.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/03 10:10:45 by agadea            #+#    #+#             */
/*   Updated: 2024/06/20 17:29:25 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_valid_ceiling(char *element)
{
	if (*element == 'C')
		return (true);
	return (false);
}

void	extract_ceiling_data(t_cub3d *cub3d, char *line)
{
	int		i;
	int		j;
	char	*tmp;

	i = 0;
	j = 0;
	while (line[i] && j < 3)
	{
		tmp = get_rgb_value(line);
		if (!tmp)
			print_error_then_exit_program(cub3d, err_ceiling);
		cub3d->map->ceiling[j] = ft_atoi(tmp);
		i += ft_strlen(tmp);
		j++;
		free(tmp);
	}
	set_mask_element(ceiling, &cub3d->file->mask);
}
