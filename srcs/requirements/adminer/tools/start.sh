echo "clear_env=false" >> etc/php7/php-fpm.conf
mv ./wp-config.php /var/www/localhost/wordpress/
wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
mv ./adminer-4.8.1.php /var/www/localhost/wordpress/adminer.php

exec php-fpm7 -F;
