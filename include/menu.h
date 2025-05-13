/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   menu.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:50:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 12:44:33 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MENU_H
# define MENU_H

typedef struct s_main_menu
{
	int		delay;
	int		state;
	uint8_t	blink;
	uint8_t	blink_max;
	double	animation_timer;
	bool	blink_direction;
	int		index_option;
	int		index_option_static;
	int		index_background;
	t_img	background[50];
	t_img	launcher_title;
	t_img	launcher_blink;
	t_img	option[2];
	t_img	test;
}			t_main_menu;

typedef struct s_level_menu
{
	int		width;
	int		height;
	int		index;
	t_img	img;
}			t_level_menu;

#endif
