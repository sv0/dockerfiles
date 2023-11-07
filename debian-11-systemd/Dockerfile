FROM jrei/systemd-debian:11

MAINTAINER "Slavik Svyrydiuk <slavik@svyrydiuk.eu>"

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-utils \
        apt-transport-https \
    && apt-get install -y --no-install-recommends \
        procps \
        net-tools \
        python3 \
        python3-pip \
        python3-apt \
        python3-setuptools \
        gnupg2
