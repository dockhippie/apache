# apache

[![Docker Build](https://github.com/dockhippie/apache/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/apache/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/apache)

These are docker images for [Apache][upstream] running on our
[Alpine Linux image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  /srv/www
*  /etc/apache2/custom.d

## Ports

*  8080

## Available environment variables

```console
APACHE_COMBINED_FORMAT = combinedio
APACHE_HEALTHCHECK_CODE = 200
APACHE_HEALTHCHECK_URL = http://localhost:${APACHE_PORT}/
APACHE_HOSTNAME = ${HOSTNAME}
APACHE_PORT = 8080
APACHE_PROXY_FORMAT = proxyio
APACHE_SERVER_SIGNATURE = Off
APACHE_SERVER_TOKENS = Prod
APACHE_SKIP_CHOWN = false
APACHE_SKIP_TEMPLATES = false
APACHE_TRACE_ENABLE = Off
APACHE_WEBROOT = /srv/www
```

Extracted by the command: `grep -hE ': "\$\{(.*)\}"' latest/overlay/etc/entrypoint.d/*.sh | sed 's/: "\${//' | sed 's/:="/ = /' | sed 's/"}"$//' | sort | uniq`

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

[upstream]: https://httpd.apache.org
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/apache/tags
[quayio]: https://quay.io/repository/webhippie/apache?tab=tags
[github]: https://github.com/dockhippie/apache
