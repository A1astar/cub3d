/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   menu.h                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:50:57 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/02 13:51:50 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MENU_H
# define MENU_H

typedef struct s_main_menu
{
	int		delay;
	int		state;
	uint8_t	blink;
	bool	direction;
	int		index_option;
	int		index_background;
	t_img	background[50];
	t_img	launcher_title;
	t_img	launcher_blink;
	t_img	option[3];
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
