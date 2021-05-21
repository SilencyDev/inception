FROM debian:buster

RUN apt-get update
RUN apt-get -y install wget
RUN apt-get -y install php7.3-fpm php7.3-mysql
RUN apt-get -y install php-json php-mbstring

COPY requirements/wordpress/tools/start.sh ./
COPY requirements/wordpress/conf/wp-config.php ./

CMD bash /start.sh
