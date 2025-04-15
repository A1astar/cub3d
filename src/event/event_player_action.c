/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player_action.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/15 12:18:38 by algadea           #+#    #+#             */
/*   Updated: 2025/04/15 12:20:04 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

static void	player_reload(t_cub3d *cub3d)
{
	printf(BOLD WHITE"Player "DEFAULT);
	printf(BOLD CYAN"cast!\n"DEFAULT);
	(void)cub3d;
}

static void	player_cast(t_cub3d *cub3d)
{
	printf(BOLD WHITE"Player "DEFAULT);
	printf(BOLD CYAN"cast!\n"DEFAULT);
	(void)cub3d;
}

static void	player_interaction(t_cub3d *cub3d)
{
	printf(BOLD WHITE"Player "DEFAULT);
	printf(BOLD CYAN"interaction!\n"DEFAULT);
	(void)cub3d;
}

void	player_action_key(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_q)
		player_cast(cub3d);
	else if (keynum == XK_e)
		player_interaction(cub3d);
	else if (keynum == XK_r)
		player_reload(cub3d);
}
