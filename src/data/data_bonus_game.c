/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   data_game.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/23 18:24:58 by algadea           #+#    #+#             */
/*   Updated: 2025/05/11 15:51:24 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	update_game_data(t_cub3d *cub3d)
{
	update_player_data(cub3d);
	update_enemy(cub3d);
}
