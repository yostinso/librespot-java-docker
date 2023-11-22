FROM eclipse-temurin:21

ENV LIBRESPOT_JAR="librespot-player-1.6.3.jar"

COPY $LIBRESPOT_JAR /librespot/
WORKDIR /librespot/

ENTRYPOINT java -jar "$LIBRESPOT_JAR"
