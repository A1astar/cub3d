/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   events_menu.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/07 21:09:43 by agadea            #+#    #+#             */
/*   Updated: 2025/03/02 05:46:12 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/so_long.h"

void	events_main_menu(int keynum, t_so_long *so_long)
{
	if (keynum == XK_Escape)
		exit_so_long(so_long, EXIT_SUCCESS);
	else if (keynum == XK_W || keynum == XK_w)
	{
		so_long->menu.index--;
		if (so_long->menu.index < 0)
			so_long->menu.index++;
	}
	else if (keynum == XK_S || keynum == XK_s)
	{
		so_long->menu.index++;
		if (so_long->menu.index == 2)
			so_long->menu.index--;
	}
	else if (keynum == XK_Return)
	{
		if (so_long->menu.index == new_game)
			reinitialize_game(so_long);
		else if (so_long->menu.index == quit)
			exit_so_long(so_long, EXIT_SUCCESS);
	}
}
