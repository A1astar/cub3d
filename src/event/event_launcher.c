/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_launcher.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/29 15:01:39 by algadea           #+#    #+#             */
/*   Updated: 2025/05/01 12:30:27 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	main_menu_launcher_key_hook(int keynum, t_cub3d *cub3d)
{
	if (keynum == XK_Escape)
		exit_cub3d(cub3d);
	else if (keynum == XK_Return)
	{
		cub3d->main_menu.state = option;
		cub3d->main_menu.delay = 0;
	}
}
