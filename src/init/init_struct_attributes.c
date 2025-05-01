/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_struct_attributes.c                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/11 16:20:59 by algadea           #+#    #+#             */
/*   Updated: 2025/05/01 17:18:30 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_struct_attributes(t_cub3d *cub3d)
{
	cub3d->program_state = main_menu;
	cub3d->rendering_state = normal;
	cub3d->nb_enemy = 0;
	cub3d->nb_player = 0;
	cub3d->nb_item = 0;
}
