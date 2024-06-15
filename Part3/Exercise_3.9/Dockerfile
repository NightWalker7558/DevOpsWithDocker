# Build Stage

FROM golang:1.16-alpine as builder

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go mod download && go mod verify && go build


# Final Stage

FROM scratch

EXPOSE 8080

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/  /usr/src/app/

ENTRYPOINT ["./server"]