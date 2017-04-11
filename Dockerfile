FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

EXPOSE 8080

WORKDIR /srv/www
ENTRYPOINT ["/usr/local/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]

RUN apk update && \
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
