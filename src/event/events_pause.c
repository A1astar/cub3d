/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   events_pause.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/15 09:44:20 by agadea            #+#    #+#             */
/*   Updated: 2025/03/02 05:43:24 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/so_long.h"

void	reinitialize_game(t_so_long *so_long)
{
	so_long->state = playing;
	so_long->level_state = level_1;
	so_long->transition_state = begin;
	set_level_values(so_long);
	put_transition(so_long);
}

void	events_win(int keynum, t_so_long *so_long)
{
	if (keynum == XK_Escape)
		exit_so_long(so_long, EXIT_SUCCESS);
	else if (keynum == XK_W || keynum == XK_w)
	{
		so_long->menu.index--;
		if (so_long->menu.index < 6)
			so_long->menu.index++;
	}
	else if (keynum == XK_S || keynum == XK_s)
	{
		so_long->menu.index++;
		if (so_long->menu.index == 8)
			so_long->menu.index--;
	}
	else if (keynum == XK_Return)
	{
		if (so_long->menu.index == win_restart)
			reinitialize_game(so_long);
		else if (so_long->menu.index == win_quit)
			exit_so_long(so_long, EXIT_SUCCESS);
	}
}

void	events_game_over(int keynum, t_so_long *so_long)
{
	if (keynum == XK_Escape)
		exit_so_long(so_long, EXIT_SUCCESS);
	else if (keynum == XK_W || keynum == XK_w)
	{
		so_long->menu.index--;
		if (so_long->menu.index < 8)
			so_long->menu.index++;
	}
	else if (keynum == XK_S || keynum == XK_s)
	{
		so_long->menu.index++;
		if (so_long->menu.index == 10)
			so_long->menu.index--;
	}
	else if (keynum == XK_Return)
	{
		if (so_long->menu.index == over_restart)
			reinitialize_game(so_long);
		else if (so_long->menu.index == over_quit)
			exit_so_long(so_long, EXIT_SUCCESS);
	}
}

static void	pause_quit_option(t_so_long *so_long)
{
	if (so_long->menu.index == resume)
		so_long->state = playing;
	else if (so_long->menu.index == pause_quit)
		so_long->menu.index++;
	else if (so_long->menu.index == to_main)
	{
		so_long->state = main_menu;
		so_long->menu.index = new_game;
	}
	else if (so_long->menu.index == to_desktop)
		exit_so_long(so_long, EXIT_SUCCESS);
}

void	events_pause(int keynum, t_so_long *so_long)
{
	if (keynum == XK_Escape)
		exit_so_long(so_long, EXIT_SUCCESS);
	else if (keynum == XK_W || keynum == XK_w)
	{
		so_long->menu.index--;
		if (so_long->menu.index < 2)
			so_long->menu.index++;
	}
	else if (keynum == XK_S || keynum == XK_s)
	{
		so_long->menu.index++;
		if (so_long->menu.index == 4)
			so_long->menu.index--;
		else if (so_long->menu.index == 6)
			so_long->menu.index--;
	}
	else if (keynum == XK_Return)
		pause_quit_option(so_long);
}
