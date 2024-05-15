FROM docker:latest

COPY cleanup.sh /cleanup.sh
RUN chmod +x /cleanup.sh

CMD ["/cleanup.sh"]