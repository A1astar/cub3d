/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_background.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/29 16:50:43 by algadea           #+#    #+#             */
/*   Updated: 2025/05/12 18:44:40 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	handle_alloc_error(t_cub3d *cub3d)
{
	printf(BOLD RED "MALLOC ERROR\n" DEFAULT);
	free_program_and_exit(cub3d, EXIT_FAILURE);
}

void	init_main_menu_background_frame_addr(t_cub3d *cub3d, t_main_menu *main)
{
	int	i;

	i = 0;
	while (i < 50)
	{
		main->background[i].addr = mlx_get_data_addr(main->background[i].ptr,
				&main->background[i].bpp, &main->background[i].size_line,
				&main->background[i].endian);
		if (!main->background[i].addr)
		{
			printf(BOLD RED "MAIN MENU BACKGROUND ADDR ERROR\n" DEFAULT);
			free_program_and_exit(cub3d, EXIT_FAILURE);
		}
		i++;
	}
}

char	*get_filename(t_cub3d *cub3d, int i)
{
	char	*tmp;
	char	*number;
	char	*filename;

	number = ft_itoa(i);
	if (!number)
		handle_alloc_error(cub3d);
	tmp = ft_strjoin("asset/main_menu/background/720/background-0", number);
	free(number);
	if (!tmp)
		handle_alloc_error(cub3d);
	filename = ft_strjoin(tmp, "-720.xpm");
	free(tmp);
	if (!filename)
		handle_alloc_error(cub3d);
	return (filename);
}

void	init_main_menu_background_frame_img(t_cub3d *cub3d, t_window *window,
		t_main_menu *main_menu)
{
	int		i;
	char	*filename;

	i = 0;
	while (i < 50)
	{
		filename = get_filename(cub3d, i + 1);
		pthread_mutex_lock(&cub3d->lock);
		main_menu->background[i].ptr = mlx_xpm_file_to_image(window->mlx_ptr,
				filename, &main_menu->background[i].width,
				&main_menu->background[i].height);
		pthread_mutex_unlock(&cub3d->lock);
		free(filename);
		if (!main_menu->background[i].ptr)
		{
			printf(BOLD RED "MAIN MENU BACKGROUND XPM ERROR\n" DEFAULT);
			free_program_and_exit(cub3d, EXIT_FAILURE);
		}
		i++;
	}
}

void	init_main_menu_background(t_cub3d *cub3d)
{
	init_main_menu_background_frame_img(cub3d, &cub3d->window,
		&cub3d->main_menu);
	init_main_menu_background_frame_addr(cub3d, &cub3d->main_menu);
}
