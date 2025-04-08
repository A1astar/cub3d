/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   cub3d.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/07 17:20:34 by alacroix          #+#    #+#             */
/*   Updated: 2025/04/08 03:06:27 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CUB3D_H
# define CUB3D_H

# include "errors.h"
# include "keycodes.h"
# include "libft/includes/libft.h"
//# include "mlx.h"
# include "textures.h"
# include <sys/stat.h>
# include <fcntl.h>
# include <limits.h>
# include <math.h>
# include <pthread.h>
# include <stdbool.h>
# include <inttypes.h>

/*STRUCTS*/

enum e_error {err_none, err_malloc, err_file, };

typedef struct s_error
{
	uint8_t number;
}	t_error;

typedef	struct s_minimap
{
	//whatever
} t_minimap;

typedef struct s_map
{
	int			nb_enemy;
	void		*n_wall;
	void		*s_wall;
	void		*e_wall;
	void		*w_wall;
	void		*floor;
	void		*ceiling;
	void		*door;
}				t_map;

typedef struct s_player
{
	float		x_pos;
	float		y_pos;
	void		*pov;
}				t_player;

typedef struct s_enemy
{
	float		x_pos;
	float		y_pos;
	void		*drunk;
	void		*stoned;
	void		*angry;
}				t_enemy;

typedef struct s_cub3d
{
	t_error		error;
	t_map		map;
	t_player	player;
	t_enemy		randy[4];
	t_struct
}				t_cub3d;

/*ERROR*/
void			error_msg(const char *msg, const char *context);

/*PARSING*/
int				map_parsing(int argc, char **argv, t_cub3d *game);

#endif
