#!/usr/bin/env bash

if [[ "${APACHE_SKIP_TEMPLATES}" != "true" ]]; then
    echo "> writing apache config"
    gomplate -V \
        -o /etc/apache2/httpd.conf \
        -f /etc/templates/httpd.conf.tmpl || exit 1

    echo "> writing host config"
    gomplate -V \
        -o /etc/apache2/host.conf \
        -f /etc/templates/host.conf.tmpl || exit 1
fi

true
