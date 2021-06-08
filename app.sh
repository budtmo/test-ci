#!/bin/bash

IMAGE="budtmo/docker-vim"

if [ -z "$1" ]; then
    read -p "Task (test|build|push|all) : " TASK
else
    TASK=$1
fi

function test() {
	echo "test Dockerfile - TODO"
}

function build() {
	docker build -t ${IMAGE} .
}

function push() {
	docker login 
	docker push ${IMAGE}
}

case $TASK in
    test)
        test
    ;;
    build)
        build
    ;;
    push)
        push
    ;;
    all)
        test
        build
        push
    ;;
    *)
        echo "Invalid environment! Valid options: test, build, push, all"
    ;;
esac
