[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Tests](https://github.com/fabiancrx/spring-gateways/actions/workflows/maven-master.yaml/badge.svg)](https://github.com/fabiancrx/spring-gateways/actions/workflows/maven-master.yaml)
[![codecov](https://codecov.io/gh/fabiancrx/spring-gateways/branch/develop/graph/badge.svg?token=9CTRDHCASU)](https://codecov.io/gh/fabiancrx/spring-gateways)
<!-- Intellij seems to report on average 20% plus coverage than codecov with jacoco-->

# 📶 Gateways 📡

See the [description](https://github.com/fabiancrx/spring-gateways/wiki/Description) in the project wiki to understand
the business logic and requirements of the project.

## Built in Swagger-UI

You can visit `http://<BASEURL>/api/swagger-ui/index.html ` to find the OpenApi definition.
Usually is at http://localhost:8080/api/swagger-ui/index.html
## Dependencies
Java SDK 1.17 or later

## Running tests

```sh
./mvnw test 
```

## Execution


### On Linux
```sh 
mvn clean install
java -jar target/musalapp-0.0.1-SNAPSHOT.jar
```
### On Docker
```sh
docker-compose up 
```
