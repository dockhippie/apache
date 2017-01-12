# Apache

[![](https://images.microbadger.com/badges/image/webhippie/apache.svg)](https://microbadger.com/images/webhippie/apache "Get your own image badge on microbadger.com")

These are docker images for [Apache](https://httpd.apache.org/) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](https://github.com/dockhippie/apache/tree/master) available as ```webhippie/apache:latest``` at [Docker Hub](https://registry.hub.docker.com/u/webhippie/apache/)


## Volumes

* /srv/www


## Ports

* 8080


## Available environment variables

```bash
ENV APACHE_HOSTNAME $HOSTNAME
ENV APACHE_WEBROOT /srv/www
```


## Inherited environment variables

```bash
ENV CRON_ENABLED false
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2015-2017 Thomas Boerger <http://www.webhippie.de>
```
