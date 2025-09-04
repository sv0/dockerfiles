FROM nginx:alpine-perl
LABEL org.opencontainers.image.authors="Slavik Svyrydiuk <slavik@svyrydiuk.eu>"
LABEL org.opencontainers.image.source="https://github.com/sv0/dockerfiles/tree/master/nginx-fcgi/Dockerfile"

EXPOSE 9000
RUN apk update && apk add \
        fcgiwrap \
        spawn-fcgi \
        perl-cgi \
    && rm -rf /var/cache/apk/* \
        /usr/share \
        /var/log/*

COPY docker-entrypoint.d /docker-entrypoint.d/
COPY templates /etc/nginx/templates/
COPY fcgi.conf /etc/nginx/
COPY cgi-bin /usr/lib/cgi-bin/
