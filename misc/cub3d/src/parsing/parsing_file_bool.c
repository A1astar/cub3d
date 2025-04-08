/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_file_bool.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/20 19:41:58 by agadea            #+#    #+#             */
/*   Updated: 2024/06/20 23:49:20 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_filename_correct(char *filename)
{
	if (ft_strlen(filename) > 4
		&& ft_strncmp(&filename[ft_strlen(filename) - 4], ".cub", 4) == 0)
		return (true);
	return (false);
}

bool	are_all_elements_set(uint32_t bitfield)
{
	if (bitfield == 0b111111)
		return (true);
	return (false);
}

bool	is_space(char c)
{
	if (c == ' ' || c == '\f' || c == '\t' || c == '\r' || c == '\v')
		return (true);
	return (false);
}

bool	is_valid_path(char *line, char *id)
{
	int	i;
	int	j;

	i = ft_strlen(id);
	while (line[i] && is_space(line[i]))
		i++;
	j = 0;
	while (line[i])
	{
		if (is_space(line[i]))
			return (false);
		i++;
		j++;
	}
	if (j == 0)
		return (false);
	return (true);
}
