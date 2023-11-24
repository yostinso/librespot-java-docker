#!/usr/bin/env bash

if [[ ! -f librespot-player-${LIBRESPOT_VERSION}.jar ]]; then
	curl -O -L https://github.com/librespot-org/librespot-java/releases/download/v${LIBRESPOT_VERSION}/librespot-player-${LIBRESPOT_VERSION}.jar
fi

docker build -t yostinso/librespot-java:${LIBRESPOT_VERSION} -t yostinso/librespot-java:latest .
