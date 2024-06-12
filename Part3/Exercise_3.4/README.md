# Exercise 3.4

## Build Image

``` bash 
$ docker build -t builder .
```

### Run Container

``` bash
$ docker run -e DOCKER_USER=<user> -e DOCKER_PWD=<password> \
 -v /var/run/docker.sock:/var/run/docker.sock builder \
 <GitHUb Repository> <Docker Repository>
```