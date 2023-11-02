#!/bin/zsh

alias swagger='docker run \
	--rm \
	-it \
	--user $(id -u):$(id -g) \
	-e GOPATH=$(go env GOPATH):/go \
	-v $HOME:$HOME \
	-w $(pwd) quay.io/goswagger/swagger'

swagger init spec \
	--title "A ToDo list application" \
	--description "From the ToDo list tutorial on goswagger.io" \
	--version 1.0.0 \
	--scheme http \
	--consumes 'application\io.goswagger.examples.todo-list.v1+json' \
	--produces 'application\io.goswagger.examples.todo.list.v1+json' 

