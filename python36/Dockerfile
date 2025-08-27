FROM ubuntu:18.04
LABEL org.opencontainers.image.authors="Slavik Svyrydiuk <slavik@svyrydiuk.eu>"
LABEL org.opencontainers.image.source="https://github.com/sv0/dockerfiles/tree/master/python36/Dockerfile"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    "python3.6=3.6.9*" \
    python3-pip \
    python3-dev \
    python3-setuptools \
    gcc \
    curl \
    && rm -rf /var/lib/apt/lists/* \
      /usr/share/doc \
      /usr/share/mime \
      /usr/share/perl5 \
      /var/log/*
