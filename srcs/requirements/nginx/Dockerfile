FROM alpine:3.13

RUN apk update
RUN apk add vim nginx openssl
RUN mkdir -p /run/nginx
RUN mkdir etc/nginx/tls
RUN openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/nginx/tls/localhost.crt \
		-keyout /etc/nginx/tls/localhost.key -subj '/CN=localhost'

COPY ./conf/default.conf /etc/nginx/http.d/default.conf

CMD [ "nginx", "-g", "daemon off;" ]