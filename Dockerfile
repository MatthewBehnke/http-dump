FROM golang:1.14.0 AS builder

WORKDIR /go/src/github.com/daime/http-dump

COPY main.go .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o http-dump .

FROM alpine

USER 1000

WORKDIR /opt/http-dump/

COPY --from=0 /go/src/github.com/daime/http-dump/http-dump .

EXPOSE 8080

CMD ["./http-dump"]
