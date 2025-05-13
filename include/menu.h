/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   menu.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:50:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 23:10:55 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MENU_H
# define MENU_H

enum	e_main_menu_state
{
	launcher,
	main_menu_option
};

enum	e_main_menu_option_state
{
	start_game,
	exit_game
};

enum	e_main_menu_settings_state
{
	resolution,
	sensibility
};

enum e_level_menu
{
	level_menu_option,
	bindings
};

typedef struct s_blink
{
	uint8_t	value;
	uint8_t	max;
	bool	direction;
}t_blink;

typedef struct s_main_menu
{
	int		state;
	double	animation_timer;
	int		index_option;
	int		index_option_static;
	int		index_background;
	t_img	background[50];
	t_img	launcher_title;
	t_img	launcher_blink;
	t_img	option[2];
	t_img	test;
	t_blink	blink;
}			t_main_menu;

typedef struct s_level_menu
{
	int		state;
	int		index_option;
	int		index_option_static;
	t_img	option[3];
	t_img	bindings;
	t_img	background;
	t_img	pause;
	t_blink	blink;
}			t_level_menu;

#endif
