FROM debian:11

LABEL maintainer="Slavik Svyrydiuk"

ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        apt-utils \
        apt-transport-https \
    && apt-get install -y \
        procps \
        systemd \
        systemd-sysv \
        python3 \
        python3-pip \
        python3-apt \
        gnupg2

RUN cd /lib/systemd/system/sysinit.target.wants/ \
    && ls | grep -v systemd-tmpfiles-setup | xargs rm -f

RUN rm -f /lib/systemd/system/multi-user.target.wants/* \
    /etc/systemd/system/*.wants/* \
    /lib/systemd/system/local-fs.target.wants/* \
    /lib/systemd/system/sockets.target.wants/*udev* \
    /lib/systemd/system/sockets.target.wants/*initctl* \
    /lib/systemd/system/basic.target.wants/* \
    /lib/systemd/system/anaconda.target.wants/* \
    /lib/systemd/system/plymouth* \
    /lib/systemd/system/systemd-update-utmp*

RUN apt-get clean \
    && rm -fr /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && rm -fr /usr/share/doc && rm -fr /usr/share/man

RUN python3 -m pip --no-cache-dir install 'molecule[ansible,docker,lint]'

VOLUME [ "/sys/fs/cgroup" ]

ENTRYPOINT ["/lib/systemd/systemd"]
