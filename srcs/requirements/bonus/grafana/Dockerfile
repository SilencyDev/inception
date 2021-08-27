FROM alpine:3.13

RUN apk update
RUN apk add vim wget libc6-compat
RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-8.1.2.linux-amd64.tar.gz
RUN tar -zxvf grafana-enterprise-8.1.2.linux-amd64.tar.gz

COPY ./conf/grafana.ini /etc/grafana/grafana.ini
COPY ./tools/start.sh ./

EXPOSE 3000

CMD [ "sh", "start.sh" ]