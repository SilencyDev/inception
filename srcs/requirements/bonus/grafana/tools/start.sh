sleep 8
addgroup -S grafana
adduser -S -G grafana grafana
mkdir -p /etc/grafana
mkdir -p /var/log/grafana
mkdir -p /var/lib/grafana/plugins
chown -R grafana:grafana /var/lib/grafana
sleep 10
mv ./grafana-8.1.2 /var/www/localhost/wordpress/
chown -R grafana:grafana /var/www/localhost/wordpress/grafana-8.1.2
chmod -R 777 /var/www/localhost/wordpress/grafana-8.1.2
cp /var/www/localhost/wordpress/grafana-8.1.2/bin/grafana-server /usr/bin/

exec grafana-server --homepath="/var/www/localhost/wordpress/grafana-8.1.2" --config="/etc/grafana/grafana.ini"