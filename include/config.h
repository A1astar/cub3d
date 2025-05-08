/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   config.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/02 13:32:00 by alacroix          #+#    #+#             */
/*   Updated: 2025/05/07 23:15:19 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CONFIG_H
# define CONFIG_H

# define DEFAULT "\033[0m"
# define BOLD "\033[1m"
# define ITALIC "\033[3m"
# define BLACK "\033[30m"
# define RED "\033[31m"
# define GREEN "\033[32m"
# define YELLOW "\033[33m"
# define BLUE "\033[34m"
# define MAGENTA "\033[35m"
# define CYAN "\033[36m"
# define WHITE "\033[37m"

# define HEX_BROWN 0x8B4513
# define HEX_BLUE 0x0000FF
# define HEX_RED 0xFF0000
# define HEX_GREEN 0x98FF98
# define HEX_BLACK 0x000000
# define HEX_WHITE 0xFFFFFF
# define HEX_GREY 0xCCCCCC

# define PI 3.14159265358979323846
# define VELOCITY 0.02
# define SENSIBILITY 0.02
# define FRAMERATE 60
// # define FRAMERATE 1

# define RUNNING 1

# define LEFT -1
# define RIGHT -1

# define WINDOW_WIDTH 1280
# define WINDOW_HEIGHT 720

enum	e_program_state
{
	game,
	level_menu,
	main_menu
};

enum	e_main_menu_state
{
	launcher,
	option
};

enum	e_main_menu_option_state
{
	start_game,
	exit_game
};

enum	e_main_menu_settings_state
{
	resolution,
	sensibility
};

enum	e_resolution
{
	res_1280x720,
	res_1920x1080
};

enum	e_playing_state
{
	running,
	playing_menu
};

enum	e_epileptic
{
	ep_floor,
	ep_ceiling
};

enum	e_rendering
{
	normal,
	psychedelic
};

enum	e_key_press
{
	release,
	pressed
};

enum	e_viewmodel
{
	down,
	up
};

typedef enum e_randy_state
{
	angry,
	stoned,
	drunk,
	godlike,
	dying,
	dead
}		t_randy_state;
typedef enum e_orientation
{
	north,
	south,
	east,
	west
}		t_orientation;
typedef enum e_anim_state
{
	stand,
	cast,
	sword
}		t_anim_state;

#endif
