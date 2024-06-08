FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:8888

COPY go.mod go.sum ./

RUN go mod download && go mod verify

COPY . .

RUN go build

RUN go test ./...

CMD ["./server"]