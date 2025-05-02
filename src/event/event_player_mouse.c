/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_mouse.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:42:21 by algadea           #+#    #+#             */
/*   Updated: 2025/05/02 11:42:32 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	player_sword(t_cub3d *cub3d)
{
	printf(BOLD WHITE "Player " DEFAULT);
	printf(BOLD BLUE "slay!\n" DEFAULT);
	(void)cub3d;
}

static void	player_wand(t_cub3d *cub3d)
{
	printf(BOLD WHITE "Player " DEFAULT);
	printf(BOLD RED "fireball !\n" DEFAULT);
	(void)cub3d;
}

void	player_action_button(int keynum, t_cub3d *cub3d)
{
	if (keynum == Button1)
		player_wand(cub3d);
	else if (keynum == Button3)
		player_sword(cub3d);
}
