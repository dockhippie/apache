# apache

[![Docker Build](https://github.com/dockhippie/apache/workflows/docker/badge.svg)](https://github.com/dockhippie/apache/actions?query=workflow%3Adocker) [![Readme Build](https://github.com/dockhippie/apache/workflows/readme/badge.svg)](https://github.com/dockhippie/apache/actions?query=workflow%3Areadme) [![Docker Size](https://img.shields.io/docker/image-size/webhippie/apache/latest)](#) [![Docker Pulls](https://img.shields.io/docker/pulls/webhippie/apache)](https://hub.docker.com/r/webhippie/apache) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/apache)

These are docker images for [Apache](https://httpd.apache.org/) running on our [Alpine Linux image](https://github.com/dockhippie/alpine).

## Versions

For the available versions please look at [Docker Hub](https://hub.docker.com/r/webhippie/apache/tags) or [Quay](https://quay.io/repository/webhippie/apache?tab=tags) or check the existing folders within the [GitHub repository](https://github.com/dockhippie/apache).

## Volumes

* /srv/www
* /etc/apache2/custom.d

## Ports

* 8080

## Available environment variables

```console
APACHE_COMBINED_FORMAT = combinedio
APACHE_HOSTNAME = $HOSTNAME
APACHE_PROXY_FORMAT = proxyio
APACHE_SERVER_SIGNATURE = Off
APACHE_SERVER_TOKENS = Prod
APACHE_SKIP_CHOWN = false
APACHE_SKIP_TEMPLATES = false
APACHE_TRACE_ENABLE = Off
APACHE_WEBROOT = /srv/www
APACHE_PORT = 8080
```

## Inherited environment variables

*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2018 Thomas Boerger <http://www.webhippie.de>
```
