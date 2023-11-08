FROM debian:bullseye-slim
MAINTAINER "Slavik Svyrydiuk <slavik@svyrydiuk.eu>"
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        gnupg \
        net-tools \
        procps \
        python3 \
        python3-apt \
        python3-setuptools \
        systemd-sysv
RUN find /lib/systemd/system/sysinit.target.wants \
        -type l \
        -not -name systemd-tmpfiles-setup.service \
        -delete
RUN rm -f /etc/systemd/system/*.wants/*
RUN apt-get clean -y && \
    apt-get autoclean -y
VOLUME ["/sys/fs/cgroup"]
CMD ["/lib/systemd/systemd"]
