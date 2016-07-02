# Apache

[![](https://badge.imagelayers.io/webhippie/apache:latest.svg)](https://imagelayers.io/?images=webhippie/apache:latest 'Get your own badge on imagelayers.io')

These are docker images for [Apache](https://httpd.apache.org/) running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](https://github.com/dockhippie/apache/tree/master)
  available as ```webhippie/apache:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/apache/)


## Volumes

* /srv/www


## Ports

* 8080


## Available environment variables

```bash
ENV APACHE_HOSTNAME $HOSTNAME
```


## Inherited environment variables

```bash
ENV LOGSTASH_ENABLED false
ENV LOGSTASH_HOST logstash
ENV LOGSTASH_PORT 5043
ENV LOGSTASH_CA /etc/ssl/logstash/certs/ca.pem # As string or filename
ENV LOGSTASH_CERT /etc/ssl/logstash/certs/cert.pem # As string or filename
ENV LOGSTASH_KEY /etc/ssl/logstash/private/cert.pem # As string or filename
ENV LOGSTASH_TIMEOUT 15
ENV LOGSTASH_OPTS
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2016 Thomas Boerger <http://www.webhippie.de>
```
