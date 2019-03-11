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

Selenium tests (see [play_selenium](https://github.com/davidemoro/play_selenium))

```shell
docker run -i --rm -v $(pwd):/src davidemoro/pytest-play --splinter-webdriver=remote --splinter-remote-url=http://USERNAME:ACCESS_KEY@hub.browserstack.com:80/wd/hub
```

If you are using Windows remove ``$(pwd)`` with your current path location.

## Built With

* pytest
* [pytest-play](https://github.com/pytest-dev/pytest-play) with the following _pytest-play_ plugins included
  * [play_selenium](https://github.com/davidemoro/play_selenium)
  * [play_requests](https://github.com/davidemoro/play_requests)
  * [play_sql](https://github.com/davidemoro/play_sql)
  * [play_cassandra](https://github.com/davidemoro/play_cassandra)
  * [play_dynamodb](https://github.com/davidemoro/play_dynamodb)
  * [play_websocket](https://github.com/davidemoro/play_websocket)
  * [play_mqtt](https://github.com/davidemoro/play_mqtt)
* pytest supported [third party plugins](https://github.com/pytest-dev/pytest-play#third-party-pytest-play-plugins)
* python3

Included the following pytest plugins and utilities too:

* [pytest-bdd](https://github.com/pytest-dev/pytest-bdd)
* [pytest-html](https://github.com/pytest-dev/pytest-html)
* [pytest-metadata](https://github.com/pytest-dev/pytest-metadata)
* [pytest-randomly](https://github.com/pytest-dev/pytest-html)
* [pytest-repeat](https://github.com/pytest-dev/pytest-repeat)
* [pytest-testrail](https://pypi.org/project/pytest-testrail/)
* [BlazeMeter Taurus/bzt for performance test using pytest-play](https://www.blazemeter.com/)

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
