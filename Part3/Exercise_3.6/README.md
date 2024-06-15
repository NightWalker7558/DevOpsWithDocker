# Exercise 3.6

## Backend

### Previous Image

``` bash
$ docker images backend
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
backend      latest    386d363a8158   8 weeks ago   1.26GB
```

### New Image

``` bash
$ docker images backend
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
backend      latest    6cd2a3bfd6f1   8 seconds ago   1.26GB
```

### Explanation

There is no such difference due to the fact that GoLang occupies significanty large space.

## Frontend

### Previous Image

``` bash
$ docker images frontend
REPOSITORY   TAG       IMAGE ID       CREATED       SIZE
frontend     latest    29699efb1353   8 weeks ago   391MB
```

### New Image

``` bash
$ docker images frontend
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
frontend     latest    29699efb1353   16 seconds ago   387MB
```