/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   data_enemy_utils.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 11:27:36 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 11:35:47 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

double	linear_interpol(double start, double end, double step)
{
	return (start + step * (end - start));
}
