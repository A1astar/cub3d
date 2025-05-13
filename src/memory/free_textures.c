/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   free_textures.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/13 11:59:56 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/13 12:00:16 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	free_t_loadbar(t_textures *textures, t_window *window)
{
	int	i;

	i = 0;
	while (i < 33)
		free_t_img(window, &textures->load[i++]);
}

static void	free_t_fireball(t_textures *textures, t_window *window)
{
	free_t_img(window, &textures->fireball[0]);
	free_t_img(window, &textures->fireball[1]);
	free_t_img(window, &textures->fireball[2]);
	free_t_img(window, &textures->fireball[3]);
	free_t_img(window, &textures->fireball[4]);
	free_t_img(window, &textures->fireball[5]);
	free_t_img(window, &textures->fireball[6]);
	free_t_img(window, &textures->fireball[7]);
	free_t_img(window, &textures->fireball[8]);
	free_t_img(window, &textures->fireball[9]);
	free_t_img(window, &textures->fireball[10]);
	free_t_img(window, &textures->fireball[11]);
	free_t_img(window, &textures->fireball[12]);
}

void	free_t_textures(t_textures *textures, t_window *window)
{
	free_t_img(window, &textures->n_wall);
	free_t_img(window, &textures->s_wall);
	free_t_img(window, &textures->e_wall);
	free_t_img(window, &textures->w_wall);
	free_t_img(window, &textures->wall_one);
	free_t_img(window, &textures->wall_two);
	free_t_img(window, &textures->floor);
	free_t_img(window, &textures->o_door);
	free_t_img(window, &textures->c_door);
	free_t_img(window, &textures->trip_n_wall);
	free_t_img(window, &textures->trip_s_wall);
	free_t_img(window, &textures->trip_e_wall);
	free_t_img(window, &textures->trip_w_wall);
	free_t_img(window, &textures->trip_wall_one);
	free_t_img(window, &textures->trip_wall_two);
	free_t_img(window, &textures->trip_floor);
	free_t_img(window, &textures->trip_o_door);
	free_t_img(window, &textures->trip_c_door);
	free_t_img(window, &textures->blood[0]);
	free_t_img(window, &textures->blood[1]);
	free_t_img(window, &textures->blood[2]);
	free_t_img(window, &textures->cadaver);
	free_t_fireball(textures, window);
	free_t_loadbar(textures, window);
}
