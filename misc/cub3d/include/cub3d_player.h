/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d_player.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/11 13:30:17 by agadea            #+#    #+#             */
/*   Updated: 2024/10/15 14:43:33 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CUB3D_PLAYER_H
# define CUB3D_PLAYER_H

# include "cub3d.h"

// typedef struct s_player_minimap
// {
// 	int		x0;
// 	int		y0;
// 	int		x1;
// 	int		y1;
// 	double	angle;
// 	double	pos_x;
// 	double	pos_y;
// };

typedef struct s_player
{
	int		x0;
	int		y0;
	int		x1;
	int		y1;
	double	angle;
	double	pos_x;
	double	pos_y;
	uint8_t	***vertex;
}	t_player;

#endif