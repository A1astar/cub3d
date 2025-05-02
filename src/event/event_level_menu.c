/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_level_menu.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/22 12:03:17 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/02 17:21:37 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

int	level_menu_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		exit_cub3d(cub3d);
	else if ((keynum == XK_W || keynum == XK_Up)
		&& cub3d->level_menu.index != 0)
		cub3d->level_menu.index--;
	else if ((keynum == XK_S || keynum == XK_Down)
		&& cub3d->level_menu.index != 2)
		cub3d->level_menu.index++;
	return (0);
}
