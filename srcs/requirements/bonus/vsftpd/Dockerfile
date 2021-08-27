FROM alpine:3.13

RUN apk update
RUN apk add vim wget vsftpd
RUN rm -rf /var/cache/apk/*

COPY ./tools/start.sh ./start.sh
COPY ./conf/vsftpd.conf ./vsftpd.conf

EXPOSE 21

CMD [ "ash", "start.sh" ]