/usr/bin/mysql_install_db --user=root --basedir='/usr' --datadir='/var/lib/mysql'
/usr/bin/mysqld --user=root --datadir='/var/lib/mysql' &
sleep 5

mysql -e "CREATE DATABASE IF NOT EXISTS $MYSQL_NAME DEFAULT CHARACTER SET utf8;"
mysql -e "USE $MYSQL_NAME;"
mysql -e "CREATE USER IF NOT EXISTS $MYSQL_USER@$DOMAIN_NAME IDENTIFIED BY $MYSQL_PASSWORD;"
mysql -e "GRANT ALL PRIVILEGES ON $MYSQL_NAME.* TO $MYSQL_USER@$DOMAIN_NAME;"
mysql -e "FLUSH PRIVILEGES;"

pkill mysqld

/usr/bin/mysqld --user=root --datadir=/var/lib/mysql