#!/usr/bin/env bash

if [[ "${APACHE_SKIP_CHOWN}" != "true" ]]; then
    echo "> chown webroot files"
    find ${APACHE_WEBROOT} \( \! -user apache -o \! -group apache \) -print0 | xargs -0 -r chown apache:apache
fi

true
