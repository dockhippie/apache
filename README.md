# Apache

[![](https://images.microbadger.com/badges/image/webhippie/apache.svg)](https://microbadger.com/images/webhippie/apache "Get your own image badge on microbadger.com")

These are docker images for [Apache](https://httpd.apache.org/) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/dockhippie/apache/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/webhippie/apache/tags/), these lists are always up to date.


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
ENV APACHE_COMBINED_FORMAT combinedio
ENV APACHE_PROXY_FORMAT proxyio
ENV APACHE_SKIP_TEMPLATES false
ENV APACHE_SKIP_CHOWN false
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
Copyright (c) 2018 Thomas Boerger <http://www.webhippie.de>
```
