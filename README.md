# pytest-play-docker

[![Build Status](https://travis-ci.org/davidemoro/pytest-play-docker.svg?branch=master)](https://travis-ci.org/davidemoro/pytest-play-docker)
[![Updates](https://pyup.io/repos/github/davidemoro/pytest-play-docker/shield.svg)](https://pyup.io/repos/github/davidemoro/pytest-play-docker/)

[pytest-play](https://github.com/pytest-dev/pytest-play) distributed as a docker
based command line utility shipped with all supported third party plugins installed
for (test) automation playing with YAML files.

See https://hub.docker.com/r/davidemoro/pytest-play.

## Getting Started

These instructions will cover usage information and for the docker container 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage

I assume you have in the current folder a `test_*.yml` file
containing a valid pytest-play syntax

#### Container Parameters

Main usage

```shell
docker run -i --rm -v $(pwd):/src davidemoro/pytest-play
```

Standard pytest parameters (see [pytest](https://docs.pytest.org/en/latest/))

```shell
docker run -i --rm -v $(pwd):/src davidemoro/pytest-play -x -k "something"
```

If you are using WIndows remove ``$(pwd)`` with your current path location.

## Built With

* pytest
* pytest-play
* pytest supported [third party plugins](https://github.com/pytest-dev/pytest-play#third-party-pytest-play-plugins)
* python3
* Alpine linux

## Find Us

* [pytest-play-docker](https://github.com/pytest-dev/pytest-play)
* [pytest](https://docs.pytest.org/en/latest/)
* [@davidemoro](https://twitter.com/davidemoro)

## Contributing

Any help will be appreciated (suggestions, pull requests, donations, beer, wine, articles).

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the 
[tags on this repository](https://github.com/your/repository/tags). 

## Authors

* **Davide Moro** - *Initial work* - [blog](http://davidemoro.blogspot.com/)

See also the list of [pytest-play contributors](https://github.com/pytest-dev/pytest-play/contributors) and 
[pytest-play-docker contributors](https://github.com/davidemoro/pytest-play-docker) who 
participated in this project.

## License

The pytest-play project is licensed under the Apache License 2.0 - see the [LICENSE](https://github.com/pytest-dev/pytest-play/blob/master/LICENSE) file for details.

## Acknowledgments

* Python and pytest community

* [Andrea Ratto @neg3ntropy](https://github.com/neg3ntropy) - 10 minutes saved for every build thanks to Docker cache

## Sponsored by

![Browserstack](http://cookiecutter-qa.readthedocs.io/en/latest/_static/browserstack.svg)
