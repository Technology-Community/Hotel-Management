#!/bin/bash

chmod -R 777 ./src
cp ./src/.env.production ./src/.env

if ! [ -x "$(command -v docker)" ]; then
	echo 'Error: docker is not installed.' >&2
	exit 1
fi

if ! [ -x "$(command -v docker-compose)" ]; then
	echo 'Error: docker-compose is not installed.' >&2
	exit 1
fi

make deploy

chmod -R 755 ./src
chmod -R 777 ./src/storage
