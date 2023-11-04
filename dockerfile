FROM alpine:latest

RUN apk add --no-cache docker-cli

COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh

CMD ["/cleanup.sh"]