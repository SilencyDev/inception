/usr/bin/mysql_install_db --user=root --basedir='/usr' --datadir='/var/data/mysql'
/usr/bin/mysqld --user=root --datadir='/var/data/mysql' &
sleep 5

mysql -e "CREATE DATABASE IF NOT EXISTS Inception DEFAULT CHARACTER SET utf8;"
mysql -e "USE Inception;"
mysql -e "CREATE USER IF NOT EXISTS 'user'@'localhost' IDENTIFIED BY 'password';"
mysql -e "GRANT ALL PRIVILEGES ON Inception.* TO 'user'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

pkill mysqld

/usr/bin/mysqld --user=root --datadir=/var/data/mysql