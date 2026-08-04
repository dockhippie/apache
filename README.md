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

Generally we are following [conventional commits][commits] when we apply
changes. That way we are able to generate proper changelogs for every release.
Please use always pull requests to integrate new functionalities or to fix
issues.

For the release process we are following [semantic versioning][semver] which
clearly indicates if a new version just resolves bugs, includes new features or
even includes breaking changes.

After installing the tools via `mise install` as described above set up the
pre-commit hooks so they run automatically on every commit:

```console
pre-commit install --hook-type pre-commit --hook-type commit-msg
```

> `pre-commit` is managed by mise and will be available after `mise install`.

If you have changed something on the source you should simply commit following
the mentioned conventions:

```console
git checkout -b feat/new-feature
git add --all
git commit -m 'feat: added awesome new feature'
git push --set-upstream origin feat/new-feature
```

After pushing your changes into the Git repository you should create a pull
request on GitHub. If the pull request have been merged and everything built
fine it will also create automatically a new release at least once a week.

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2018 Thomas Boerger <http://www.webhippie.de>
```
[mise]: https://mise.jdx.dev/
[mise-install]: https://mise.jdx.dev/getting-started.html
[commits]: https://www.conventionalcommits.org/en/v1.0.0/
[semver]: https://semver.org/
[upstream]: https://httpd.apache.org
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/apache/tags
[quayio]: https://quay.io/repository/webhippie/apache?tab=tags
[github]: https://github.com/dockhippie/apache
