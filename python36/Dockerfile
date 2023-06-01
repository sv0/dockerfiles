FROM ubuntu:18.04
MAINTAINER Slavik Svyrydiuk "slavik@svyrydiuk.eu"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    python3-dev \
    python3-setuptools \
    gcc \
    curl \
    && rm -rf /var/lib/apt/lists/*
