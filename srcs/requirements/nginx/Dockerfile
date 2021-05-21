FROM debian:buster

RUN apt-get update
RUN apt-get -y install nginx
RUN apt-get -y install openssl

COPY requirements/nginx/tools/start.sh ./
COPY requirements/nginx/conf/nginx.conf ./

CMD bash /start.sh

EXPOSE 443/tcp
