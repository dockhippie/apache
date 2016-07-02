FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

RUN apk update && \
  groupadd \
    -g 1000 \
    apache && \
  useradd \
    -u 1000 \
    -d /app \
    -g apache \
    -s /bin/bash \
    -m \
    apache && \
  apk add \
    apache2 \
    apache2-webdav \
    apache2-utils \
    apache2-icons \
    apache2-error \
    php5-apache2 \
    php5-cli \
    php5-ctype \
    php5-curl \
    php5-dom \
    php5-gd \
    php5-iconv \
    php5-intl \
    php5-json \
    php5-mcrypt \
    php5-memcache \
    php5-mysql \
    php5-mysqli \
    php5-openssl \
    php5-pdo \
    php5-pdo_mysql \
    php5-pdo_pgsql \
    php5-pdo_sqlite \
    php5-pear \
    php5-pgsql \
    php5-phar \
    php5-sqlite3 \
    php5-xml \
    php5-zip \
    php5-zlib && \
  rm -rf \
    /var/cache/apk/* \
    /etc/php/* \
    /etc/apache2/*

EXPOSE 8080
ENTRYPOINT ["/usr/bin/entrypoint"]
CMD ["/bin/s6-svscan", "/etc/s6"]
VOLUME ["/etc/php/custom.d"]

ADD rootfs /
WORKDIR /app

RUN curl -sS https://getcomposer.org/installer \
  | php -- --install-dir=/usr/bin --filename=composer
