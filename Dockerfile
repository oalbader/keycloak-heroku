FROM jboss/keycloak:latest

WORKDIR /opt/keycloak
COPY docker-entrypoint.sh /opt/jboss/tools
COPY keywind.jar /opt/keycloak/providers
ADD --chown=keycloak:keycloak keywind.jar /opt/keycloak/providers/keywind.jar

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

