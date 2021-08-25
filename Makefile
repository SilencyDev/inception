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

all: init down
	cd srcs && docker-compose up --build

down: init
	cd srcs && docker-compose down --volumes

init: 
	sudo bash host.sh

reset: init down
	sudo rm -rf ~/data/mysql/*
	sudo rm -rf ~/data/wordpress/*
	sudo rm -rf ~/data/grafana/*
	cd srcs && sudo docker system prune -a --volumes
	echo -e "y\n"
	make all