/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   map.h                                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:46:15 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/02 13:47:07 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MAP_H
# define MAP_H

typedef struct s_map
{
	bool	is_valid_map;
	char	**raw_data;
	char	**map;
	char	**assets_paths;
	int		ceilling_rgb[3];
	int		floor_rgb[3];
	size_t	height;
	size_t	width;
}			t_map;

typedef struct s_minimap
{
	int		x_origin;
	int		y_origin;
	int		width;
	int		height;
	int		tile_width;
	int		tile_height;
	int		scale;
}			t_minimap;

#endif
