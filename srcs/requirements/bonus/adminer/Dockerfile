FROM alpine:3.13

RUN apk update
RUN apk add vim wget php7 php7-fpm php7-common \
		php7-session php7-iconv php7-json \
		php7-gd php7-curl php7-xml php7-mysqli \
		php7-imap php7-cgi php7-pdo php7-pdo_mysql \
		php7-soap php7-xmlrpc php7-posix php7-mcrypt \
		php7-gettext php7-ldap php7-ctype php7-dom wget php7-phar
RUN rm -rf /var/cache/apk/*

RUN addgroup -g 82 -S www-data
RUN adduser -u 82 -D -S -G www-data www-data
# RUN chown -R www-data:www-data /var/www/localhost/wordpress

COPY ./conf/www.conf ./etc/php7/php-fpm.d/www.conf
COPY ./tools/start.sh ./start.sh

EXPOSE 9000

CMD [ "ash", "start.sh" ]