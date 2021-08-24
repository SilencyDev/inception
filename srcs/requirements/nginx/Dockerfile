FROM alpine:3.13

RUN apk update && apk upgrade
RUN apk add vim nginx openssl
RUN rm -rf /var/cache/apk/*
RUN mkdir -p /run/nginx
RUN mkdir /var/www/localhost/html
RUN mkdir etc/nginx/tls
RUN openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/tls/localhost.crt \
		-keyout /etc/nginx/tls/localhost.key -subj '/CN=localhost'

COPY ./conf/default.conf /etc/nginx/http.d/default.conf
COPY ./conf/index.html /var/www/localhost/html/index.html

CMD [ "nginx", "-g", "daemon off;" ]