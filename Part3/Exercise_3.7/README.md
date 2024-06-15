# Exercise 3.7

## Backend

### Previous Image

``` bash
$ docker images backend
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
backend      latest    6cd2a3bfd6f1   8 seconds ago   1.26GB
```

### New Image

``` bash
docker images backend
REPOSITORY   TAG       IMAGE ID       CREATED              SIZE
backend      latest    01cf659e5ad5   About a minute ago   644MB
```

## Frontend

### Image

``` bash
$ docker images frontend
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
frontend     latest    29699efb1353   16 seconds ago   387MB
```

### Explanation

The Dockerfile and image size for Frontend is same, since the previous exercise were already using the Alpine versions for Node 16.