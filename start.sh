#!/usr/bin/env sh
set -eu

envsubst '${DOGALERT_URL}' < /etc/nginx/conf.d/dogalert.app.conf.template > /etc/nginx/conf.d/dogalert.app.conf

exec "$@"
