/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_mouse.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:42:21 by algadea           #+#    #+#             */
/*   Updated: 2025/05/07 12:01:00 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	player_action_button(int keynum, t_cub3d *cub3d)
{
	if (keynum == Button1)
		player_cast(cub3d, &cub3d->player);
	else if (keynum == Button3)
		player_sword(cub3d, &cub3d->player);
}
