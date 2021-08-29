FROM golang:1.15.6-alpine3.12

RUN mkdir /app

ADD . /app

WORKDIR /app

ENV GO111MODULE=on

RUN go mod download

RUN go build -o simple-go-service ./cmd/simple-go-service

EXPOSE 8080

CMD ["/app/simple-go-service"]