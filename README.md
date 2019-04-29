# Apache

[![Build Status](https://cloud.drone.io/api/badges/dockhippie/apache/status.svg)](https://cloud.drone.io/dockhippie/apache)
[![](https://images.microbadger.com/badges/image/webhippie/apache.svg)](https://microbadger.com/images/webhippie/apache "Get your own image badge on microbadger.com")

These are docker images for [Apache](https://httpd.apache.org/) running on an [Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).


## Versions

* [latest](./latest) available as `webhippie/apache:latest`


## Volumes

* /srv/www


## Ports

* 8080


## Available environment variables

```bash
APACHE_COMBINED_FORMAT = combinedio
APACHE_HOSTNAME = $HOSTNAME
APACHE_PROXY_FORMAT = proxyio
APACHE_SERVER_SIGNATURE = Off
APACHE_SERVER_TOKENS = Prod
APACHE_SKIP_CHOWN = false
APACHE_SKIP_TEMPLATES = false
APACHE_TRACE_ENABLE = Off
APACHE_WEBROOT = /srv/www
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
