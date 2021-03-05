ARG POSTGRES_DB=keycloak
ARG POSTGRES_USER=keycloak
ARG POSTGRES_PASSWORD=password

FROM postgres:9.4
RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8

ARG PORT=8090
ARG DB_VENDOR=POSTGRES
ARG DB_ADDR=postgres
ARG DB_DATABASE=keycloak
ARG DB_USER=keycloak
ARG DB_SCHEMA=public
ARG DB_PASSWORD=password
ARG KEYCLOAK_USER=admin
ARG KEYCLOAK_PASSWORD=Pa55w0rd

FROM jboss/keycloak:7.0.1
CMD ["-b", "0.0.0.0"]




