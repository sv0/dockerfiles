FROM ubuntu:16.04
LABEL org.opencontainers.image.authors="Slavik Svyrydiuk <slavik@svyrydiuk.eu>"
LABEL org.opencontainers.image.source="https://github.com/sv0/dockerfiles/tree/master/python27/Dockerfile"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    python2.7 \
    python-pip \
    python-dev \
    python-setuptools \
    gcc \
    curl \
    && rm -rf /var/lib/apt/lists/*
