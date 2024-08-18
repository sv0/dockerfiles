FROM kalilinux/kali-rolling:latest
LABEL org.opencontainers.image.authors="Slavik Svyrydiuk <slavik@svyrydiuk.eu>"
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y \
        ca-certificates \
        gnupg \
        net-tools \
        procps \
        python3 \
        python3-apt \
        python3-setuptools \
        systemd-sysv \
        readline-common
RUN apt-get install -y --no-install-recommends --no-install-suggests \
        curl \
        neovim \
        hydra
RUN find /lib/systemd/system/sysinit.target.wants \
        -type l \
        -not -name systemd-tmpfiles-setup.service \
        -delete
RUN rm -f /etc/systemd/system/*.wants/*
RUN apt-get clean -y && \
    apt-get autoclean -y
