FROM alpine:3.12.1

ARG MYSQL_DRIVER_JAR=https://search.maven.org/remotecontent?filepath=mysql/mysql-connector-java/8.0.22/mysql-connector-java-8.0.22.jar
ARG SCHEMASPY_JAR=https://github.com/schemaspy/schemaspy/releases/download/v6.1.0/schemaspy-6.1.0.jar

RUN apk --no-cache add openjdk8 graphviz ttf-dejavu mysql-client && \
    apk --no-cache add --virtual .builddep tzdata wget libressl && \
    wget -O schemaspy.jar $SCHEMASPY_JAR && \
    wget -O mysql-connector-java.jar $MYSQL_DRIVER_JAR && \
    mkdir /drivers && mv mysql-connector-java.jar /drivers && \
    apk del .builddep && \
    rm -rf /var/cache/apk/*
