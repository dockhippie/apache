FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

EXPOSE 8080

WORKDIR /srv/www
ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]

RUN apk update && \
  apk upgrade && \
  mkdir -p \
    /srv/www && \
  groupadd \
    -g 1000 \
    apache && \
  useradd \
    -u 1000 \
    -d /srv/www \
    -g apache \
    -s /bin/bash \
    -M \
    apache && \
  apk add \
    apache2 \
    apache2-webdav \
    apache2-utils \
    apache2-icons \
    apache2-error \
    mailcap && \
  rm -rf \
    /var/cache/apk/* \
    /etc/apache2/*

ADD rootfs /

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/dockhippie/apache.git"
LABEL org.label-schema.name="Apache"
LABEL org.label-schema.vendor="Thomas Boerger"
LABEL org.label-schema.schema-version="1.0"
