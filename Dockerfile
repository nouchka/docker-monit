FROM debian:jessie
MAINTAINER Jean-Avit Promis "docker@katagena.com"


RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -yq install monit && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
