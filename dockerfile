FROM docker:latest

COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh

ENV DOCKER_CONFIG=/tmp/.docker

CMD ["/cleanup.sh"]