/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_background.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/29 16:50:43 by algadea           #+#    #+#             */
/*   Updated: 2025/05/01 00:32:25 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

// void	init_main_menu_background_frame_addr(t_cub3d *cub3d, t_main_menu *main_menu)
// {
// 	int	i;

// 	i = 0;
// 	while (i < 50)
// 	{
// 		main_menu->background[i].addr = mlx_get_data_addr(
// 			main_menu->background[i].ptr,
// 			&main_menu->background[i].bpp,
// 			&main_menu->background[i].size_line,
// 			&main_menu->background[i].endian);
// 		if (!main_menu->background[i].addr)
// 		{
// 			printf(BOLD RED "MAIN MENU BACKGROUND ADDR ERROR\n" DEFAULT);
// 			free_program(cub3d);
// 			exit(EXIT_FAILURE);
// 		}
// 		i++;
// 	}
// }

// char	*get_filename(t_cub3d *cub3d, int i)
// {
// 	char	*tmp;
// 	char	*filename;

// 	tmp = ft_strjoin("asset/main_menu/background/background-0", ft_itoa(i));
// 	if (!tmp)
// 	{
// 		printf(BOLD RED "MALLOC ERROR\n" DEFAULT);
// 		free_program(cub3d);
// 		exit(EXIT_FAILURE);
// 	}
// 	filename = ft_strjoin(tmp, ".xpm");
// 	free(tmp);
// 	if (!filename)
// 	{
// 		printf(BOLD RED "MALLOC ERROR\n" DEFAULT);
// 		free_program(cub3d);
// 		exit(EXIT_FAILURE);
// 	}
// 	return (filename);
// }

// void	init_main_menu_background_frame_img(t_cub3d *cub3d,
// 			t_window *window, t_main_menu *main_menu)
// {
// 	int		i;
// 	char	*filename;

// 	i = 0;
// 	while (i < 50)
// 	{
// 		filename = get_filename(cub3d, i + 1);
// 		main_menu->background[i].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
// 				filename,
// 				&main_menu->background[i].width,
// 				&main_menu->background[i].height);
// 		free(filename);
// 		if (!main_menu->background[i].ptr)
// 		{
// 			printf(BOLD RED "MAIN MENU BACKGROUND XPM ERROR\n" DEFAULT);
// 			free_program(cub3d);
// 			exit(EXIT_FAILURE);
// 		}
// 		i++;
// 	}
// }

// void	init_main_menu_background(t_cub3d *cub3d)
// {
// 	init_main_menu_background_frame_img(cub3d,
// 			&cub3d->window, &cub3d->main_menu);
// 	init_main_menu_background_frame_addr(cub3d, &cub3d->main_menu);
// }

void	init_main_menu_background(t_cub3d *cub3d)
{
	cub3d->main_menu.test.ptr = mlx_xpm_file_to_image(cub3d->window.mlx_ptr,
		"asset/main_menu/xpm/main_menu-launch720.xpm",
		&cub3d->main_menu.test.width,
		&cub3d->main_menu.test.height);
	cub3d->main_menu.test.addr = mlx_get_data_addr(cub3d->main_menu.test.ptr,
		&cub3d->main_menu.test.bpp,
		&cub3d->main_menu.test.size_line,
		&cub3d->main_menu.test.endian);
}