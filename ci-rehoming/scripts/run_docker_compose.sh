#!/bin/sh

#apk info
apk update
apk add py-pip > /dev/null
apk add docker
pip install docker-compose > /dev/null

usermod -aG docker ${USER}
exprort DOCKER_HOST=127.0.0.1
echo DOCKER_HOST

service docker start

cd ./ci-concourse/external-docker
docker-compose run --rm with echo "Hello World"

#temp=$(tty) ; echo ${temp:5}
#pwd
#ls
#curl -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)" -o ./mycompose
#chmod +x mycompose
#echo "finish"
#/bin/sh -c "ls; chmod +x mycompose; mycompose run --rm with echo Hello World"
##/bin/sh -c "pwd"