mv ./wp-config.php /var/www/localhost/wordpress/
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp --allow-root core install --url="localhost/wordpress" --path="/var/www/localhost/wordpress/" --title="a title" --admin_user='user' --admin_password='password' --admin_email="test@test.fr"

exec php-fpm7 -F;
