/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   textures.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:39:25 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 11:31:56 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef TEXTURES_H
# define TEXTURES_H

typedef struct s_img
{
	char	*pixel;
	void	*ptr;
	char	*addr;
	int		bpp;
	int		height;
	int		width;
	int		endian;
	int		size_line;
}			t_img;

typedef struct s_textures
{
	t_img	n_wall;
	t_img	s_wall;
	t_img	e_wall;
	t_img	w_wall;
	t_img	wall_one;
	t_img	wall_two;
	t_img	floor;
	t_img	o_door;
	t_img	c_door;
	t_img	trip_n_wall;
	t_img	trip_s_wall;
	t_img	trip_e_wall;
	t_img	trip_w_wall;
	t_img	trip_wall_one;
	t_img	trip_wall_two;
	t_img	trip_floor;
	t_img	trip_o_door;
	t_img	trip_c_door;
	t_img	blood[3];
}			t_textures;

#endif
