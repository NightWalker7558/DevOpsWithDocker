# Exercise 3.5

## Building Images

### Frontend

``` bash
$ docker build -t frontendnonroot .
```

### Backend

``` bash
$ docker build -t backendnonroot .
```

## Running Conatiners

### Frontend

``` bash
$ docker run -p 5000:5000 frontendnonroot
```

### Backend

``` bash
$ docker run -p 8080:8080 backendnonroot
```