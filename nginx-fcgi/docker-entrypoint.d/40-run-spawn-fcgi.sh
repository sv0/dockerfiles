#!/bin/sh
# vim:sw=4:ts=4:et

set -e

entrypoint_log() {
    if [ -z "${NGINX_ENTRYPOINT_QUIET_LOGS:-}" ]; then
        echo "$@"
    fi
}

ME=$(basename "$0")

# check if we have spawn-fcgi available
if [ ! -f "/usr/bin/spawn-fcgi" ]; then
    entrypoint_log "$ME: info: spawn-fcgi not available"
    exit 0
fi

# check if we have spawn-fcgi available
if [ ! -f "/usr/bin/fcgiwrap" ]; then
    entrypoint_log "$ME: info: fcgiwrap not available"
    exit 0
fi

/usr/bin/spawn-fcgi -n -p 9000 -- /usr/bin/fcgiwrap -f &
entrypoint_log "$ME: info: Enabled listen fcgiwrap on 9000"

exit 0
