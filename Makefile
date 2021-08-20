# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmacquet <kmacquet@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/19 16:27:07 by kmacquet          #+#    #+#              #
#    Updated: 2021/08/11 18:04:13 by kmacquet         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	sudo bash host.sh
	cd srcs && docker-compose up --build

down: 
	cd srcs && docker-compose down --volumes