/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_background.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/29 16:50:43 by algadea           #+#    #+#             */
/*   Updated: 2025/04/29 17:50:15 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_main_menu_background_frame_addr(t_cub3d *cub3d, t_main_menu *main_menu)
{
	int	i;

	i = 0;
	while (i < 52)
	{
		main_menu->background[i].addr = mlx_get_data_addr(
			main_menu->background[i].ptr,
			&main_menu->background[i].bpp,
			&main_menu->background[i].size_line,
			&main_menu->background[i].endian);
		if (!main_menu->background[i].addr)
		{
			printf(BOLD RED "MAIN MENU BACKGROUND ADDR ERROR\n" DEFAULT);
			free_program(cub3d);
			exit(EXIT_FAILURE);
		}
	}
}

void	init_background_frame_img(t_cub3d *cub3d,
			t_window *window, t_main_menu *main_menu)
{
	main_menu->background[0].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
			"asset/main_menu/main_menu-launch480.xpm",
			&main_menu->background[0].width,
			&main_menu->background[0].height);
	if (!main_menu->background[0].ptr || !main_menu->background[1].ptr
		|| !main_menu->background[2].ptr)
	{
		printf(BOLD RED "MAIN MENU BACKGROUND XPM ERROR\n" DEFAULT);
		free_program(cub3d);
		exit(EXIT_FAILURE);
	}
}

void	init_main_menu_background(t_cub3d *cub3d)
{
	init_main_menu_background_frame_img(cub3d,
			&cub3d->window, &cub3d->scene);
	init_main_menu_background_frame_addr(cub3d, &cub3d->main_menu);
}