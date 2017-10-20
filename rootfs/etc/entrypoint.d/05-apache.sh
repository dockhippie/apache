#!/usr/bin/env bash

declare -x APACHE_HOSTNAME
[[ -z "${APACHE_HOSTNAME}" ]] && APACHE_HOSTNAME=${HOSTNAME}

declare -x APACHE_WEBROOT
[[ -z "${APACHE_WEBROOT}" ]] && APACHE_WEBROOT="/srv/www"

declare -x APACHE_SERVER_TOKENS
[[ -z "${APACHE_SERVER_TOKENS}" ]] && APACHE_SERVER_TOKENS="Prod"

declare -x APACHE_SERVER_SIGNATURE
[[ -z "${APACHE_SERVER_SIGNATURE}" ]] && APACHE_SERVER_SIGNATURE="Off"

declare -x APACHE_TRACE_ENABLE
[[ -z "${APACHE_TRACE_ENABLE}" ]] && APACHE_TRACE_ENABLE="Off"

declare -x APACHE_COMBINED_FORMAT
[[ -z "${APACHE_COMBINED_FORMAT}" ]] && APACHE_COMBINED_FORMAT="combinedio"

declare -x APACHE_PROXY_FORMAT
[[ -z "${APACHE_PROXY_FORMAT}" ]] && APACHE_PROXY_FORMAT="proxyio"
