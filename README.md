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
ENV APACHE_SERVER_TOKENS Prod
ENV APACHE_SERVER_SIGNATURE Off
ENV APACHE_TRACE_ENABLE Off
```


## Inherited environment variables

* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


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
