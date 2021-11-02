FROM alpine:latest

RUN apk add --no-cache lftp

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]