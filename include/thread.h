/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   thread.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: algadea <algadea@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/05/03 13:07:05 by algadea           #+#    #+#             */
/*   Updated: 2025/05/09 23:53:41 by algadea          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef THREAD_H
# define THREAD_H

# include <pthread.h>

enum e_task{init, render, logic};

typedef struct s_task
{
	void	(*task_ptr)(void);
}				t_task;

typedef struct s_thread
{
	uint8_t			task;
	uint8_t			state;
	long			cpu_core_nbr;
	pthread_t		*tid;
	pthread_mutex_t task_giver;
	pthread_mutex_t	render;
	pthread_mutex_t	init;
}				t_thread;

#endif
