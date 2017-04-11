#!/usr/bin/env bash

declare -x APACHE_HOSTNAME
[[ -z "${APACHE_HOSTNAME}" ]] && APACHE_HOSTNAME=${HOSTNAME}

declare -x APACHE_WEBROOT
[[ -z "${APACHE_WEBROOT}" ]] && APACHE_WEBROOT="/srv/www"
