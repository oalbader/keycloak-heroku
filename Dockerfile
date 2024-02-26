FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools
COPY  keywind /opt/jboss/keycloak/themes/keywind

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "0.0.0.0"]

