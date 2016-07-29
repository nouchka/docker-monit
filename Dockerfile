FROM debian:jessie
MAINTAINER Jean-Avit Promis "docker@katagena.com"


RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -yq install monit && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	ln -s /etc/monit/monitrc /etc/monitrc

EXPOSE 2812
CMD monit -d 10 -Ic /etc/monitrc
