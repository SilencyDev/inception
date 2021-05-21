#MYSQL
service mysql start
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root;
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'kevin'@'localhost' IDENTIFIED BY 'password';" | mysql -u root;
echo "FLUSH PRIVILEGES;" | mysql -u root;

#STARTUP
service mysql restart
sleep infinity
