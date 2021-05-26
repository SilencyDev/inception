mv ./wp-config.php var/www/wordpress/
mv ./www.conf etc/php/7.3/fpm/conf.d/
#STARTUP
service php7.3-fpm start
sleep infinity
