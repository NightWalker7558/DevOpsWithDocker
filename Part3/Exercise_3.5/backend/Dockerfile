FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080

COPY go.mod go.sum ./
RUN go mod download && go mod verify

COPY . .

ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

RUN adduser gouser

USER gouser

CMD ["./server"]