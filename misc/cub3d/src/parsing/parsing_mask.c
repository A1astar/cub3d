/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   parsing_mask.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: agadea <agadea@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/05 09:03:40 by agadea            #+#    #+#             */
/*   Updated: 2024/06/13 22:46:36 by agadea           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_element_already_set(uint8_t element, uint8_t mask)
{
	if (mask & 1 << element)
		return (true);
	return (false);
}

void	set_mask_element(uint8_t element, uint8_t *mask)
{
	*mask |= 1 << element;
}

void	print_mask(uint8_t mask)
{
	int		i;
	char	bitset[9];

	i = MASK_SIZE;
	while (i > 0)
	{
		if (mask & 1)
			bitset[i - 1] = '1';
		else
			bitset[i - 1] = '0';
		mask >>= 1;
		i--;
	}
	bitset[MASK_SIZE] = '\0';
	write(STDOUT_FILENO, bitset, 8);
	write(STDOUT_FILENO, "\n", 1);
}
