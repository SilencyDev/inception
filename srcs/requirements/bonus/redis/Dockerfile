FROM alpine:3.13

RUN apk update
RUN apk add vim wget redis
RUN rm -rf /var/cache/apk/*

COPY ./tools/start.sh ./start.sh
COPY ./conf/redis.conf /etc/redis/myredis.conf

EXPOSE 6379

CMD [ "ash", "start.sh" ]