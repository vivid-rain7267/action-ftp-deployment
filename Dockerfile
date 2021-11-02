FROM alpine:latest

RUN apk add --no-cache lftp bash

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
