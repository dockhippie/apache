#!/usr/bin/env bash

if [[ ! "$(id -g apache)" =~ "${PGID}" ]]; then
    echo "> enforcing group id"
    groupmod -o -g ${PGID} apache
fi

if [[ ! "$(id -u apache)" =~ "${PGID}" ]]; then
    echo "> enforcing user id"
    usermod -o -u ${PUID} apache
fi

true
