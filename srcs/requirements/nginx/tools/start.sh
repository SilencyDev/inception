#SSL
mkdir etc/nginx/ssl
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=Nice/L=Nice/O=42 School/OU=kevin/CN=localhost"

#NGINX
mkdir var/www/localhost
mv ./nginx.conf etc/nginx/
chown -R www-data /var/www/*
chmod -R 777 /var/www/*

#STARTUP
service nginx start
sleep infinity
