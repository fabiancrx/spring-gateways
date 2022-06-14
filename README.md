[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Tests](https://github.com/fabiancrx/spring-gateways/actions/workflows/maven-master.yaml/badge.svg)](https://github.com/fabiancrx/spring-gateways/actions/workflows/maven-master.yaml)
[![codecov](https://codecov.io/gh/fabiancrx/spring-gateways/branch/develop/graph/badge.svg?token=9CTRDHCASU)](https://codecov.io/gh/fabiancrx/spring-gateways)
<!-- Intellij seems to report on average 20% plus coverage than codecov with jacoco-->

# 📶 Gateways 📡

See the [description](https://github.com/fabiancrx/spring-gateways/wiki/Description) in the project wiki to understand
the business logic and requirements of the project.

## Useful URL's
- Swagger-UI :
You can visit `http://<BASEURL>/api/swagger-ui/index.html ` to find the OpenApi definition.
Usually is at http://localhost:8080/api/swagger-ui/index.html
- OpenApi Docs: You can visit `http://<BASEURL>/api/v3/api-docs` Usually at http://localhost:8080/api/v3/api-docs
    - the openapi schema can also be downloaded in `yaml` format by appending .yaml at the url. (This is useful for example to the frontend as all the client repositories are code generated from this open-api shcema using `openapi-generator-cli`, thus maintaining in sync the contract between the backend and the frontend)
- Frontend (made with flutter). Can be found at http://localhost:8080/api/

[![demo](https://github.com/fabiancrx/spring-gateways/blob/master/demo.gif)](https://github.com/fabiancrx/spring-gateways/blob/master/demo.gif)

## Dependencies
**Required**
Java SDK 1.17 

**Optional**
[Flutter 3.0](https://docs.flutter.dev/get-started/install)
## Running tests

```sh
./mvnw test  -Dskip.frontend=true
```

## Execution

### Just the backend
#### On Linux
```sh 
./mvnw clean install -Dskip.frontend=true
java -jar target/musalapp-0.0.3-SNAPSHOT.jar
```

### With optional frontend

#### On Linux
```sh
sh ./build_frontend.sh
./mvnw clean install
java -jar target/musalapp-0.0.3-SNAPSHOT.jar
```

### Fetch .jar artifact from github
It is also possible to download and directly execute the .jar. It can be fetched [from github]( 
https://github.com/fabiancrx/spring-gateways/packages/) and executed easily as `java -jar artifact.jar`