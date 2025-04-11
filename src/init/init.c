/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 11:27:44 by algadea           #+#    #+#             */
/*   Updated: 2025/04/11 15:36:06 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_struct_attributes(t_cub3d *cub3d)
{
	cub3d->program_state = playing;
	cub3d->main_menu.index = 0;
	cub3d->nb_enemy = 0;
	cub3d->nb_player = 0;
	ft_bzero(&cub3d->map, sizeof(t_map));
	ft_bzero(&cub3d->scene, sizeof(t_scene));
	ft_bzero(&cub3d->window, sizeof(t_window));
	ft_bzero(&cub3d->player, sizeof(t_player));
	ft_bzero(&cub3d->thread, sizeof(t_thread));
	ft_bzero(&cub3d->minimap, sizeof(t_minimap));
	ft_bzero(&cub3d->setting, sizeof(t_setting));
	ft_bzero(&cub3d->randy[0], sizeof(t_enemy));
	ft_bzero(&cub3d->randy[1], sizeof(t_enemy));
	ft_bzero(&cub3d->randy[2], sizeof(t_enemy));
	ft_bzero(&cub3d->randy[3], sizeof(t_enemy));
	ft_bzero(&cub3d->main_menu, sizeof(t_menu));
	ft_bzero(&cub3d->level_menu, sizeof(t_menu));
}

bool	is_cub_file(char *file)
{
	if (!ft_strnstr(file, ".cub", ft_strlen(file)))
		return (false);
	return (true);
}

void	init_program(t_cub3d *cub3d, char **argv)
{
	init_struct_attributes(cub3d);
	parsing(cub3d, argv[1]);
	init_mlx(cub3d, &cub3d->window);
	init_asset(cub3d);
	cub3d->minimap.x_origin = WINDOW_WIDTH / 4;
	cub3d->minimap.y_origin = WINDOW_HEIGHT / 4;
	cub3d->minimap.height = 10;
	cub3d->minimap.width = 10;
	cub3d->minimap.scale = 1;
}
