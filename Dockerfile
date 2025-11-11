FROM docker:stable

COPY entrypoint.sh /entrypoint.sh
COPY cleanup.sh /cleanup.sh
RUN chmod +x /entrypoint.sh /cleanup.sh
ENTRYPOINT ["/entrypoint.sh"]
