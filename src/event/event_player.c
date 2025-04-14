/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   event_player.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/14 12:48:38 by algadea           #+#    #+#             */
/*   Updated: 2025/04/14 12:49:08 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

bool	is_player_button(int keynum)
{
	if (keynum == Button1 || keynum == Button3)
		return (true);
	return (false);
}

bool	is_player_key(int keynum)
{
	if (keynum == XK_q || keynum == XK_e || keynum || XK_r)
		return (true);
	return (false);
}
