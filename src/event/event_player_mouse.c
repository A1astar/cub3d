/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_mouse.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:42:21 by algadea           #+#    #+#             */
/*   Updated: 2025/04/14 13:00:01 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	player_attack(t_cub3d *cub3d)
{
	printf(BOLD WHITE"Player "DEFAULT);
	printf(BOLD RED"attack!\n"DEFAULT);
	(void)cub3d;
}

void	player_action_button(int keynum, t_cub3d *cub3d)
{
	if (keynum == Button1) // Left click
		player_attack(cub3d);
	else if (keynum == Button3) // Right click
		player_parry(cub3d);
}
