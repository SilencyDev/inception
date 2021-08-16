FROM alpine:3.13

RUN apk update
RUN apk add vim mariadb mariadb-client mariadb-common
RUN rm -rf /var/cache/apk/*
RUN mkdir -p /run/mysqld /var/lib/mysql
RUN chown -R mysql /var/lib/mysql
RUN chmod 777 /var/lib/mysql

COPY ./tools/start.sh ./start.sh
COPY ./conf/createdb.sql ./createdb.sql
COPY ./conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

EXPOSE 3306

CMD [ "ash", "start.sh" ]