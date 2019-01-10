# leads-tracker
> Everyone wants to eat but few are willing to hunt 🦁

[![Build Status][travis-image]][travis-url]
[![Docker Hub Status][docker-image]][docker-url]
[![GitHub release][github-image]][github-url]

[travis-image]: https://img.shields.io/travis/jakebrinkmann/leads-tracker/primary.svg?style=flat-square
[travis-url]: https://travis-ci.org/jakebrinkmann/leads-tracker
[docker-image]: https://img.shields.io/docker/automated/jbrinkmann/leads-tracker.svg?style=flat-square
[docker-url]: https://hub.docker.com/r/jbrinkmann/leads-tracker/tags/
[github-image]: https://img.shields.io/github/release/jakebrinkmann/leads-tracker.svg?style=flat-square
[github-url]: https://github.com/jakebrinkmann/leads-tracker/releases

Searches through your email inbox, looking for job alerts that you've subscribed to (from [Google Jobs](https://jobs.google.com/about/) or [IFTTT twitter](https://ifttt.com/twitter) applets) and attempts to consolidate the data into a database. A WUI allows the user to then track the leads they will follow up on.

![](https://user-images.githubusercontent.com/4110571/51005430-5d3f6900-1504-11e9-9d30-90451c17715a.png)

#### Contents

* [Dependencies](#dependencies-)
* [Usage](#usage-)
* [Development](#development-)
* [Meta](#meta-)

## Dependencies [&#x219F;](#contents)

These tools must first be installed on the system:

* [Docker](https://docs.docker.com/install/)
* [docker-compose](https://docs.docker.com/compose/install/)
* [Make](https://en.wikipedia.org/wiki/Make_(software))

Build the application-specific docker images:

```sh
# docker build ...
make docker-image
```

## Usage [&#x219F;](#contents)

Start the entire Docker-Compose system stack:

```sh
# docker-compose up ...
make docker-run
```

Then visit the web interface: [:8080](http://localhost:8080)

## Development [&#x219F;](#contents)

Some helpers for developing locally:

```sh
# Start up services in debug mode
export DEBUG=true
make docker-run

# To run unit-tests inside docker
make docker-test

# Or, to run unit tests locally, install dependencies
./scripts/setup.sh

# And run the test frameworks
./scripts/test.sh
```

## Meta [&#x219F;](#contents)

Jake Brinkmann – [@jakebrinkmann](https://twitter.com/jakebrinkmann) – jakebrinkmann@gmail.com

Distributed under the MIT license. See ``LICENSE.txt`` for more information.

[https://github.com/jakebrinkmann/leads-tracker](https://github.com/jakebrinkmann//leads-tracker)

---
---

[&#x219F; Back-to Top &#x219F;](#readme)