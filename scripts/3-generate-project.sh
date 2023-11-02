#!/bin/zsh

alias swagger='docker run \
	--rm \
	-it \
	--user $(id -u):$(id -g) \
	-e GOPATH=$(go env GOPATH):/go \
	-v $HOME:$HOME \
	-w $(pwd) quay.io/goswagger/swagger'

swagger generate server \
  -A todo-list \
	-t "./src" \
  -f ./swagger.yml

