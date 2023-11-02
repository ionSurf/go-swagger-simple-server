# syntax=docker/dockerfile:1

##
## Build the application from source
##

FROM golang:1.21.1

ENV GOBIN $GOPATH/bin

WORKDIR /go/src/github.com/ionSurf/go-swagger-simple-server

COPY src/. ./

RUN go mod download

RUN go install ./cmd/todo-list-server
ENTRYPOINT /go/bin/todo-list-server --port 8090 --host "0.0.0.0"

# serving HTTP of 8090
EXPOSE 8090
