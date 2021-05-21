FROM debian:buster

RUN apt-get update
RUN apt-get -y install mariadb-server mariadb-client

COPY requirements/mariadb/tools/start.sh ./

CMD bash /start.sh
