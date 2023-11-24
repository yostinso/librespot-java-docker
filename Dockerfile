FROM eclipse-temurin:21

ENV LIBRESPOT_JAR="librespot-player-1.6.3.jar"

COPY $LIBRESPOT_JAR /librespot/
COPY config.template /librespot/
COPY entrypoint.sh /librespot/

WORKDIR /librespot/
ENTRYPOINT ./entrypoint.sh
