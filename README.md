# PHP application with Docker Compose P.O.C

This is a deployeable PHP application contained with Docker Compose.

## TODO:

- Implement CRUD operations with ActiveRecord.
- Implement Redis with refresh token strategy.
- Add unit test.
- Include API documentation.

## Getting Started

### Prerequisites

- Install [Docker Compose](https://docs.docker.com/compose/install) on system.

### Installing

#### Running with Docker (recommended)

- Clone this repo on local machine and navigate into directory.
- Build and run application: ```docker-compose up```
- App will be served at [http://localhost:8080](http://localhost:8080)

### Debugging

Current container is provisioned with [Xdebug](https://xdebug.org) ready to use. The only local setup needed is the port's binding and interfaces.
In order to do it only run this command as follows depending on your local OS:

Mac OSX:

`sudo ifconfig en0 alias 10.254.254.254 255.255.255.0`

Linux OS:

`sudo ip addr add 10.254.254.254/24 brd + dev eth0 label eth0:1`

### Additional hints

To get access to container's internal bash terminal simply run:
  
  `docker exec -it users-service /bin/bash`

## Built With

* [Silex](https://silex.symfony.com) - PHP micro-framework.
* [PHP ActiveRecord](http://www.phpactiverecord.org) - Open source ORM library based on ActiveRecord pattern.
* [Docker](https://www.docker.com) - Used to build and run application container and its services.
* [MySQL](https://www.mysql.com) - Open source relational DBMS.
* [Redis](https://redis.io) - Open source in-memory data structure store.

## Versioning

This project uses [SemVer](http://semver.org) for versioning.
