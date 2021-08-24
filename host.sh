sudo chown $(whoami):$(whoami) /var/run/docker.sock
sudo service nginx stop
echo "127.0.0.1 kmacquet.42.fr" >> /etc/hosts
echo "127.0.0.1 www.kmacquet.42.fr" >> /etc/hosts
echo "127.0.0.1 cv.kmacquet.42.fr" >> /etc/hosts
echo "127.0.0.1 www.cv.kmacquet.42.fr" >> /etc/hosts