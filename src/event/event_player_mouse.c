/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_mouse.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:42:21 by algadea           #+#    #+#             */
/*   Updated: 2025/04/22 12:05:44 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	player_parry(t_cub3d *cub3d)
{
	printf(BOLD WHITE "Player " DEFAULT);
	printf(BOLD BLUE "parry!\n" DEFAULT);
	(void)cub3d;
}

static void	player_attack(t_cub3d *cub3d)
{
	printf(BOLD WHITE "Player " DEFAULT);
	printf(BOLD RED "attack!\n" DEFAULT);
	(void)cub3d;
}

// button 1 = left clock   button 2 = right click

void	player_action_button(int keynum, t_cub3d *cub3d)
{
	if (keynum == Button1)
		player_attack(cub3d);
	else if (keynum == Button3)
		player_parry(cub3d);
}
