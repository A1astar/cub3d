/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   elements.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alacroix <alacroix@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:42:18 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/05 11:30:30 by alacroix         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ELEMENTS_H
# define ELEMENTS_H

typedef struct s_item
{
	long			x_pos;
	long			y_pos;
	t_img			sprite;
}					t_item;

typedef struct s_enemy
{
	t_randy_state	state;
	int				sprite_width;
	int				sprite_height;
	double			x_pos;
	double			y_pos;
	t_img			sprite;
}					t_enemy;

#endif
