/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   calculations.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/16 11:48:07 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/16 11:56:47 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	caluclate_plane(t_raycast *raycast)
{
	double	plane_len;

	plane_len = tan(raycast->fov_rad / 2.0);
	raycast->x_plane = (-raycast->y_dir) * plane_len;
	raycast->y_plane = raycast->y_dir * plane_len;
}
