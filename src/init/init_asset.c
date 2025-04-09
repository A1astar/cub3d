/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   init_asset.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/09 15:42:11 by algadea           #+#    #+#             */
/*   Updated: 2025/04/09 19:08:02 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../include/cub3d.h"

void	init_asset(t_cub3d *cub3d)
{
	init_mandatory_assets(cub3d, cub3d->map.assets_paths);
	//init_bonus_part(cub3d);
	// init_main_menu(cub3d, &cub3d.scene, &cub3d.main_menu);
}
