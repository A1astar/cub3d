/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_texture_bool.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/08 21:04:51 by agadea            #+#    #+#             */
/*   Updated: 2024/06/13 22:45:05 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_valid_north_texture(char *element, int *texture)
{
	element++;
	if (*element == 'O' && (!*(++element) || is_space(*(++element))))
	{
		*texture = north;
		return (true);
	}
	return (false);
}

bool	is_valid_west_texture(char *element, int *texture)
{
	element++;
	if (*element == 'E' && (!*(++element) || is_space(*(++element))))
	{
		*texture = west;
		return (true);
	}
	return (false);
}

bool	is_valid_east_texture(char *element, int *texture)
{
	element++;
	if (*element == 'A' && (!*(++element) || is_space(*(++element))))
	{
		*texture = east;
		return (true);
	}
	return (false);
}

bool	is_valid_south_texture(char *element, int *texture)
{
	element++;
	if (*element == 'O' && (!*(++element) || is_space(*(++element))))
	{
		*texture = south;
		return (true);
	}
	return (false);
}

bool	is_valid_texture(char *element, int *texture)
{
	if (*element == 'N')
		return (is_valid_north_texture(element, texture));
	else if (*element == 'W')
		return (is_valid_west_texture(element, texture));
	else if (*element == 'S')
		return (is_valid_south_texture(element, texture));
	else if (*element == 'E')
		return (is_valid_east_texture(element, texture));
	*texture = -1;
	return (false);
}
