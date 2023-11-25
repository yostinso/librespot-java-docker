FROM eclipse-temurin:21

RUN apt-get update && apt-get install -y alsa-utils

ARG LIBRESPOT_JAR
ENV LIBRESPOT_JAR=$LIBRESPOT_JAR

COPY $LIBRESPOT_JAR /librespot/
COPY config.template /librespot/
COPY entrypoint.sh /librespot/

WORKDIR /librespot/
ENTRYPOINT ./entrypoint.sh
