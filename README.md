# Apache with PHP 7.0 on Ubuntu 16.04 LTS (Xenial Xerus)

This image provides a common PHP hosting environment. The intent is for the PHP application itself to be stored in persistent storage wihch is then mounted in to this image at `/var/www`

## Updates

Please consult [the official Ubuntu site](https://www.ubuntu.com/info/release-end-of-life) for information on when this version of Ubuntu becomes end of life.

Please consult [the official PHP site](http://php.net/supported-versions.php) to know when this version of PHP becomes end of life. It is recommended that you move to a newer version of PHP once this version passed out of active support.

## Usage

Please note this image is explictly intended to be run as a non-privildged user. Ensure you specify a user id (UID) other than zero when you run it. Running as root will not function.


```bash
UID=999
PORT=80
WEB_ROOT="/var/www/"

docker run -u ${UID}:0 -p ${PORT}:8080 -v ${WEB_ROOT}:/var/www/ 1and1internet/ubuntu-16-apache-php-7.0
```

## Building and testing

A simple Makefile is included for your convience. It assumes a linux environment with a docker socket avialable at `/var/run/docker.sock`

To build and test just run `make`.
You can also just `make pull`, `make build` and `make test` separately.

Please see the top of the Makefile for various variables which you may choose to customise. Variables may be passed as arguments, e.g. `make IMAGE_NAME=bob` or `make build BUILD_ARGS="--rm --no-cache"`

## Modifying the tests

The tests depend on shared testing code found in its own git repository called [drone-tests](https://github.com/1and1internet/drone-tests).

To use a different tests repository set the TESTS_REPO variable to the git URL for the alternative repository. e.g. `make TESTS_REPO=https://github.com/1and1internet/drone-tests.git`

To use a locally modified copy of the tests repository set the TESTS_LOCAL variable to the absolute path of where it is located. This variable will override the TESTS_REPO variable. e.g. `make TESTS_LOCAL=/tmp/github/1and1internet/drone-tests/`
