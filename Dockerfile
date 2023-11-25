FROM eclipse-temurin:21

ARG LIBRESPOT_JAR
ENV LIBRESPOT_JAR=$LIBRESPOT_JAR

COPY $LIBRESPOT_JAR /librespot/
COPY config.template /librespot/
COPY entrypoint.sh /librespot/

WORKDIR /librespot/
ENTRYPOINT ./entrypoint.sh
