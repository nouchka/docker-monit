# hadolint ignore=DL3007
FROM lscr.io/linuxserver-labs/monit:latest

COPY check.sh /check.sh
RUN chmod +x /check.sh

HEALTHCHECK CMD /check.sh
