FROM postgres:9.4
RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8

FROM jboss/keycloak:7.0.1
CMD ["-b", "0.0.0.0"]




