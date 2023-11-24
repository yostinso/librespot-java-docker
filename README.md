# librespot-java-docker

This repo contains the dockerfile plus a couple of scripts for building a container to run
[librespot-java](https://github.com/librespot-org/librespot-java). The config is generated at
runtime based on the defaults as overridden by environment variables (for easier configuration with
e.g. docker-compose files or Portainer.)

## Running it
```sh
docker run -it -e DEVICE_NAME="my speaker" yostinso/librespot-java-docker
```

## Environment variable configuration
See [config.env](config.env).
