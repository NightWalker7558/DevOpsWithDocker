# Exercise 2.10

## Changes

In the previous exercise, all buttons except for sending the message work successfully. To cater this, the `Dockerfile` for frontend is updated to handle the proper request origin as follows:

``` Docker
ENV REQUEST_ORIGIN=http://localhost:8888
```

Furthermore, `nginx.conf` is updated to allow for `POST` requests to `/messages` endpoint as follows:

``` conf
http {
    server {
        ...
        location /messages {
            proxy_pass http://backend:8080/messages;
        }
        ...
    }
}

```