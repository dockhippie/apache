FROM webhippie/alpine:latest

LABEL maintainer="Thomas Boerger <thomas@webhippie.de>" \
  org.label-schema.name="Apache" \
  org.label-schema.vcs-url="https://github.com/dockhippie/apache.git" \
  org.label-schema.vendor="Thomas Boerger" \
  org.label-schema.schema-version="1.0"

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
