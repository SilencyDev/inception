mv ./wp-config.php /var/www/localhost/wordpress/

exec php-fpm7 -F;
