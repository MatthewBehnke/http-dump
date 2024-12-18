# http-dump

Forked from [daime/http-dump](https://github.com/daime/http-dump) to support running as a non root user.

A simple go web server that dumps the request back to the client using
go's [httputil.DumpRequest](https://golang.org/pkg/net/http/httputil/#DumpRequest)
function. It also logs the same http request output to stdout.

http-dump was created to help debugging communications between docker services
within a docker compose.

## Usage

It's highly recommend to use http-dump docker image.

```console
$ docker run --rm -p "8080:8080" -it matthewvbehnke/http-dump
```

## Build

```bash
docker buildx build --platform linux/amd64,linux/arm64 . -t docker.io/matthewvbehnke/http-dump:latest
```
